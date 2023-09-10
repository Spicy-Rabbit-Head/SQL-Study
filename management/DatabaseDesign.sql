/*
 先执行当前文件创建数据库,
 切换数据库后再执行表创建文件
 */
-- 创建管理数据库
CREATE DATABASE management
    WITH
    -- 指定为UTF8编码
    ENCODING = 'UTF8'
    -- 指定数据库整理规则及排序规则为C
    LOCALE = 'C'
    -- 指定允许连接数据库
    ALLOW_CONNECTIONS = TRUE
    -- 连接数无限制
    CONNECTION LIMIT = -1;