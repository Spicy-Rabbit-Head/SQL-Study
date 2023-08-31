/*
  这是关于 PostgreSQL 的学习
 */

/* SQL 注释 */
-- 这个是单行注释
/* 这个是多行注释 */

/* DDL 数据定义语言 */
/* 创建数据库 */
CREATE DATABASE my_data_no_parameters;

/* 创建数据库-可选参数 */
CREATE DATABASE my_data_parameters
    WITH
    -- 指定数据库所有者
    OWNER = postgres
    -- 指定数据库模板
    -- TEMPLATE = template0
    -- 指定数据库编码
    ENCODING = 'UTF8'
    -- 指定数据库区域的快捷方式
    -- LOCALE = 'zh_CN.utf8'
    -- 指定数据库的整理规则
    LC_COLLATE = 'C'
    -- 指定数据库的字符分类
    LC_CTYPE = 'C'
    -- 将与新数据库关联的表空间
    -- TABLESPACE = pg_default
    -- 是否允许连接到该数据库
    ALLOW_CONNECTIONS = TRUE
    -- 连接数限制 ( -1 表示无限制 )
    CONNECTION LIMIT = -1
    -- 是否为模版数据库
    IS_TEMPLATE = FALSE;

/* 删除数据库 */
DROP DATABASE my_data_no_parameters;
DROP DATABASE my_data_parameters;

/* 删除数据库-可选参数 */
-- 判断数据库是否存在，存在则删除
DROP DATABASE IF EXISTS my_data_no_parameters;

CREATE DATABASE test;
/* 修改数据库 */
ALTER DATABASE test RENAME TO test_alter;
-- 所有者
ALTER DATABASE test_alter OWNER TO postgres;
-- 连接数限制
ALTER DATABASE test_alter CONNECTION LIMIT 10;
-- 配置
ALTER DATABASE test_alter SET 配置名 TO '配置值';
-- 重置配置
ALTER DATABASE test_alter RESET ALL;
DROP DATABASE test_alter;

/* 创建表 */
CREATE TABLE IF NOT EXISTS customer -- 表名
-- 创建是可通过 IF NOT EXISTS 判断表是否已存在
(
    -- 列名 数据类型 约束
    first_name VARCHAR(30) NOT NULL,
    last_name  VARCHAR(30) NOT NULL,
    email      VARCHAR(60) NOT NULL
);

/* 创建表-约束 */
-- PRIMARY_KEY —— 主键约束
-- FOREIGN_KEY —— 外键约束
-- NOT_NULL —— 非空约束
-- UNIQUE —— 唯一约束
-- CHECK —— 检查约束
-- GENERATED_COLUMN —— 生成列约束
-- IDENTIFY_COLUMN —— 标识列约束

/* 创建表-模版创建 */
CREATE TABLE customer_template
    -- 指定模版表
AS TABLE customer
    -- WITH NO DATA 表示不复制数据
    WITH NO DATA;

/* 创建表-结果集 */
CREATE TABLE IF NOT EXISTS customer_result_set
    -- 指定结果集
AS
SELECT * -- 指定复制列
FROM
    customer;

/* 删除表 */
-- IF EXISTS 判断表是否存在，存在则删除
DROP TABLE IF EXISTS customer;
DROP TABLE IF EXISTS customer_template;
DROP TABLE IF EXISTS customer_result_set;
-- 参数
-- CASCADE —— 删除表的同时删除依赖于该表的其他对象
-- RESTRICT —— 如果其他对象依赖于该表，则不删除该表

/* 修改表 */
CREATE TABLE modification_list
(
    id INT
);

-- 修改表名
ALTER TABLE modification_list
    RENAME TO modification_list_alter;

-- 修改表架构
ALTER TABLE modification_list_alter
    SET SCHEMA postgres.public;

-- 添加列
ALTER TABLE modification_list_alter
    ADD COLUMN IF NOT EXISTS
        name VARCHAR(10);

-- 修改列类型
ALTER TABLE modification_list_alter
    ALTER COLUMN name
        -- SET DATA 指定新的排序规则
        SET DATA TYPE TEXT;

-- 设置非空约束
ALTER TABLE modification_list_alter
    ALTER COLUMN id
        SET NOT NULL;

-- 删除非空约束
ALTER TABLE modification_list_alter
    ALTER COLUMN id
        DROP NOT NULL;

-- 添加约束
ALTER TABLE modification_list_alter
    -- 添加主键约束
    ADD CONSTRAINT id_primary
        PRIMARY KEY ( id );

-- 删除约束
ALTER TABLE modification_list_alter
    -- 删除主键约束
    DROP CONSTRAINT id_primary;

/* 主键 */
-- 定义主键
CREATE TABLE grammar_primary_key
(
    -- PRIMARY KEY 主键约束
    -- 主键列的值必须是唯一的,且不能为 NULL
    id       INTEGER PRIMARY KEY,
    name     VARCHAR(30),
    age      INT NOT NULL,
    grouping INT NOT NULL
);

-- 定义主键-多列
CREATE TABLE grammar_multiseriate_primary_key
(
    id   INTEGER,
    name VARCHAR(30),
    -- 多列主键
    PRIMARY KEY ( id, name )
);

/* 外键 */
-- 外键用来定义两个实体之间的约束关系
-- 创建外键
CREATE TABLE foreign_key_primary_meter
(
    id   INTEGER PRIMARY KEY,
    name VARCHAR(30)
); -- 主表
CREATE TABLE foreign_key
(
    id    INTEGER,
    email VARCHAR(30),
    -- 外键约束名
    CONSTRAINT foreign_key_primary_meter_id
        -- 指定外键列
        FOREIGN KEY ( id )
            -- 外键列
            REFERENCES foreign_key_primary_meter ( id )
            -- 删除主表数据时，从表数据也删除
            ON DELETE CASCADE
            -- 更新主表数据时，从表数据也更新
            ON UPDATE CASCADE
    -- 约束策略:
    -- NO ACTION —— 默认值，不做任何操作
    -- RESTRICT —— 拒绝删除或更新主表数据
    -- CASCADE —— 删除或更新主表数据时，从表数据也删除或更新
    -- SET NULL —— 删除或更新主表数据时，从表数据设置为 NULL
    -- SET DEFAULT —— 删除或更新主表数据时，从表数据设置为默认值
);

-- 删除外键
ALTER TABLE foreign_key
    DROP CONSTRAINT foreign_key_primary_meter_id;

/* 非空约束 */
-- 非空约束用来定义列的值不能为 NULL
-- NULL 不是空串，也不是 0，它表示什么都没有
CREATE TABLE grammar_null
(
    id   INTEGER PRIMARY KEY,
    name VARCHAR(30) NOT NULL -- 非空约束
);

/* 唯一约束 */
-- 唯一约束用来定义列的值不能重复
-- 唯一约束列可以包含 NULL 值
CREATE TABLE grammar_unique
(
    id   INTEGER PRIMARY KEY,
    name VARCHAR(30) UNIQUE -- 唯一约束
);

-- 多列唯一约束
CREATE TABLE grammar_multiseriate_unique
(
    id    INTEGER PRIMARY KEY,
    name  VARCHAR(30),
    email VARCHAR(30),
    -- 唯一约束名
    CONSTRAINT users_name_email_key
        -- 多列唯一约束
        UNIQUE ( name, email )
);

/* 检查约束 */
-- 检查约束用来定义列的值必须满足指定的条件
CREATE TABLE grammar_check
(
    id   INTEGER PRIMARY KEY,
    name VARCHAR(30),
    age  INTEGER,
    -- 检查约束名
    CONSTRAINT users_age_check
        -- 检查条件
        CHECK ( age > 0 AND age < 150 )
    -- 不满足检查约束条件时，会抛出异常
);

/* 生成列 */
-- 生成列用来定义列的值是通过计算得到的
-- 不能直接写入或更新生成列的值
CREATE TABLE grammar_generated_column
(
    id        INTEGER PRIMARY KEY,
    name      VARCHAR(30),
    age       INTEGER,
    -- 生成列
    full_name INTEGER GENERATED ALWAYS AS (age / 2) STORED -- 存储生成列
);

/* 标识列 */
-- 标识列用来定义列的值是自动生成的
CREATE TABLE grammar_identity_column
(
    -- 标识列
    id   INTEGER GENERATED ALWAYS AS IDENTITY,
    name VARCHAR(30)
);

/* 自增列 */
-- 自增列用来定义列的值是自动生成的
-- 和标识列不同的是，自增列的值可以手动指定
CREATE TABLE grammar_serial_column
(
    -- 自增列
    id   SERIAL,
    name VARCHAR(30)
);

/* 序列生成器 */
-- 生成一个有序的整数序列
-- TEMPORARY 临时序列
CREATE TEMPORARY
    -- 序列名
    SEQUENCE IF NOT EXISTS sequence_name
    -- 序列的数据类型
    AS BIGINT
    -- 序列的起始值
    START WITH 1
    -- 序列的最小值
    MINVALUE 1
    -- 序列的最大值
    MAXVALUE 9223372036854775807
    -- 序列的增量
    INCREMENT BY 1
    -- 序列的缓存值
    CACHE 1
    -- 序列的循环方式
    CYCLE;

-- 删除序列
DROP SEQUENCE IF EXISTS sequence_name;

/* 临时表 */
-- 临时表用来存储临时数据
-- 临时表只在当前会话中存在
CREATE TEMPORARY TABLE grammar_temporary
(
    id   INTEGER PRIMARY KEY,
    name VARCHAR(30)
);

-- 删除临时表
DROP TABLE IF EXISTS grammar_temporary;

/* 结果集创建表 */
-- 通过结果集创建表
SELECT * -- 指定复制列
INTO TEMPORARY -- 是否为临时表
    grammar_null_temporary -- 指定表名
FROM
    grammar_null;

/* 事务 */
-- 事务用来管理一组 SQL 语句的执行
-- 开启事务
BEGIN;
-- 执行 SQL 语句
INSERT
INTO
    grammar_null
    (id, name)
VALUES
    (1, '张三');

-- 提交事务
COMMIT;
-- 回滚事务
ROLLBACK;

/* 架构 */
-- 架构用来组织数据库对象
-- 创建架构
CREATE SCHEMA IF NOT EXISTS test;
-- 在架构中创建表
CREATE TABLE IF NOT EXISTS test.users
(
    id   INTEGER PRIMARY KEY,
    name VARCHAR(30)
);

-- 重命名架构
ALTER SCHEMA test RENAME TO test1;

-- 删除架构
DROP SCHEMA IF EXISTS test1 CASCADE;


/* 清空表 */
-- TRUNCATE 速度更快
-- 不需要扫描表中,直接回收磁盘空间
TRUNCATE TABLE grammar_null CASCADE;
-- ONLY 限制只清空当前表,不清空子表
-- CASCADE 如果外键关联,拒绝操作

/* DML 数据操作语言 */
/* 表实例 */
CREATE TABLE IF NOT EXISTS users
(
    id   INTEGER PRIMARY KEY,
    name VARCHAR(30),
    age  INTEGER
);

CREATE TABLE IF NOT EXISTS orders
(
    id    INTEGER PRIMARY KEY,
    email VARCHAR(30),
    CONSTRAINT orders_users_id_foreign_key
        FOREIGN KEY ( id )
            REFERENCES users ( id )
            ON DELETE CASCADE
            ON UPDATE CASCADE
);

/* 插入数据 */
-- 插入单行数据库
INSERT
INTO
    -- 表名（列名）列名可以顺序可交换
    users
    (id, name, age)
VALUES
    -- 值
    (1, '张三', 18);

-- 插入多行数据
INSERT
INTO
    users
    (id, name, age)
VALUES
    (2, '李四', 20),
    (3, '王五', 22);

-- 返回插入的行信息
INSERT
INTO
    users
    (id, name, age)
VALUES
    (4, '赵六', 24)
-- RETURNING 返回插入的行信息
-- 可以指定返回的列和别名
RETURNING id;

-- 插入数据处理
INSERT
INTO
    users
    (id, name, age)
VALUES
    (4, '李七', 18)
ON CONFLICT (id) -- 指定冲突处理
-- DO NOTHING —— 什么都不做
-- DO UPDATE SET —— 更新数据
    DO UPDATE SET
                  name = EXCLUDED.name,
                  age  = EXCLUDED.age;

/* 更新数据 */
UPDATE users -- 表名
SET
    -- 列名 = 值
    age = 20
WHERE
    -- 条件
    id = 1
-- 返回更新的行信息
RETURNING *;

-- 使用表达式更新数据
UPDATE users
SET
    -- 列名 = 表达式
    age = age + 1
WHERE
    id = 2
RETURNING *;

-- 表达式函数
-- 数据
INSERT
INTO
    orders(id, email)
VALUES
    (1, '11443546565@qq.com'),
    (2, '21212321456@qq.com');
-- 表达式替换
UPDATE orders
SET
    -- 替换全部域名
    email = REPLACE(email, 'qq', '163')
RETURNING *;

-- CASE 表达式
UPDATE users
SET
    -- CASE 表达式
    age = CASE
        -- WHEN 条件 THEN 值
              WHEN age > 21 THEN age + 1
        -- ELSE 值
              ELSE age - 1
              END
RETURNING *;

-- 根据其他表更新数据
UPDATE orders
SET
    email = '5463541256@163.com'
FROM
    -- 其他表
    users
WHERE
    -- 条件
    users.age = 21 AND
    orders.id = users.id
RETURNING *;

/* 删除数据 */
DELETE
FROM
    users -- 表名
WHERE
    -- 条件
    -- 没有条件时，删除所有数据
    id = 4;

/* DQL 数据查询语言 */
/* 表实例 */
CREATE TABLE employee
(
    id   INTEGER,
    name TEXT,
    age  INTEGER
);
CREATE TABLE detailed_information
(
    id           INTEGER,
    emil         TEXT,
    home_address TEXT
);

DROP TABLE employee;

/* 数据 */
INSERT
INTO
    employee(id, name, age)
VALUES
    (1, '小白', 21),
    (2, '小红', 51),
    (3, '小黑', 35),
    (4, '小粉', 19),
    (5, '小白', 26);
INSERT
INTO
    detailed_information(id, emil, home_address)
VALUES
    (1, '12412151231@qq.com', '北京市'),
    (2, '51312513213@qq.com', '南京市'),
    (3, '56121315624@qq.com', '青岛市'),
    (4, '32141324512@qq.com', '宁波市'),
    (5, '12543624467@qq.com', '西安市');

-- 单表查询
-- 查询所有列
SELECT *
FROM
    employee;

-- 查询指定列
SELECT
    name
FROM
    employee;

-- 查询表达式
SELECT 5 * 3 AS result;
-- 可通过 AS 指定别名

/* 过滤 */
SELECT *
FROM
    employee
WHERE
    -- 过滤条件
    id > 2;

-- 过滤条件可以使用 AND 和 OR 连接
SELECT
    id,
    name
FROM
    employee
WHERE
            id > 1 AND
            id > 5 OR
            name = '小白';

/* 排序 */
SELECT *
FROM
    employee
ORDER BY
    -- 排序列
    -- ASC 升序（默认）
    -- DESC 降序
    id DESC
    -- FIRST NULL 在非 NULL 值之前
    -- LAST NULL 在非 NULL 值之后
    NULLS FIRST;

-- 自定义排序
SELECT *
FROM
    employee
ORDER BY
    CASE name
        WHEN '小红' THEN 1
        ELSE 2
        END;

/* 限定行数 */
SELECT *
FROM
    employee
    -- NEXT | FIRST 含义相同
    -- NEXT ROWS | ROW 含义相同
    FETCH NEXT 2 ROWS ONLY;

-- LIMIT 非标准语法
SELECT *
FROM
    employee
LIMIT 5;

/* 偏移行数 */
SELECT *
FROM
    employee
OFFSET 3;

/* 分页 */
SELECT *
FROM
    employee
OFFSET 0 * 2 FETCH FIRST 2 ROWS ONLY;

/* 排查重复数据 */
SELECT DISTINCT
    name
FROM
    employee
ORDER BY
    name;

/* 列别名 */
SELECT
    -- 列名 AS 别名
    name AS user_name
FROM
    employee;

-- 列别名表达式
SELECT
    -- 拼接列名和列值
    name || '的年龄是' || age AS user_age
FROM
    employee;


/* 表别名 */
-- 避免列名冲突
SELECT
    e.id,
    e.age
FROM
    employee AS e;

/* 分组 */
SELECT
    -- 分组列
    name,
    -- 聚合函数
    COUNT(*) AS count
FROM
    employee
-- 分组
GROUP BY
    name
-- 排序
ORDER BY
    count DESC;

/* 过滤分组 */
SELECT
    name,
    COUNT(*) AS count
FROM
    employee
GROUP BY
    name
-- 过滤分组
HAVING
    COUNT(*) > 1
ORDER BY
    count DESC;

/* IN 运算符 */
SELECT *
FROM
    employee
WHERE
    -- 匹配查询
    name IN ( '小黑', '小绿' );

/* 子查询 */
-- 一般用在 IN 和 EXISTS 中
SELECT *
FROM
    employee
WHERE
        age IN (
        SELECT
            age
        FROM
            employee
        WHERE
            age > 21
               );

/* EXISTS 检查子查询 */
SELECT *
FROM
    employee
WHERE
    -- 子查询返回结果不为空 为真
    EXISTS
    (
        SELECT
            age
        FROM
            employee
        WHERE
            age > 21
    );


/* BETWEEN 区间 */
SELECT *
FROM
    employee
WHERE
    id BETWEEN 2 AND 6;

-- NOT BETWEEN 区间
SELECT *
FROM
    employee
WHERE
    id NOT BETWEEN 2 AND 6;

/* LIKE 模糊查询 */
-- % 任意字符
SELECT *
FROM
    employee
WHERE
    name LIKE '%红';

-- NOT LIKE 模糊查询
SELECT *
FROM
    employee
WHERE
    name NOT LIKE '%红';

-- _ 单个字符
SELECT *
FROM
    employee
WHERE
    name LIKE '_白';

-- ILIKE 忽略大小写
SELECT *
FROM
    employee
WHERE
    name ILIKE '%黑';
-- ESCAPE 转义字符
-- ESCAPE '#' 表示 # 后面的字符不作为通配符

/* IS NULL 空值 */
SELECT *
FROM
    employee
WHERE
    name IS NULL;

-- IS NOT NULL 非空值
SELECT *
FROM
    employee
WHERE
    name IS NOT NULL;

/* ALL 比较所有值 */
-- 比较所有值,全部满足才为真
SELECT 2 = ALL (ARRAY [ 1 , 2 , 3 ]) AS result;

-- 比较子查询所有值
SELECT
        18 > ALL (
        SELECT
            age
        FROM
            employee
                 ) AS result;

/* ANY 比较任意值(任一满足) */
SELECT 2 = ANY (ARRAY [ 1 , 2 , 3 ]) AS result;

-- 比较子查询任意值
SELECT
        22 > ANY (
        SELECT
            age
        FROM
            employee
                 ) AS result;

/* GROUPING SETS 分组集合 */
SELECT
    age,
    name,
    COUNT(*) AS count
FROM
    employee
GROUP BY
    -- 分组集合
    GROUPING SETS (
    -- 分组列
    (age),
    (name), (
    ))
ORDER BY
    count DESC;

/* ROLLUP 多维分组集合 */
SELECT
    name,
    age,
    COUNT(*) AS count
FROM
    employee
GROUP BY
    -- 多维分组集合
    ROLLUP (
    name,
    age)
ORDER BY
    name,
    age;

/* CUBE 多维分组笛卡尔积 */
SELECT
    name,
    age,
    COUNT(*) AS count
FROM
    employee
GROUP BY
    -- 多维分组集合
    CUBE (
    name,
    age)
ORDER BY
    name,
    age;

/* JOIN 连接 */
-- 连接用数据
CREATE TABLE student
(
    -- 学生ID
    student_id INTEGER     NOT NULL,
    -- 姓名
    name       VARCHAR(45) NOT NULL,
    PRIMARY KEY ( student_id )
);

CREATE TABLE student_score
(
    -- 学生ID
    student_id INTEGER     NOT NULL,
    -- 科目
    subject    VARCHAR(45) NOT NULL,
    -- 得分
    score      INTEGER     NOT NULL
);

INSERT
INTO
    student
    (student_id, name)
VALUES
    (1, 'Tim'),
    (2, 'Jim'),
    (3, 'Lucy');

INSERT
INTO
    student_score
    (student_id, subject, score)
VALUES
    (1, 'English', 90),
    (1, 'Math', 80),
    (2, 'English', 85),
    (5, 'English', 92);

-- CROSS 交叉连接
-- 返回两个集合的笛卡尔积
-- 返回所有可能的组合
SELECT
    student.*,
    student_score.*
FROM
    student
    CROSS JOIN student_score;

-- INNER 内连接
-- 基于连接条件返回组合
SELECT
    student.*,
    student_score.*
FROM
    student
    INNER JOIN student_score
    USING ( student_id );
-- 连接条件相同字段可使用 USING

-- NATURAL 自然连接
-- 特殊的内连接
-- 连接的表所有同名列都将做等值比较
-- 这个连接等价于 INNER JOIN ... USING
SELECT *
FROM
    student
    NATURAL JOIN student_score;

-- LEFT 左连接
-- 返回左表所有记录和右表匹配记录
SELECT
    student.*,
    student_score.*
FROM
    student
    LEFT JOIN student_score
    USING ( student_id );

-- RIGHT 右连接
-- 返回右表所有记录和左表匹配记录
SELECT
    student.*,
    student_score.*
FROM
    student
    RIGHT JOIN student_score
    USING ( student_id );

-- FULL 全连接
-- 返回左连接和右连接的并集
SELECT
    student.*,
    student_score.*
FROM
    student
    FULL JOIN student_score
    USING ( student_id );

/* UNION 并集查询 */
-- 返回两个集合的并集
SELECT *
FROM
    student
-- UNION ALL 不去重
UNION ALL
SELECT
    score,
    subject
FROM
    student_score;

/* INTERSECT 交集查询 */
-- 返回两个集合的交集
SELECT
    GENERATE_SERIES(1, 10)
INTERSECT
SELECT
    GENERATE_SERIES(5, 15);

/* EXCEPT 差集查询 */
-- 返回两个集合的差集
SELECT
    GENERATE_SERIES(1, 10)
EXCEPT
SELECT
    GENERATE_SERIES(5, 15);

/* 通用表达式与递归查询 */
-- 语言级别的临时表
-- 使用 WITH 定义
WITH
    cte_name AS (
        -- 查询语句
        SELECT
            AVG(age) AS avg_age
        FROM
            employee
        ORDER BY
            avg_age DESC
        -- 创建了一个年龄平均值的临时表
    )
-- 使用
SELECT
    u.id,
    u.age,
    c.avg_age,
    u.age > c.avg_age AS result
FROM
    users u,
    cte_name c;

-- 递归查询
-- 递归查询操作表
CREATE TABLE category
(
    id        SERIAL PRIMARY KEY,
    name      VARCHAR NOT NULL,
    parent_id INT,
    CONSTRAINT fk_category
        FOREIGN KEY ( parent_id ) REFERENCES category ( id )
);

INSERT
INTO
    category
    (id, name, parent_id)
VALUES
    (1, 'ROOT', NULL),
    (2, 'Baby', 1),
    (3, 'Home And Kitchen', 1),
    (4, 'Baby Care', 2),
    (5, 'Feeding', 2),
    (6, 'Gifts', 2),
    (7, 'Safety', 2),
    (8, 'Bedding', 3),
    (9, 'Bath', 3),
    (10, 'Furniture', 3),
    (11, 'Grooming', 4),
    (12, 'Hair Care', 4),
    (13, 'Baby Foods', 5),
    (14, 'Food Mills', 5),
    (15, 'Solid Feeding', 5),
    (16, 'Bed Pillows', 8),
    (17, 'Bed Skirts', 8);

WITH
    RECURSIVE
    -- 递归查询
    cte_categories AS (
        SELECT
            id,
            name,
            parent_id
        FROM
            category
        WHERE
            id = 2
        -- 合并查询结果
        UNION
        SELECT
            c.id,
            c.name,
            c.parent_id
        FROM
            category c,
            cte_categories cs
        WHERE
            c.parent_id = cs.id
    )
SELECT *
FROM
    cte_categories;

/* 聚合函数 */
-- MAX 最大值
SELECT
    MAX(age)
FROM
    employee;

/* 视图 */
-- 根据查询语句创建的虚拟表
-- 创建视图
CREATE VIEW employee_string
AS
SELECT
    name
FROM
    employee;

-- 查询视图
SELECT *
FROM
    employee_string;

-- 删除视图
DROP VIEW employee_string;

/* 继承 */
-- 创建表
CREATE TABLE capital
(
    name       TEXT,
    population REAL,
    elevation  INT
);

-- 创建继承表
CREATE TABLE capitals
(
    state TEXT
) INHERITS ( capital );
-- INHERITS子句指定了继承的父表

-- 插入数据
-- 查询父表，可以看到子表的数据
-- 查询子表，只能看到子表的数据
INSERT
INTO
    capital
VALUES
    ('武汉', 1000, 100);

SELECT *
FROM
    capital;
SELECT *
FROM
    capitals;

/* 窗口函数 */
-- 针对每一行数据,基于和它相关的一组数据计算出结果
SELECT
    id,
    name,
    age,
    -- 添加 OVER关键字 指定为窗口函数
    AVG(age) OVER () AS sum_age
FROM
    employee;

-- 分组窗口函数
SELECT
    id,
    name,
    age,
    -- 根据分组计算
    AVG(age) OVER (PARTITION BY name) AS sum_age
FROM
    employee;

-- 排序窗口函数
SELECT
    id,
    name,
    age,
    -- 根据排序计算
    RANK() OVER (PARTITION BY name ORDER BY age DESC ) AS rank
FROM
    employee;


-- 窗口分区
SELECT
    id,
    name,
    age,
    -- 根据窗口分区计算
    AVG(age) OVER (PARTITION BY name ORDER BY age DESC ROWS BETWEEN 1 PRECEDING AND 1 FOLLOWING) AS sum_age
-- ROWS : 以行为单位计算窗口的偏移量
-- RANGE : 以值为单位计算窗口的偏移量
-- BETWEEN N PRECEDING AND N FOLLOWING : 从当前行的前 N 行到后 N 行
FROM
    employee;

-- 定义窗口
SELECT
    id,
    name,
    age,
    -- 定义窗口
    AVG(age) OVER w AS sum_age
FROM
    employee
-- 定义
WINDOW w AS ( PARTITION BY name ORDER BY age DESC);



/* 数据库管理 */
/* 查询数据库 */
SELECT *
FROM
    pg_database;

/* 数据库复制 */
CREATE DATABASE testdb
    WITH TEMPLATE study;

DROP DATABASE testdb;

/* 获取数据库大小 */
SELECT
    PG_SIZE_PRETTY(PG_DATABASE_SIZE('study'));
SELECT
    datname,
    PG_SIZE_PRETTY(PG_DATABASE_SIZE(datname)) AS size
FROM
    pg_database;

/* 获取数据库表大小 */
SELECT
    -- 不包含索引
    PG_SIZE_PRETTY(PG_RELATION_SIZE('employee'));

SELECT
    -- 包含索引
    PG_SIZE_PRETTY(PG_TOTAL_RELATION_SIZE('employee'));

SELECT
    tablename,
    PG_SIZE_PRETTY(PG_TOTAL_RELATION_SIZE('employee')) AS size
FROM
    pg_tables
WHERE
    schemaname = 'grammar';

/* 获取数据库索引大小 */
SELECT
    PG_SIZE_PRETTY(PG_INDEXES_SIZE('employee'));

/* 获取表空间大小 */
SELECT
    PG_SIZE_PRETTY(PG_TABLESPACE_SIZE('pg_default'));

/* 获取值大小 */
SELECT PG_COLUMN_SIZE('hello');

/* 复制表 */
CREATE TABLE employee_copy
AS
SELECT *
FROM
    employee;

/* 创建角色 */
CREATE ROLE test WITH -- 角色名
--SUPERUSER 指定是创建用户
    NOSUPERUSER -- 指定不是超级用户
-- CREATEDB 指定可创建数据库
    NOCREATEDB -- 指定不可创建数据库
-- CREATEROLE 指定可创建角色
    NOCREATEROLE -- 指定不可创建角色
-- INHERIT 继承所属角色的特权
    NOINHERIT -- 不继承所属角色的特权
-- NOLOGIN 不允许角色登录
    LOGIN -- 允许角色登录
-- REPLICATION -- 指定为复制角色
    NOREPLICATION -- 指定不为复制角色
-- BYPASSRLS 绕过级别安全性策略
    NOBYPASSRLS -- 不绕过级别安全性策略
    CONNECTION LIMIT 10 -- 连接并发数限制
    ENCRYPTED PASSWORD '666666' -- 设定加密密码或指定NULL
    VALID UNTIL '2023.8.12 22:15:12' -- 指定密码有效期
;

SELECT *
FROM
    pg_roles;

/* 创建用户 */
-- 等效于创建角色
CREATE USER test LOGIN PASSWORD '123456';

/* 修改角色 */
ALTER ROLE test PASSWORD '111111';

/* 删除角色 */
DROP ROLE test;

/* 授权 */
-- 授权查询权限
GRANT SELECT
    ON employee TO test;

/* 撤销 */
REVOKE SELECT ON employee FROM test;

/* 创建角色组 */
CREATE ROLE father
    WITH
    LOGIN
    NOSUPERUSER
    NOCREATEDB
    NOCREATEROLE
    NOINHERIT
    PASSWORD '123123';
/* 授权角色组相关权限 */
GRANT CONNECT ON DATABASE
    study TO father;

/* 创建成员角色 */
CREATE ROLE son1
    WITH
    NOSUPERUSER
    NOCREATEDB
    NOCREATEROLE
    INHERIT
    PASSWORD '119246'
    ROLE father;

/* 继承角色组 */
GRANT father TO son1;

/* EXPLAIN 执行计划 */
-- EXPLAIN 用来显示查询的执行计划
-- 选项
-- ANALYZE 实际允许时间和统计信息
-- VERBOSE 显示更多信息
-- COSTS 每个节点的成本估算,行数和宽度估算
-- SETTINGS 有关配置参数的信息
-- BUFFERS 每个节点的缓冲区使用情况
-- WAL 显示 WAL 使用情况,必须和 ANALYZE 一起使用
-- TIMING 显示每个节点的实际执行时间,必须和 ANALYZE 同时使用
-- SUMMARY 查询计划之后包括摘要信息
-- FORMAT 指定输出格式(TEXT,JSON,YAML,XML)
EXPLAIN (ANALYZE )
SELECT *
FROM
    employee;


/* 索引 */
-- 索引用来提高查询效率
-- 索引参数表
CREATE TABLE grammar_index
(
    id   INTEGER,
    name TEXT
);

-- 插入1千万条数据
INSERT
INTO
    grammar_index
SELECT
    v,
    'val:' || v
FROM
    GENERATE_SERIES(1, 10000000) v;

-- 无索引查询
EXPLAIN ANALYZE
SELECT *
FROM
    grammar_index
WHERE
    id = 1000;

/* 创建索引 */
CREATE INDEX test_id_index
    ON grammar_index ( id );

-- 默认BTREE索引查询
EXPLAIN ANALYZE
SELECT *
FROM
    grammar_index
WHERE
    id = 1000000;

/* 创建非默认索引 */
CREATE INDEX test_id_index
    -- USING 指定索引类型
    ON grammar_index USING HASH ( id DESC NULLS LAST );

/* 多列索引 */
CREATE INDEX test_id_name_index
    ON grammar_index USING BTREE ( id, name );

EXPLAIN ANALYZE
SELECT *
FROM
    users
WHERE
    id = 1000000 AND
    name = 'val:1000000';

/* 删除索引 */
DROP INDEX IF EXISTS test_id_index;

/* 查看索引 */
SELECT *
FROM
    pg_indexes;

/* 唯一索引 */
-- 确保列的值是唯一的
CREATE UNIQUE INDEX test_id_index
    ON grammar_index USING BTREE ( id );

EXPLAIN ANALYZE
SELECT *
FROM
    grammar_index;

/* 函数索引 */
CREATE INDEX test_id_index
    ON grammar_index ( UPPER(name) );

EXPLAIN ANALYZE
SELECT *
FROM
    grammar_index
WHERE
    UPPER(name) = 'VAL:1000000';

/* 表分区 */
-- 将大型表拆分成更小的、更易管理的片段
-- 插入数据时,数据库会根据分区键的值自动将数据路由到适当的分区
-- 查询分区表与查询常规表类似,但在查询中不需要指定特定分区

/* 范围分区 */
-- 适用于具有有序范围的数据,如日期、数值范围等
-- 常用于按时间、价格范围等划分数据
-- 创建范围分区表
CREATE TABLE sales
(
    id        SERIAL PRIMARY KEY,
    sale_date DATE,
    amount    NUMERIC
    -- 指定范围分区
) PARTITION BY RANGE (sale_date);
-- 创建范围分区
CREATE TABLE sales_january PARTITION OF sales
    FOR VALUES FROM ('2023-01-01') TO ('2023-02-01');

/* 列表分区 */
-- 适用于根据预定义值列表对数据进行划分,如地区、类别等
-- 创建列表分区表
CREATE TABLE employees
(
    id         SERIAL PRIMARY KEY,
    department TEXT,
    salary     NUMERIC
    -- 指定列表分区
) PARTITION BY LIST (department);
-- 创建列表分区
CREATE TABLE employees_engineering PARTITION OF employees
    FOR VALUES IN ('Engineering');

/* 哈希分区 */
-- 适用于需要在多个分区之间均匀分布数据的情况
-- 常用于避免单一分区的数据过载
-- 创建哈希分区表
CREATE TABLE orders
(
    id          SERIAL PRIMARY KEY,
    customer_id INT,
    order_date  DATE
    -- 指定哈希分区
) PARTITION BY HASH (customer_id);
-- 创建哈希分区
CREATE TABLE orders_part PARTITION OF orders
    --  (MODULUS 哈希函数的模数（划分的分区数）, REMAINDER 哈希函数的余数（标识分区的编号）)
    FOR VALUES WITH (MODULUS 4, REMAINDER 0);

