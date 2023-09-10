/*
 先执行数据库创建文件,
 切换数据库后再执行当前文件
 */
-- 创建用户管理架构
CREATE SCHEMA IF NOT EXISTS user_management;

-- 创建用户表
CREATE TABLE IF NOT EXISTS user_management.user_data
(
    -- 用户主键
    id       INTEGER PRIMARY KEY,
    -- 用户名
    username VARCHAR(45) NOT NULL,
    -- 密码
    password VARCHAR(45) NOT NULL,
    -- 邮箱
    email    VARCHAR(45) NOT NULL,
    -- 通用唯一识别码
    uuid     VARCHAR(45) NOT NULL
);



