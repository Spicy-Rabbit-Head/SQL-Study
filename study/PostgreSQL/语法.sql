/*
  这是关于 PostgreSQL 的学习
 */

/* SQL 注释 */
-- 这个是单行注释
/* 这个是多行注释 */

/* DDL 数据定义语言 */
/* 创建数据库 */
CREATE DATABASE test;

/* 创建数据库-可选参数 */
CREATE DATABASE test
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
    LC_COLLATE = 'zh_CN.utf8'
    -- 指定数据库的字符分类
    LC_CTYPE = 'zh_CN.utf8'
    -- 将与新数据库关联的表空间
    -- TABLESPACE = pg_default
    -- 是否允许连接到该数据库
    ALLOW_CONNECTIONS = TRUE
    -- 连接数限制 ( -1 表示无限制 )
    CONNECTION LIMIT = -1
    -- 是否为模版数据库
    IS_TEMPLATE = FALSE;

/* 删除数据库 */
DROP DATABASE test;

/* 删除数据库-可选参数 */
-- 判断数据库是否存在，存在则删除
DROP DATABASE IF EXISTS test;

/* 修改数据库 */
ALTER DATABASE test RENAME TO text;
-- 所有者
ALTER DATABASE test OWNER TO postgres;
-- 连接数限制
ALTER DATABASE test CONNECTION LIMIT 10;
-- 配置
ALTER DATABASE test SET 配置名 TO '配置值';
-- 重置配置
ALTER DATABASE test RESET ALL;

/* 创建表 */
CREATE TABLE IF NOT EXISTS customer -- 表名
-- 创建是可通过 IF NOT EXISTS 判断表是否已存在
(
    -- 列名 数据类型 约束
    first_name VARCHAR(30) NOT NULL ,
    last_name  VARCHAR(30) NOT NULL ,
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
CREATE TABLE IF NOT EXISTS customer_test
    -- 指定模版表
AS TABLE customer
    -- WITH NO DATA 表示不复制数据
    WITH NO DATA;

/* 创建表-结果集 */
CREATE TABLE IF NOT EXISTS customer_test
    -- 指定结果集
AS
SELECT * -- 指定复制列
FROM
    customer;

/* 删除表 */
-- IF EXISTS 判断表是否存在，存在则删除
DROP TABLE IF EXISTS customer;
-- 参数
-- CASCADE —— 删除表的同时删除依赖于该表的其他对象
-- RESTRICT —— 如果其他对象依赖于该表，则不删除该表

/* 修改表 */
-- 修改表名
ALTER TABLE customer
    RENAME TO customer_test;
-- 修改表架构
ALTER TABLE customer
    SET SCHEMA postgres.public;
-- 添加列
ALTER TABLE customer
    ADD COLUMN IF NOT EXISTS
        customer_id VARCHAR(10);
-- 修改列类型
ALTER TABLE customer
    ALTER COLUMN customer_id
        -- SET DATA 指定新的排序规则
        SET DATA TYPE VARCHAR(10);
-- 设置非空约束
ALTER TABLE customer
    ALTER COLUMN customer_id
        SET NOT NULL;
-- 删除非空约束
ALTER TABLE customer
    ALTER COLUMN customer_id
        DROP NOT NULL;
-- 添加约束
ALTER TABLE customer
    -- 添加主键约束
    ADD CONSTRAINT customer_pkey
        PRIMARY KEY ( customer_id );
-- 删除约束
ALTER TABLE customer
    -- 删除主键约束
    DROP CONSTRAINT customer_pkey;

/* 主键 */
-- 定义主键
CREATE TABLE users
(
    -- PRIMARY KEY 主键约束
    -- 主键列的值必须是唯一的,且不能为 NULL
    id   INTEGER PRIMARY KEY ,
    name VARCHAR(30) ,
    age  INT NOT NULL
);
-- 定义主键-多列
CREATE TABLE users
(
    id   INTEGER ,
    name VARCHAR(30) ,
    -- 多列主键
    PRIMARY KEY ( id , name )
);

/* 外键 */
-- 外键用来定义两个实体之间的约束关系
-- 创建外键
CREATE TABLE users
(
    id   INTEGER PRIMARY KEY ,
    name VARCHAR(30)
); -- 主表
CREATE TABLE orders
(
    id    INTEGER ,
    email VARCHAR(30) ,
    -- 外键约束名
    CONSTRAINT orders_users_id_fkey
        -- 指定外键列
        FOREIGN KEY ( id )
            -- 外键列
            REFERENCES users ( id )
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
ALTER TABLE orders
    DROP CONSTRAINT orders_users_id_fkey;

/* 非空约束 */
-- 非空约束用来定义列的值不能为 NULL
-- NULL 不是空串，也不是 0，它表示什么都没有
CREATE TABLE users
(
    id   INTEGER PRIMARY KEY ,
    name VARCHAR(30) NOT NULL -- 非空约束
);

/* 唯一约束 */
-- 唯一约束用来定义列的值不能重复
-- 唯一约束列可以包含 NULL 值
CREATE TABLE users
(
    id   INTEGER PRIMARY KEY ,
    name VARCHAR(30) UNIQUE -- 唯一约束
);
-- 多列唯一约束
CREATE TABLE users
(
    id    INTEGER PRIMARY KEY ,
    name  VARCHAR(30) ,
    email VARCHAR(30) ,
    -- 唯一约束名
    CONSTRAINT users_name_email_key
        -- 多列唯一约束
        UNIQUE ( name , email )
);

/* 生成列 */
-- 生成列用来定义列的值是通过计算得到的
-- 不能直接写入或更新生成列的值
CREATE TABLE users
(
    id        INTEGER PRIMARY KEY ,
    name      VARCHAR(30) ,
    age       INTEGER ,
    -- 生成列
    full_name INTEGER GENERATED ALWAYS AS (age / 2) STORED -- 存储生成列
);

/* 标识列 */
-- 标识列用来定义列的值是自动生成的
CREATE TABLE users
(
    -- 标识列
    id   SERIAL GENERATED ALWAYS AS IDENTITY ,
    name VARCHAR(30)
);

/* 检查约束 */
-- 检查约束用来定义列的值必须满足指定的条件
CREATE TABLE users
(
    id   INTEGER PRIMARY KEY ,
    name VARCHAR(30) ,
    age  INTEGER ,
    -- 检查约束名
    CONSTRAINT users_age_check
        -- 检查条件
        CHECK ( age > 0 AND age < 150 )
    -- 不满足检查约束条件时，会抛出异常
);

/* 自增列 */
-- 自增列用来定义列的值是自动生成的
-- 和标识列不同的是，自增列的值可以手动指定
CREATE TABLE users
(
    -- 自增列
    id   SERIAL ,
    name VARCHAR(30)
);

/* 序列生成器 */
-- 生成一个有序的整数序列
-- TEMPORARY 临时序列
CREATE TEMPORARY
    -- 序列名
    SEQUENCE IF NOT EXISTS users_id_seq
    -- 序列的数据类型
    AS INTEGER
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
DROP SEQUENCE IF EXISTS users_id_seq;

/* 临时表 */
-- 临时表用来存储临时数据
-- 临时表只在当前会话中存在
CREATE TEMPORARY TABLE users
(
    id   INTEGER PRIMARY KEY ,
    name VARCHAR(30)
);
-- 删除临时表
DROP TABLE IF EXISTS users;

/* 结果集创建表 */
-- 通过结果集创建表
SELECT * -- 指定复制列
INTO TEMPORARY -- 是否为临时表
    customer_test -- 指定表名
FROM
    customer;

/* 事务 */
-- 事务用来管理一组 SQL 语句的执行
-- 开启事务
BEGIN;
-- 执行 SQL 语句
INSERT
INTO
    users
    (age)
VALUES
    ('张三');
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
    id   INTEGER PRIMARY KEY ,
    name VARCHAR(30)
);
-- 删除架构
DROP SCHEMA IF EXISTS test;
-- 重命名架构
ALTER SCHEMA test RENAME TO test1;

/* 清空表 */
-- TRUNCATE 速度更快
-- 不需要扫描表中,直接回收磁盘空间
TRUNCATE TABLE users CASCADE;
-- ONLY 限制只清空当前表,不清空子表
-- CASCADE 如果外键关联,拒绝操作

/* DML 数据操作语言 */
/* 表实例 */
CREATE TABLE IF NOT EXISTS users
(
    id   INTEGER PRIMARY KEY ,
    name VARCHAR(30) ,
    age  INTEGER
);
CREATE TABLE IF NOT EXISTS orders
(
    id    INTEGER PRIMARY KEY ,
    email VARCHAR(30) ,
    CONSTRAINT orders_users_id_fkey
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
    (id , name , age)
VALUES
    -- 值
    (1 , '张三' , 18);
-- 插入多行数据
INSERT
INTO
    users
    (id , name , age)
VALUES
    (2 , '李四' , 20),
    (3 , '王五' , 22);
-- 返回插入的行信息
INSERT
INTO
    users
    (id , name , age)
VALUES
    (4 , '赵六' , 24)
-- RETURNING 返回插入的行信息
-- 可以指定返回的列和别名
RETURNING id;
-- 插入数据处理
INSERT
INTO
    users
    (id , name , age)
VALUES
    (4 , '李七' , 18)
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
    id = 2;

-- 表达式函数
UPDATE orders
SET
    -- 替换全部域名
    email = REPLACE(email,'qq','163')
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
              END;

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
-- 单表查询
-- 查询所有列
SELECT *
FROM
    users;

-- 查询指定列
SELECT
    name
FROM
    users;

-- 查询表达式
SELECT 5 * 3 AS result;
-- 可通过 AS 指定别名

/* 过滤 */
SELECT *
FROM
    users
WHERE
    -- 过滤条件
    id > 2;

-- 过滤条件可以使用 AND 和 OR 连接
SELECT *
FROM
    users
WHERE
            id > 1 AND
            id > 5 OR
            name = '张三';

-- 过滤条件可以使用 IN 和 NOT IN 连接
SELECT *
FROM
    users
WHERE
    -- 匹配查询
    name IN ( '张三' , '李四' );
SELECT *
FROM
    users
WHERE
    -- 排除查询
    name NOT IN ('张三');

-- LIKE 模糊查询
-- % 任意字符
-- _ 单个字符
SELECT *
FROM
    users
WHERE
    name LIKE '%三';

-- BETWEEN 区间查询
SELECT *
FROM
    users
WHERE
    id BETWEEN 2 AND 3;

/* 排序 */
SELECT *
FROM
    users
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
    users
ORDER BY
    CASE name
        WHEN '李四' THEN 1
        ELSE 2
        END;

/* 限定行数 */
SELECT *
FROM
    users
    -- NEXT | FIRST 含义相同
    -- NEXT ROWS | ROW 含义相同
    FETCH NEXT 2 ROWS ONLY;
-- LIMIT 非标准语法
SELECT *
FROM
    users
LIMIT 5;

/* 偏移行数 */
SELECT *
FROM
    users
OFFSET 7;

/* 分页 */
SELECT *
FROM
    users
OFFSET 3 * 2 FETCH FIRST 2 ROWS ONLY;

/* 排查重复数据 */
SELECT DISTINCT
    name
FROM
    users
ORDER BY
    name;

/* 列别名 */
SELECT
    -- 列名 AS 别名
    name AS user_name
FROM
    users;

-- 列别名表达式
SELECT
    -- 拼接列名和列值
    name || '的年龄是' || age AS user_age
FROM
    users;


/* 表别名 */
-- 避免列名冲突
SELECT
    u.id,
    u.age
FROM
    users AS u;

/* 分组 */
SELECT
    -- 分组列
    name,
    -- 聚合函数
    COUNT(*) AS count
FROM
    users
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
    users
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
    users
WHERE
    -- 匹配查询
    name IN ( '张三' , '李四' );

/* 子查询 */
-- 一般用在 IN 和 EXISTS 中
SELECT *
FROM
    users
WHERE
        age IN (
        SELECT
            age
        FROM
            users
        WHERE
            age > 21
               );

/* EXISTS 检查子查询 */
SELECT *
FROM
    users
WHERE
    -- 子查询返回结果不为空 为真
    EXISTS
    (
        SELECT
            age
        FROM
            users
        WHERE
            age > 21
    );


/* BETWEEN 区间 */
SELECT *
FROM
    users
WHERE
    id BETWEEN 2 AND 6;
-- NOT BETWEEN 区间
SELECT *
FROM
    users
WHERE
    id NOT BETWEEN 2 AND 6;

/* LIKE 模糊查询 */
SELECT *
FROM
    users
WHERE
    name LIKE '%三';
-- NOT LIKE 模糊查询
SELECT *
FROM
    users
WHERE
    name NOT LIKE '%三';
-- _ 单个字符
SELECT *
FROM
    users
WHERE
    name LIKE '_三';
-- ILIKE 忽略大小写
SELECT *
FROM
    users
WHERE
    name ILIKE '%三';

/* IS NULL 空值 */
SELECT *
FROM
    users
WHERE
    name IS NULL;
-- IS NOT NULL 非空值
SELECT *
FROM
    users
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
            users
                 ) AS result;

/* ANY 比较任意值(任一满足) */
SELECT 2 = ANY (ARRAY [ 1 , 2 , 3 ]) AS result;
-- 比较子查询任意值
SELECT
        22 > ANY (
        SELECT
            age
        FROM
            users
                 ) AS result;

/* GROUPING SETS 分组集合 */
SELECT
    age,
    name,
    COUNT(*) AS count
FROM
    users
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
    users
GROUP BY
    -- 多维分组集合
    ROLLUP (
    name,
    age)
ORDER BY
    name,
    age;

/* CUBE 多维分组集合 */
SELECT
    name,
    age,
    COUNT(*) AS count
FROM
    users
GROUP BY
    -- 多维分组集合
    CUBE (
    name,
    age)
ORDER BY
    name,
    age;

/* JOIN 连接 */
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

/* UNION 合并查询 */
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
    GENERATE_SERIES(1,10)
INTERSECT
SELECT
    GENERATE_SERIES(5,15);

/* EXCEPT 差集查询 */
-- 返回两个集合的差集
SELECT
    GENERATE_SERIES(1,10)
EXCEPT
SELECT
    GENERATE_SERIES(5,15);

/* 通用表达式与递归查询 */
-- 语言级别的临时表
-- 使用 WITH 定义
WITH
    cte_name AS (
        -- 查询语句
        SELECT
            AVG(age) AS avg_age
        FROM
            users
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


