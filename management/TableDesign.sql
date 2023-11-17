/**
  全局枚举类型
 */
-- 创建保养周期枚举
CREATE TYPE MAINTENANCE_CYCLE AS ENUM ('月', '季', '半年', '年');


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
    id       SERIAL PRIMARY KEY,
    -- 用户名
    username VARCHAR(45)  NOT NULL,
    -- 密码
    password VARCHAR(200) NOT NULL,
    -- 邮箱
    email    VARCHAR(45),
    -- 通用唯一识别码
    uuid     VARCHAR(45)
);

-- 添加用户表注释
COMMENT ON TABLE user_management.user_data IS '用户表';
COMMENT ON COLUMN user_management.user_data.id IS '用户主键';
COMMENT ON COLUMN user_management.user_data.username IS '用户名';
COMMENT ON COLUMN user_management.user_data.password IS '密码';
COMMENT ON COLUMN user_management.user_data.email IS '邮箱';
COMMENT ON COLUMN user_management.user_data.uuid IS '通用唯一识别码';

-- 添加测试用户
INSERT
INTO
    user_management.user_data
    (username, password)
VALUES
    ('test1', '$2a$10$jA7HB7UEwmmq81Sty3frAegQHbbsuHH.JFzqMi8M1Ry96TWjXgE6i');

-- 创建角色表
CREATE TABLE IF NOT EXISTS user_management.role
(
    -- 角色主键
    id          SERIAL PRIMARY KEY,
    -- 角色前缀
    role_prefix VARCHAR(45)  NOT NULL,
    -- 角色名
    role_name   VARCHAR(45)  NOT NULL,
    -- 角色描述
    role_desc   VARCHAR(100) NOT NULL
);

-- 添加角色表注释
COMMENT ON TABLE user_management.role IS '角色表';
COMMENT ON COLUMN user_management.role.id IS '角色主键';
COMMENT ON COLUMN user_management.role.role_prefix IS '角色前缀';
COMMENT ON COLUMN user_management.role.role_name IS '角色名';
COMMENT ON COLUMN user_management.role.role_desc IS '角色描述';

-- 添加测试角色
INSERT
INTO
    user_management.role
    (role_prefix, role_name, role_desc)
VALUES
    ('TEST', 'USER', '用户测试');

-- 创建用户角色外键表
CREATE TABLE IF NOT EXISTS user_management.user_role_link
(
    -- 主键id
    id      SERIAL PRIMARY KEY,
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

-- 添加用户角色外键表注释
COMMENT ON TABLE user_management.user_role_link IS '用户角色外键表';
COMMENT ON COLUMN user_management.user_role_link.id IS '主键id';
COMMENT ON COLUMN user_management.user_role_link.user_id IS '用户主键';
COMMENT ON COLUMN user_management.user_role_link.role_id IS '角色主键';

-- 添加用户角色关联
INSERT
INTO
    user_management.user_role_link
    (user_id, role_id)
VALUES
    (1, 1);

-- 创建菜单权限表
CREATE TABLE IF NOT EXISTS user_management.menu_permissions
(
    -- 菜单权限主键
    id             SERIAL PRIMARY KEY,
    -- 分组
    group_name     VARCHAR(45)  NOT NULL,
    -- 菜单名
    menu_name      VARCHAR(45)  NOT NULL,
    -- 父菜单标识
    parent_id      INTEGER      NOT NULL,
    -- 地址
    path           VARCHAR(100) NOT NULL,
    -- 组件地址
    component_path VARCHAR(100),
    -- 图标
    icon           VARCHAR(45),
    -- 菜单描述
    menu_desc      VARCHAR(100) NOT NULL
);

-- 创建菜单权限表注释
COMMENT ON TABLE user_management.menu_permissions IS '菜单权限表';
COMMENT ON COLUMN user_management.menu_permissions.id IS '菜单权限主键';
COMMENT ON COLUMN user_management.menu_permissions.group_name IS '分组';
COMMENT ON COLUMN user_management.menu_permissions.menu_name IS '菜单名';
COMMENT ON COLUMN user_management.menu_permissions.parent_id IS '父菜单标识';
COMMENT ON COLUMN user_management.menu_permissions.path IS '地址';
COMMENT ON COLUMN user_management.menu_permissions.icon IS '图标';
COMMENT ON COLUMN user_management.menu_permissions.menu_desc IS '菜单描述';

-- 添加测试菜单权限
INSERT
INTO
    user_management.menu_permissions
    (group_name, menu_name, parent_id, path, component_path, icon, menu_desc)
VALUES
    ('主页', 'Home', 0, '/maintenance-schedule', 'homePage/PersonalHomePage', NULL, '主页'),
    ('保养相关', 'MaintenanceSchedule', 0, '/maintenance-schedule', NULL, NULL, '保养排程'),
    ('保养相关', 'Schedule', 2, '/schedule', 'maintenanceSchedule/Schedule', NULL, '保养排程机台'),
    ('保养相关', 'ScheduleOther', 2, '/schedule-other', 'maintenanceSchedule/ScheduleOther', NULL, '保養排程其他'),
    ('保养相关', 'MaintenancePreparation', 0, '/maintenance-preparation', NULL, NULL, '保养准备'),
    ('保养相关', 'PrepareSupplies', 5, '/prepare-supplies', 'maintenancePreparation/PrepareSupplies', NULL, '备品准备');

-- 创建角色菜单权限外键表
CREATE TABLE IF NOT EXISTS user_management.role_menu_link
(
    -- 主键id
    id      SERIAL PRIMARY KEY,
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

-- 添加角色菜单权限外键表注释
COMMENT ON TABLE user_management.role_menu_link IS '角色菜单权限外键表';
COMMENT ON COLUMN user_management.role_menu_link.id IS '主键id';
COMMENT ON COLUMN user_management.role_menu_link.role_id IS '角色主键';
COMMENT ON COLUMN user_management.role_menu_link.menu_id IS '菜单权限主键';

-- 添加测试角色菜单权限关联
INSERT
INTO
    user_management.role_menu_link
    (role_id, menu_id)
VALUES
    (1, 1),
    (1, 2),
    (1, 3),
    (1, 4),
    (1, 5),
    (1, 6);

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

-- 添加操作权限表注释
COMMENT ON TABLE user_management.operation_permissions IS '操作权限表';
COMMENT ON COLUMN user_management.operation_permissions.id IS '操作权限主键';
COMMENT ON COLUMN user_management.operation_permissions.operation_name IS '操作名';
COMMENT ON COLUMN user_management.operation_permissions.permission_name IS '权限名';
COMMENT ON COLUMN user_management.operation_permissions.method_type IS '方法类型';
COMMENT ON COLUMN user_management.operation_permissions.url IS '地址';
COMMENT ON COLUMN user_management.operation_permissions.operation_desc IS '操作描述';

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

-- 添加角色操作权限外键表注释
COMMENT ON TABLE user_management.role_operation_link IS '角色操作权限外键表';
COMMENT ON COLUMN user_management.role_operation_link.id IS '主键id';
COMMENT ON COLUMN user_management.role_operation_link.role_id IS '角色主键';
COMMENT ON COLUMN user_management.role_operation_link.operation_id IS '操作权限主键';

-- 创建成员表
CREATE TABLE IF NOT EXISTS user_management.member
(
    -- 成员名
    member_name VARCHAR NOT NULL
);

-- 添加成员表注释
COMMENT ON TABLE user_management.member IS '成员表';
COMMENT ON COLUMN user_management.member.member_name IS '成员名';

-- 添加测试成员
INSERT
INTO
    user_management.member
VALUES
    ('李浩勇'),
    ('刘佳辉'),
    ('孙楠'),
    ('王斌'),
    ('王立虎'),
    ('王璇'),
    ('伍英贤'),
    ('郁华'),
    ('赵子奎'),
    ('全员');


-- 创建保养管理架构
CREATE SCHEMA IF NOT EXISTS maintenance_management;

-- 创建保养排程数据
CREATE TABLE IF NOT EXISTS maintenance_management.scheduling_data
(
    -- 主键id
    id                     SERIAL PRIMARY KEY,
    -- 车间
    workshop               VARCHAR(45) NOT NULL,
    -- 设备编号
    equipment_number       VARCHAR(45) NOT NULL,
    -- 设备型号
    equipment_model_number VARCHAR(80) NOT NULL,
    -- 设备名称
    equipment_name         VARCHAR(45) NOT NULL,
    -- 保养周期
    maintenance_cycle      VARCHAR(45) NOT NULL,
    -- 计划时间
    plan_time              DATE        NOT NULL,
    -- 排定时间
    scheduling_time        VARCHAR(45),
    -- 负责人
    person_in_charge       VARCHAR(45),
    -- 成员
    member                 VARCHAR(45),
    -- 作业时间
    operation_time         DATE,
    -- 排程状态
    scheduling_status      BOOLEAN     NOT NULL
);

-- 添加排程数据表注释
COMMENT ON TABLE maintenance_management.scheduling_data IS '排程数据表';
COMMENT ON COLUMN maintenance_management.scheduling_data.id IS '主键id';
COMMENT ON COLUMN maintenance_management.scheduling_data.equipment_number IS '设备编号';
COMMENT ON COLUMN maintenance_management.scheduling_data.equipment_model_number IS '设备型号';
COMMENT ON COLUMN maintenance_management.scheduling_data.equipment_name IS '设备名称';
COMMENT ON COLUMN maintenance_management.scheduling_data.maintenance_cycle IS '保养周期';
COMMENT ON COLUMN maintenance_management.scheduling_data.plan_time IS '计划时间';
COMMENT ON COLUMN maintenance_management.scheduling_data.scheduling_time IS '排定时间';
COMMENT ON COLUMN maintenance_management.scheduling_data.person_in_charge IS '负责人';
COMMENT ON COLUMN maintenance_management.scheduling_data.member IS '成员';
COMMENT ON COLUMN maintenance_management.scheduling_data.operation_time IS '作业时间';
COMMENT ON COLUMN maintenance_management.scheduling_data.scheduling_status IS '排程状态';

-- 添加测试排程数据
INSERT
INTO
    maintenance_management.scheduling_data
    (workshop,
     equipment_number,
     equipment_model_number,
     equipment_name,
     maintenance_cycle,
     plan_time,
     scheduling_time,
     person_in_charge,
     member,
     scheduling_status)
VALUES
    ('製造一部車間', 'N1001', '机台型号', '排片', '月', '2020-01-11', '上午', '张三', '李四', TRUE),
    ('製造二部車間', 'N1002', '机台型号', '排片', '月', '2020-01-12', '上午', '张三', '李四', FALSE),
    ('製造三部車間', 'N1003', '机台型号', '排片', '月', '2020-01-13', '上午', '张三', '李四', FALSE),
    ('製造一部車間', 'N1004', '机台型号', '排片', '月', '2020-01-14', '上午', '张三', '李四', TRUE),
    ('製造二部車間', 'N1005', '机台型号', '排片', '月', '2020-01-15', '上午', '张三', '李四', FALSE),
    ('製造三部車間', 'N1006', '机台型号', '排片', '月', '2020-01-16', '上午', '张三', '李四', FALSE),
    ('製造一部車間', 'N1007', '机台型号', '排片', '月', '2020-01-17', '上午', '张三', '李四', TRUE),
    ('製造二部車間', 'N1008', '机台型号', '排片', '月', '2020-01-18', '上午', '张三', '李四', FALSE),
    ('製造三部車間', 'N1009', '机台型号', '排片', '月', '2020-01-19', '上午', '张三', '李四', FALSE),
    ('製造一部車間', 'N1010', '机台型号', '排片', '月', '2020-01-20', '上午', '张三', '李四', TRUE),
    ('製造二部車間', 'N1011', '机台型号', '排片', '月', '2020-01-21', '上午', '张三', '李四', FALSE),
    ('製造三部車間', 'N1012', '机台型号', '排片', '月', '2020-01-22', '上午', '张三', '李四', FALSE),
    ('製造一部車間', 'N1013', '机台型号', '排片', '月', '2020-01-23', '上午', '张三', '李四', TRUE),
    ('製造二部車間', 'N1014', '机台型号', '排片', '月', '2020-01-24', '上午', '张三', '李四', FALSE),
    ('製造三部車間', 'N1015', '机台型号', '排片', '月', '2020-01-25', '上午', '张三', '李四', FALSE),
    ('製造一部車間', 'N1016', '机台型号', '排片', '月', '2020-01-26', '上午', '张三', '李四', TRUE),
    ('製造二部車間', 'N1017', '机台型号', '排片', '月', '2020-01-27', '上午', '张三', '李四', FALSE),
    ('製造三部車間', 'N1018', '机台型号', '排片', '月', '2020-01-28', '上午', '张三', '李四', FALSE),
    ('製造一部車間', 'N1019', '机台型号', '排片', '月', '2020-01-29', '上午', '张三', '李四', TRUE),
    ('製造二部車間', 'N1020', '机台型号', '排片', '月', '2020-01-30', '上午', '张三', '李四', FALSE),
    ('製造三部車間', 'N1021', '机台型号', '排片', '月', '2020-01-31', '上午', '张三', '李四', FALSE),
    ('製造一部車間', 'N1022', '机台型号', '排片', '月', '2020-02-01', '上午', '张三', '李四', TRUE),
    ('製造二部車間', 'N1023', '机台型号', '排片', '月', '2020-02-02', '上午', '张三', '李四', FALSE),
    ('製造三部車間', 'N1024', '机台型号', '排片', '月', '2020-02-03', '上午', '张三', '李四', FALSE);


-- 创建资料管理架构
CREATE SCHEMA IF NOT EXISTS information_management;

-- 创建保养周期规则数据表
CREATE TABLE IF NOT EXISTS information_management.maintenance_cycle_rules
(
    -- 规则名
    rule_name VARCHAR(45)                                          NOT NULL UNIQUE,
    -- 规则描述
    rule_desc VARCHAR(100)                                         NOT NULL,
    -- 月份集合
    months    MAINTENANCE_CYCLE[]
        CONSTRAINT months_length CHECK (CARDINALITY(months) <= 12) NOT NULL
);

-- 添加规则数据表注释
COMMENT ON TABLE information_management.maintenance_cycle_rules IS '规则数据表';
COMMENT ON COLUMN information_management.maintenance_cycle_rules.rule_name IS '规则名';
COMMENT ON COLUMN information_management.maintenance_cycle_rules.rule_desc IS '规则描述';
COMMENT ON COLUMN information_management.maintenance_cycle_rules.months IS '月份集合,保养周期的枚举数组';

-- 添加测试规则数据
INSERT
INTO
    information_management.maintenance_cycle_rules
    (rule_name, rule_desc, months)
VALUES
    ('规则一',
     '一月年保的规则',
     ARRAY ['年','月','月','季','月','月','半年','月','月','季','月','月']::MAINTENANCE_CYCLE[]),
    ('规则二',
     '二月年保的规则',
     ARRAY ['月','年','月','月','季','月','月','半年','月','月','季','月']::MAINTENANCE_CYCLE[]),
    ('规则三',
     '三月年保的规则',
     ARRAY ['月','月','年','月','月','季','月','月','半年','月','月','季']::MAINTENANCE_CYCLE[]),
    ('规则四',
     '四月年保的规则',
     ARRAY ['季','月','月','年','月','月','季','月','月','半年','月','月']::MAINTENANCE_CYCLE[]),
    ('规则五',
     '五月年保的规则',
     ARRAY ['月','季','月','月','年','月','月','季','月','月','半年','月']::MAINTENANCE_CYCLE[]),
    ('规则六',
     '六月年保的规则',
     ARRAY ['月','月','季','月','月','年','月','月','季','月','月','半年']::MAINTENANCE_CYCLE[]),
    ('规则七',
     '七月年保的规则',
     ARRAY ['半年','月','月','季','月','月','年','月','月','季','月','月']::MAINTENANCE_CYCLE[]),
    ('规则八',
     '八月年保的规则',
     ARRAY ['月','半年','月','月','季','月','月','年','月','月','季','月']::MAINTENANCE_CYCLE[]),
    ('规则九',
     '九月年保的规则',
     ARRAY ['月','月','半年','月','月','季','月','月','年','月','月','季']::MAINTENANCE_CYCLE[]),
    ('规则十',
     '十月年保的规则',
     ARRAY ['季','月','月','半年','月','月','季','月','月','年','月','月']::MAINTENANCE_CYCLE[]),
    ('规则十一',
     '十一月年保的规则',
     ARRAY ['月','季','月','月','半年','月','月','季','月','月','年','月']::MAINTENANCE_CYCLE[]),
    ('规则十二',
     '十二月年保的规则',
     ARRAY ['月','月','季','月','月','半年','月','月','季','月','月','年']::MAINTENANCE_CYCLE[]);


-- 创建备品管理架构
CREATE SCHEMA IF NOT EXISTS spare_parts_management;

-- 创建备品数据表
CREATE TABLE IF NOT EXISTS spare_parts_management.spare_parts_data
(
    -- 主键id
    id                SERIAL PRIMARY KEY,
    -- 备品编号
    spare_part_number VARCHAR(45) NOT NULL,
    -- 备品料号
    part_number       VARCHAR(45),
    -- 备品名称
    spare_part_name   VARCHAR(45) NOT NULL,
    -- 品牌
    brand             VARCHAR(45),
    -- 图号
    drawing_number    VARCHAR(45),
    -- 图片链接
    image_link        VARCHAR(100),
    -- 价格
    price             VARCHAR(45) NOT NULL
);

-- 添加备品数据表注释
COMMENT ON TABLE spare_parts_management.spare_parts_data IS '备品数据表';
COMMENT ON COLUMN spare_parts_management.spare_parts_data.id IS '主键id';
COMMENT ON COLUMN spare_parts_management.spare_parts_data.spare_part_number IS '备品编号';
COMMENT ON COLUMN spare_parts_management.spare_parts_data.part_number IS '备品料号';
COMMENT ON COLUMN spare_parts_management.spare_parts_data.spare_part_name IS '备品名称';
COMMENT ON COLUMN spare_parts_management.spare_parts_data.brand IS '品牌';
COMMENT ON COLUMN spare_parts_management.spare_parts_data.drawing_number IS '图号';
COMMENT ON COLUMN spare_parts_management.spare_parts_data.image_link IS '图片链接';
COMMENT ON COLUMN spare_parts_management.spare_parts_data.price IS '价格';

-- 添加测试备品数据
INSERT
INTO
    spare_parts_management.spare_parts_data
    (spare_part_number, part_number, spare_part_name, brand, drawing_number, image_link, price)
VALUES
    ('N1001', '1001', '备品名称1', '品牌1', NULL, '图片链接', '100'),
    ('N1002', '1002', '备品名称2', '品牌1', '图号', '图片链接', '100'),
    ('N1003', '1003', '备品名称3', '品牌1', '图号', '图片链接', '100'),
    ('N1004', '1004', '备品名称4', '品牌2', '图号', '图片链接', '100'),
    ('N1005', '1005', '备品名称5', '品牌2', NULL, '图片链接', '100'),
    ('N1006', '1006', '备品名称6', '品牌3', '图号', '图片链接', '100'),
    ('N1007', '1007', '备品名称7', '品牌4', '图号', '图片链接', '100'),
    ('N1008', '1008', '备品名称8', '品牌4', NULL, '图片链接', '100'),
    ('N1009', '1009', '备品名称9', '品牌5', '图号', '图片链接', '100'),
    ('N1010', '1010', '备品名称10', '品牌5', '图号', '图片链接', '100'),
    ('N1011', '1011', '备品名称11', '品牌5', '图号', '图片链接', '100');



