/* 字符类型 */
CREATE TABLE type_char
(
    -- 插入是超出的是空白不会报错,会自动截断
    -- 插入是未满的会自动补空白
    char    CHAR(1) ,
    -- 插入是超出的会报错
    -- 插入是未满会自动改变长度
    varchar VARCHAR(10) ,
    -- 无限制字符串
    text    TEXT
);

-- 插入
INSERT
INTO
    type_char
VALUES
    ('a' , 'b' , 'c');

/* 数值类型 */
-- 整数类型
CREATE TABLE type_integer
(
    -- 短整型
    smallint SMALLINT ,
    -- 整型
    integer  INTEGER ,
    -- 长整型
    bigint   BIGINT
);

-- 插入
INSERT
INTO
    type_integer
VALUES
    (1 , 2 , 3);

-- 任意精度的浮点数
CREATE TABLE type_decimal
(
    -- 指定精度的浮点数
    decimal DECIMAL(10 , 2) ,
    numeric NUMERIC(10 , 2)
);

-- 插入
INSERT
INTO
    type_decimal
VALUES
    (1.23 , 4.56);

-- 串行类型
CREATE TABLE type_serial
(
    -- 自增长的短整型
    smallserial SMALLSERIAL ,
    -- 自增长的整型
    serial      SERIAL ,
    -- 自增长的长整型
    bigserial   BIGSERIAL
);

-- 插入
INSERT
INTO
    type_serial
    DEFAULT
VALUES;

-- 浮点类型
CREATE TABLE type_float
(
    -- 单精度浮点数
    real  REAL ,
    -- 双精度浮点数
    float FLOAT
);

-- 插入
INSERT
INTO
    type_float
VALUES
    (1.23 , 4.56);

/* 布尔类型 */
CREATE TABLE type_boolean
(
    -- 布尔类型
    boolean BOOLEAN
);

-- 插入
INSERT
INTO
    type_boolean
VALUES
    (TRUE),
    ('t');

/* 日期和时间类型 */
-- 日期类型
CREATE TABLE type_date
(
    -- 日期类型
    -- 公元前 4713年到公元 5874897年
    -- 必须保证数据以 yyyy-mm-dd 格式存储
    date DATE
);

-- 插入
INSERT
INTO
    type_date
VALUES
    ('2020-01-01');

-- 时间类型
CREATE TABLE type_time
(
    -- 时间类型,无时区
    -- 00:00:00 到 24:00:00
    -- 数据以 HH:MI:SS.ssssss 格式存储
    -- 时:分:秒.毫秒
    time      TIME ,
    -- 时间类型,有时区
    -- 00:00:00+1559 到 24:00:00-1559
    time_zone TIME WITH TIME ZONE
);

-- 插入
INSERT
INTO
    type_time
VALUES
    ('00:00:00' , '00:00:00+1559');

-- 时间戳类型
CREATE TABLE type_timestamp
(
    -- 时间戳类型,无时区
    -- 公元前 4713年到公元 294276年
    -- 数据以 yyyy-mm-dd HH:MI:SS.ssssss 格式存储
    -- 年-月-日 时:分:秒.毫秒
    timestamp      TIMESTAMP ,
    -- 时间戳类型,有时区
    -- 公元前 4713年到公元 294276年
    -- 数据以 yyyy-mm-dd HH:MI:SS.ssssss 格式存储
    -- 年-月-日 时:分:秒.毫秒
    -- 时区
    timestamp_zone TIMESTAMP WITH TIME ZONE
);

-- 插入
INSERT
INTO
    type_timestamp
VALUES
    ('2020-01-01 00:00:00' , '2020-01-01 00:00:00+1559');

-- 时间间隔类型
CREATE TABLE type_interval
(
    -- 时间间隔类型
    -- 无时区
    -- 数据以 HH:MI:SS.ssssss 格式存储
    -- 时:分:秒.毫秒
    interval INTERVAL
);

-- 插入
INSERT
INTO
    type_interval
VALUES
    ('00:00:00');

/* 货币类型 */
CREATE TABLE type_money
(
    -- 货币类型
    money MONEY
);

-- 插入
INSERT
INTO
    type_money
VALUES
    ('$1.23');

/* 二进制数据类型 */
CREATE TABLE type_binary
(
    -- 二进制数据类型
    bytea BYTEA
);

-- 插入
INSERT
INTO
    type_binary
VALUES
    ('123');

/* 枚举类型 */
-- 声明枚举类型
CREATE TYPE WEEK AS ENUM (
    -- 枚举值
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday',
    'Sunday'
    );

-- 使用枚举类型
CREATE TABLE type_enum
(
    -- 枚举类型
    -- 插入非枚举值会报错
    -- 枚举排序规则就是枚举声明时的顺序
    week WEEK
);

-- 插入
INSERT
INTO
    type_enum
VALUES
    ('Monday');


/* JSON类型 */
CREATE TABLE type_json
(
    json JSON
);

-- 插入
INSERT
INTO
    type_json
VALUES
    ('{
      "id": 1,
      "name": "张三",
      "address": {
        "city": "北京",
        "street": "朝阳区"
      }
    }'),
    ('{
      "id": 2,
      "name": "李四",
      "address": {
        "city": "宁波",
        "street": "鄞州区"
      }
    }');

-- 操作符查询
SELECT
    -- 使用操作符
    -- -> 获取 json 字段的值
    json -> 'id'                 AS id,
    -- ->> 获取 json 字段的值文本
    json ->> 'name'              AS name,
    -- 多级
    json -> 'address' ->> 'city' AS city,
    -- 指定路径的值
    json #>> '{address,street}'  AS street
FROM
    type_json;

/* 几何类型 */
/* POINT 二维点 */
CREATE TABLE type_point
(
    -- 基本二维构建块
    point POINT
);

-- 创建点
INSERT
INTO
    type_point
VALUES
    (POINT(1,2));

-- 创建点
INSERT
INTO
    type_point
VALUES
    -- x和y为各自坐标
    -- 未浮点数
    ('(0,3)');

SELECT *
FROM
    type_point;


/* LINE 线 */
CREATE TABLE type_line
(
    -- 无限长的线
    line LINE
);

-- 创建线
INSERT
INTO
    type_line
VALUES
    (LINE(POINT(1,2),POINT(3,4)));

-- 创建线
INSERT
INTO
    type_line
VALUES
    -- {A,B,C}式输入
    ('{1,5,1}'),
    -- [(x1,y1),(x2,y2)]式输入
    ('((0,0),(1,1))');

SELECT *
FROM
    type_line;

/* LINESTRING 线段 */
CREATE TABLE type_lseg
(
    -- 有限长的线段
    lseg LSEG
);

-- 创建线段
INSERT
INTO
    type_lseg
VALUES
    (LSEG(POINT(1,2),POINT(3,4)));

-- 创建线段
INSERT
INTO
    type_lseg
VALUES
    -- [(x1,y1),(x2,y2)]式或
    -- ((x1,y1),(x2,y2))式输入
    ('((0,0),(1,1))');

SELECT *
FROM
    type_lseg;

/* BOX 矩形 */
CREATE TABLE type_box
(
    -- 矩形框
    box BOX
);

-- 创建矩形
INSERT
INTO
    type_box
VALUES
    (BOX(POINT(1,2),POINT(3,4)));

-- 创建矩形
INSERT
INTO
    type_box
VALUES
    -- [(x1,y1),(x2,y2)]式
    ('((0,0),(1,1))');
-- 按右上角和左下角的储存顺序

SELECT *
FROM
    type_box;

/* PATH 路径 */
CREATE TABLE type_path
(
    -- 路径
    path PATH
);

-- 创建路径
INSERT
INTO
    type_path
VALUES
    -- [(x1,y1),(x2,y2)]式或
    -- ((x1,y1),(x2,y2))式输入
    -- ()表示不封闭,[]表示封闭
    ('((1,2),(3,4))');

SELECT *
FROM
    type_path;

/* POLYGON 多边形 */
CREATE TABLE type_polygon
(
    -- 多边形
    polygon POLYGON
);

-- 创建多边形
INSERT
INTO
    type_polygon
VALUES
    -- ((x1,y1),(xn,yn))式输入
    ('((1,2),(3,4))');

SELECT *
FROM
    type_polygon;

/* CIRCLE 圆 */
CREATE TABLE type_circle
(
    -- 圆
    circle CIRCLE
);

-- 创建圆
INSERT
INTO
    type_circle
VALUES
    -- <(x,y),r>式或
    -- ((x,y),r)式输入
    ('((1,2),3)');

SELECT *
FROM
    type_circle;

/* CIDR 网络地址 */
CREATE TABLE type_network_address
(
    -- 网络地址
    cidr     CIDR ,
    -- 网络地址
    inet     INET ,
    -- MAC地址
    macaddr  MACADDR ,
    -- MAC地址(EUI-64)
    macaddr8 MACADDR8
);

-- 创建网络地址
INSERT
INTO
    type_network_address
    (cidr , inet , macaddr , macaddr8)
VALUES
    -- x.x.x.x/y式输入
    -- y为网络掩码位数
    ('192.168.1.0/24' , '192.168.1.0/24' , '08:00:2b:01:02:03' , '08:00:2b:01:02:03:04:05');

SELECT *
FROM
    type_network_address;

/* TSVECTOR 文本搜索向量 */
CREATE TABLE type_tsvector
(
    -- 文本搜索向量
    text TSVECTOR ,
    -- 文本搜索查询
    ts   TSQUERY
);

-- 创建文本搜索向量
INSERT
INTO
    type_tsvector
    (text , ts)
VALUES
    ('a fat cat sat on a mat and ate a fat rat' , 'rat');

SELECT *
FROM
    type_tsvector
WHERE
    type_tsvector.text @@ TO_TSQUERY('rat');

/* UUID 通用唯一标识符 */
-- 生成UUID
SELECT gen_random_uuid();

CREATE TABLE type_uuid
(
    -- 通用唯一标识符
    uuid UUID DEFAULT gen_random_uuid() PRIMARY KEY
);

/* XML 类型 */
CREATE TABLE type_xml
(
    -- XML类型
    xml XML
);

-- 创建XML类型
INSERT
INTO
    type_xml
VALUES
    ('
    <a>123</a>
    ');

SELECT *
FROM
    type_xml;

/* ARRAY 数组 */
-- TYPE[]的形式创建
-- 创建数组
SELECT ARRAY [1,2,3];
-- 创建数组
SELECT '{1,2,3}'::INT[];

CREATE TABLE type_array
(
    -- 数组
    intArr INT[]
);

-- 插入
INSERT
INTO
    type_array
VALUES
    ('{1,2,3}');

-- 数组索引
SELECT
    intArr[1]
FROM
    type_array;

-- 数组搜索
SELECT
    intArr
FROM
    type_array
WHERE
    1 = ANY (intArr);

-- 数组修改
UPDATE
    type_array
SET
    intArr[2] = 4
RETURNING *;


/* 复合类型 */
CREATE TYPE COMPOSITE AS
(
    -- 字段
    id   INT ,
    name TEXT
);

-- 创建复合类型
CREATE TABLE type_composite
(
    -- 复合类型
    testType COMPOSITE
);

-- 添加
INSERT
INTO
    type_composite
VALUES
    (ROW (1,'a'));

-- 查询
SELECT
    (testType).name
FROM
    type_composite;

/* RANGE 范围 */
-- []区间包含起始值及结束值
-- ()区间不包含起始值及结束值
-- [)区间包含起始值不包含结束值
-- (]区间不包含起始值包含结束值
-- [a,)a和大于a的值
-- (,a)小于a的值

/* Multirange 多范围 */
-- Multirange 是一组范围的集合

-- 判断是否包含
SELECT '[1,2]'::INT4RANGE <@ '[0,5]'::INT4RANGE;

SELECT '[1,9]'::INT4RANGE @> 3;
-- 判断多范围是否包含
SELECT '{[1,5],[7,9]}'::INT4MULTIRANGE @> '[2,3]'::INT4RANGE;

-- 自定义范围类型
CREATE TYPE MY_RANGE AS RANGE
(
    SUBTYPE = TIME
);

SELECT MY_RANGE('10:00','11:00') @> '10:30'::TIME;


/* HSTORE 键值对 */
-- 启用扩展
CREATE EXTENSION hstore;
-- 关闭扩展
DROP EXTENSION hstore;

-- 创建键值对
CREATE TABLE type_hstore
(
    product_name VARCHAR ,
    -- 键值对
    hstore       HSTORE
);

-- 添加键值对
INSERT
INTO
    type_hstore(product_name , hstore)
VALUES
    ('Computer' , 'CPU=>2.5, Memory=>16G, Disk=>1T');

-- 查询
SELECT *
FROM
    type_hstore;

-- 查询特定键
SELECT
    -- 可以使用->或者[]获取键值
    hstore -> 'CPU'  AS cpu,
    hstore['Memory'] AS memory
FROM
    type_hstore;

/* 域类型 */
-- 自定义域类型
CREATE DOMAIN DOMAIN_INT AS INTEGER -- 基于指定类型
-- 检查约束
    CHECK (VALUE > 18);

-- 创建表
CREATE TABLE type_domain
(
    -- 自定义域类型
    age DOMAIN_INT
);

INSERT
INTO
    type_domain
VALUES
    -- 小于18会报错
    -- 必须通过自定义域类型的检查约束
    (20);
