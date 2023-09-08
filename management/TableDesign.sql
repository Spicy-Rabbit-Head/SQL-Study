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

-- 创建用户架构(用户组)
CREATE SCHEMA IF NOT EXISTS user_management;



