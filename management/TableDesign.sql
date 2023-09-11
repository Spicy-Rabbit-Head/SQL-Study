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

-- 创建角色表
CREATE TABLE IF NOT EXISTS user_management.role
(
    -- 角色主键
    id          INTEGER PRIMARY KEY,
    -- 角色前缀
    role_prefix VARCHAR(45)  NOT NULL,
    -- 角色名
    role_name   VARCHAR(45)  NOT NULL,
    -- 角色描述
    role_desc   VARCHAR(100) NOT NULL
);

-- 创建用户角色外键表
CREATE TABLE IF NOT EXISTS user_management.user_role_link
(
    -- 主键id
    id      INTEGER PRIMARY KEY,
    -- 用户主键
    user_id INTEGER NOT NULL,
    -- 角色主键
    role_id INTEGER NOT NULL,
    -- 外键约束
    CONSTRAINT link_user FOREIGN KEY ( user_id ) REFERENCES user_management.user_data ( id )
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    CONSTRAINT link_role FOREIGN KEY ( role_id ) REFERENCES user_management.role ( id )
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

-- 创建菜单权限表
CREATE TABLE IF NOT EXISTS user_management.menu_permissions
(
    -- 菜单权限主键
    id        INTEGER PRIMARY KEY,
    -- 菜单名
    menu_name VARCHAR(45)  NOT NULL,
    -- 父菜单标识
    parent_id INTEGER      NOT NULL,
    -- 地址
    url       VARCHAR(100) NOT NULL,
    -- 菜单描述
    menu_desc VARCHAR(100) NOT NULL
);

-- 创建操作权限表
CREATE TABLE IF NOT EXISTS user_management.operation_permissions
(
    -- 操作权限主键
    id              INTEGER PRIMARY KEY,
    -- 操作名
    operation_name  VARCHAR(45)  NOT NULL,
    -- 权限名
    permission_name VARCHAR(45)  NOT NULL,
    -- 方法类型
    method_type     VARCHAR(45)  NOT NULL,
    -- 地址
    url             VARCHAR(100) NOT NULL,
    -- 操作描述
    operation_desc  VARCHAR(100) NOT NULL
);

-- 创建角色菜单权限外键表
CREATE TABLE IF NOT EXISTS user_management.role_menu_link
(
    -- 主键id
    id      INTEGER PRIMARY KEY,
    -- 角色主键
    role_id INTEGER NOT NULL,
    -- 菜单权限主键
    menu_id INTEGER NOT NULL,
    -- 外键约束
    CONSTRAINT link_role FOREIGN KEY ( role_id ) REFERENCES user_management.role ( id )
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    CONSTRAINT link_menu FOREIGN KEY ( menu_id ) REFERENCES user_management.menu_permissions ( id )
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

-- 创建角色操作权限外键表
CREATE TABLE IF NOT EXISTS user_management.role_operation_link
(
    -- 主键id
    id           INTEGER PRIMARY KEY,
    -- 角色主键
    role_id      INTEGER NOT NULL,
    -- 操作权限主键
    operation_id INTEGER NOT NULL,
    -- 外键约束
    CONSTRAINT link_role FOREIGN KEY ( role_id ) REFERENCES user_management.role ( id )
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    CONSTRAINT link_operation FOREIGN KEY ( operation_id ) REFERENCES user_management.operation_permissions ( id )
        ON DELETE CASCADE
        ON UPDATE CASCADE
);






