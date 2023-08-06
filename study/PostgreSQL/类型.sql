/* POINT 二维点 */
CREATE TABLE test
(
    -- 基本二维构建块
    point POINT
);

-- 创建点
INSERT
INTO
    test
VALUES
    (POINT(1,2));

-- 创建点
INSERT
INTO
    test
VALUES
    -- x和y为各自坐标
    -- 未浮点数
    ('(0,3)');

SELECT *
FROM
    test;
DROP TABLE IF EXISTS test;


/* LINE 线 */
CREATE TABLE test
(
    -- 无限长的线
    line LINE
);

-- 创建线
INSERT
INTO
    test
VALUES
    (LINE(POINT(1,2),POINT(3,4)));

-- 创建线
INSERT
INTO
    test
VALUES
    -- {A,B,C}式输入
    ('{1,5,1}'),
    -- [(x1,y1),(x2,y2)]式输入
    ('((0,0),(1,1))');

SELECT *
FROM
    test;
DROP TABLE IF EXISTS test;

/* LINESTRING 线段 */
CREATE TABLE test
(
    -- 有限长的线段
    lseg LSEG
);

-- 创建线段
INSERT
INTO
    test
VALUES
    (LSEG(POINT(1,2),POINT(3,4)));

-- 创建线段
INSERT
INTO
    test
VALUES
    -- [(x1,y1),(x2,y2)]式或
    -- ((x1,y1),(x2,y2))式输入
    ('((0,0),(1,1))');

SELECT *
FROM
    test;
DROP TABLE IF EXISTS test;

/* BOX 矩形 */
CREATE TABLE test
(
    -- 矩形框
    box BOX
);

-- 创建矩形
INSERT
INTO
    test
VALUES
    (BOX(POINT(1,2),POINT(3,4)));

-- 创建矩形
INSERT
INTO
    test
VALUES
    -- [(x1,y1),(x2,y2)]式
    ('((0,0),(1,1))');
-- 按右上角和左下角的储存顺序

SELECT *
FROM
    test;
DROP TABLE IF EXISTS test;

/* PATH 路径 */
CREATE TABLE test
(
    -- 路径
    path PATH
);

-- 创建路径
INSERT
INTO
    test
VALUES
    -- [(x1,y1),(x2,y2)]式或
    -- ((x1,y1),(x2,y2))式输入
    -- ()表示不封闭,[]表示封闭
    ('((1,2),(3,4))');

SELECT *
FROM
    test;
DROP TABLE IF EXISTS test;

/* POLYGON 多边形 */
CREATE TABLE test
(
    -- 多边形
    polygon POLYGON
);

-- 创建多边形
INSERT
INTO
    test
VALUES
    -- ((x1,y1),(xn,yn))式输入
    ('((1,2),(3,4))');

SELECT *
FROM
    test;
DROP TABLE IF EXISTS test;

/* CIRCLE 圆 */
CREATE TABLE test
(
    -- 圆
    circle CIRCLE
);

-- 创建圆
INSERT
INTO
    test
VALUES
    -- <(x,y),r>式或
    -- ((x,y),r)式输入
    ('((1,2),3)');

SELECT *
FROM
    test;
DROP TABLE IF EXISTS test;

/* CIDR 网络地址 */
CREATE TABLE test
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
    test
    (cidr , inet , macaddr , macaddr8)
VALUES
    -- x.x.x.x/y式输入
    -- y为网络掩码位数
    ('192.168.1.0/24' , '192.168.1.0/24' , '08:00:2b:01:02:03' , '08:00:2b:01:02:03:04:05');

SELECT *
FROM
    test;
DROP TABLE IF EXISTS test;

/* TSVECTOR 文本搜索向量 */
CREATE TABLE test
(
    -- 文本搜索向量
    text TSVECTOR ,
    -- 文本搜索查询
    ts   TSQUERY
);

-- 创建文本搜索向量
INSERT
INTO
    test
    (text , ts)
VALUES
    ('a fat cat sat on a mat and ate a fat rat' , 'rat');

SELECT *
FROM
    test
WHERE
    test.text @@ TO_TSQUERY('rat');

DROP TABLE IF EXISTS test;

/* UUID 通用唯一标识符 */
-- 生成UUID
SELECT gen_random_uuid();

CREATE TABLE test
(
    -- 通用唯一标识符
    uuid UUID DEFAULT gen_random_uuid() PRIMARY KEY
);

DROP TABLE IF EXISTS test;

/* XML 类型 */
CREATE TABLE test
(
    -- XML类型
    xml XML
);

-- 创建XML类型
INSERT
INTO
    test
VALUES
    ('<a>123</a>');

SELECT *
FROM
    test;
DROP TABLE IF EXISTS test;

/* ARRAY 数组 */
-- TYPE[]的形式创建
-- 创建数组
SELECT ARRAY [1,2,3];
-- 创建数组
SELECT '{1,2,3}'::INT[];
CREATE TABLE test
(
    -- 数组
    intArr INT[]
);
INSERT
INTO
    test
VALUES
    ('{1,2,3}');
-- 数组索引
SELECT
    intArr[1]
FROM
    test;
-- 数组搜索
SELECT
    intArr
FROM
    test
WHERE
    1 = ANY (intArr);
-- 数组修改
UPDATE
    test
SET
    intArr[2] = 4
RETURNING *;