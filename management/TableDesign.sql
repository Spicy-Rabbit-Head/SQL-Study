/**
  全局枚举类型
 */
-- 创建保养周期枚举
CREATE TYPE MAINTENANCE_CYCLE AS ENUM ('月', '季度', '半年', '年');

/*
 先执行数据库创建文件,
 切换数据库后再执行当前文件
 */
-- 创建用户管理架构
CREATE SCHEMA IF NOT EXISTS user_management;

-- 创建用户归属
CREATE TYPE BELONG AS ENUM (
    '领导',
    '保养',
    '换靶'
    );

-- 创建用户表
CREATE TABLE IF NOT EXISTS user_management.user_data
(
    -- 用户主键
    id       SERIAL PRIMARY KEY,
    -- 用户名
    username VARCHAR(45)  NOT NULL,
    -- 密码
    password VARCHAR(200) NOT NULL,
    -- 姓名
    name     VARCHAR(45)  NOT NULL,
    -- 归属
    belong   BELONG       NOT NULL,
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
COMMENT ON COLUMN user_management.user_data.name IS '姓名';
COMMENT ON COLUMN user_management.user_data.belong IS '归属';
COMMENT ON COLUMN user_management.user_data.email IS '邮箱';
COMMENT ON COLUMN user_management.user_data.uuid IS '通用唯一识别码';

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
    (1, 1),
    (15, 1);

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
COMMENT ON COLUMN user_management.menu_permissions.component_path IS '组件地址';
COMMENT ON COLUMN user_management.menu_permissions.icon IS '图标';
COMMENT ON COLUMN user_management.menu_permissions.menu_desc IS '菜单描述';

-- 添加测试菜单权限
INSERT
INTO
    user_management.menu_permissions
    (group_name, menu_name, parent_id, path, component_path, icon, menu_desc)
VALUES
    ('主页', 'Home', 0, '/maintenance-schedule', 'homePage/Home', NULL, '主页'),
    ('保养相关', 'MaintenanceSchedule', 0, '/maintenance-schedule', NULL, NULL, '保养排程'),
    ('保养相关', 'Schedule', 2, '/schedule', 'maintenanceSchedule/Schedule', NULL, '保养排程机台'),
    ('保养相关', 'ScheduleOther', 2, '/schedule-other', 'maintenanceSchedule/ScheduleOther', NULL, '保養排程其他'),
    ('保养相关', 'MaintenancePreparation', 0, '/maintenance-preparation', NULL, NULL, '保养准备'),
    ('保养相关', 'PrepareSupplies', 5, '/prepare-supplies', 'maintenancePreparation/PrepareSupplies', NULL, '备品准备'),
    ('资料相关', 'InformationManagement', 0, '/information-management', NULL, NULL, '资料管理'),
    ('资料相关', 'DeviceData', 7, '/device-data', 'information-management/DeviceData', NULL, '设备数据');


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
    (1, 6),
    (1, 7),
    (1, 8);

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
    scheduling_status      BOOLEAN
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

-- 创建模组排程数据
CREATE TABLE IF NOT EXISTS maintenance_management.module_scheduling
(
    -- 主键id
    id                    SERIAL PRIMARY KEY,
    -- 模组名称
    module_name           VARCHAR(45) NOT NULL,
    -- 模组编号
    module_number         VARCHAR(45) NOT NULL,
    -- 保养数量
    maintenance_quantity  SMALLINT    NOT NULL,
    -- 模组型号
    model_number          VARCHAR(80) NOT NULL,
    -- 保养人员
    maintenance_personnel VARCHAR(45),
    -- 排定保养时间
    scheduling_time       VARCHAR(45)
);

-- 添加模组排程数据表注释
COMMENT ON TABLE maintenance_management.module_scheduling IS '模组排程数据表';
COMMENT ON COLUMN maintenance_management.module_scheduling.id IS '主键id';
COMMENT ON COLUMN maintenance_management.module_scheduling.module_name IS '模组名称';
COMMENT ON COLUMN maintenance_management.module_scheduling.module_number IS '模组编号';
COMMENT ON COLUMN maintenance_management.module_scheduling.maintenance_quantity IS '保养数量';
COMMENT ON COLUMN maintenance_management.module_scheduling.model_number IS '模组型号';
COMMENT ON COLUMN maintenance_management.module_scheduling.maintenance_personnel IS '成员';
COMMENT ON COLUMN maintenance_management.module_scheduling.scheduling_time IS '排定保养时间';

-- 创建非例行事项数据表
CREATE TABLE IF NOT EXISTS maintenance_management.non_routine_matters_scheduling
(
    -- 主键id
    id                  SERIAL PRIMARY KEY,
    -- 事项名称
    matters_name        VARCHAR(45)  NOT NULL,
    -- 事项描述
    matters_description VARCHAR(100) NOT NULL,
    -- 成员
    member              VARCHAR(45),
    -- 验收佐证
    acceptance_evidence VARCHAR(45),
    -- 事项时间
    matters_time        VARCHAR(45)
);

-- 添加非例行事项数据表注释
COMMENT ON TABLE maintenance_management.non_routine_matters_scheduling IS '非例行事项数据表';
COMMENT ON COLUMN maintenance_management.non_routine_matters_scheduling.id IS '主键id';
COMMENT ON COLUMN maintenance_management.non_routine_matters_scheduling.matters_name IS '事项名称';
COMMENT ON COLUMN maintenance_management.non_routine_matters_scheduling.matters_description IS '事项描述';
COMMENT ON COLUMN maintenance_management.non_routine_matters_scheduling.member IS '成员';
COMMENT ON COLUMN maintenance_management.non_routine_matters_scheduling.matters_time IS '事项时间';

-- 创建资料管理架构
CREATE SCHEMA IF NOT EXISTS information_management;

-- 创建保养规则月份集合域类型
CREATE DOMAIN information_management.REGULAR_MONTH_COLLECTION AS MAINTENANCE_CYCLE[]
    CONSTRAINT months_length CHECK (CARDINALITY(VALUE) <= 12);

-- 创建保养项目枚举类型
CREATE TYPE information_management.MAINTENANCE_ITEM_TYPE AS ENUM ('计划性','预测性');

-- 创建保养周期规则数据表
CREATE TABLE IF NOT EXISTS information_management.maintenance_cycle_rules
(
    -- 规则名
    rule_name VARCHAR(45) PRIMARY KEY,
    -- 规则描述
    rule_desc VARCHAR(100)                                    NOT NULL,
    -- 月份集合
    months    information_management.REGULAR_MONTH_COLLECTION NOT NULL
);

-- 添加规则数据表注释
COMMENT ON TABLE information_management.maintenance_cycle_rules IS '规则数据表';
COMMENT ON COLUMN information_management.maintenance_cycle_rules.rule_name IS '规则名';
COMMENT ON COLUMN information_management.maintenance_cycle_rules.rule_desc IS '规则描述';
COMMENT ON COLUMN information_management.maintenance_cycle_rules.months IS '月份集合,保养周期的枚举数组';

-- 创建设备资料数据表
CREATE TABLE IF NOT EXISTS information_management.device_data
(
    -- 设备编号
    device_number               VARCHAR(45) PRIMARY KEY,
    -- 设备名称
    device_name                 VARCHAR(45) NOT NULL,
    -- 设备型号
    device_model                VARCHAR(80) NOT NULL,
    -- 制作厂商
    manufacturer                VARCHAR(45) NOT NULL,
    -- 车间
    workshop                    VARCHAR(45) NOT NULL,
    -- 站别
    station                     VARCHAR(45) NOT NULL,
    -- 位置
    location                    VARCHAR(45) NOT NULL,
    -- 设备状态
    device_status               VARCHAR(45) NOT NULL,
    -- 是否有效
    is_valid                    BOOLEAN     NOT NULL,
    -- 保养周期规则名
    rule_name                   VARCHAR(45),
    -- 启用日期
    enable_date                 SMALLINT
        CHECK (enable_date BETWEEN 1 AND 28),
    -- 保养基准文号
    benchmark_document_number   VARCHAR(45),
    -- OIS文号
    ois_document_number         VARCHAR(45),
    -- 每日设备巡检基准
    device_inspection_benchmark VARCHAR(45),
    -- 变更日期
    change_date                 TIMESTAMP   NOT NULL
);

-- 添加机台资料数据表注释
COMMENT ON TABLE information_management.device_data IS '机台资料数据表';
COMMENT ON COLUMN information_management.device_data.device_number IS '设备编号';
COMMENT ON COLUMN information_management.device_data.device_name IS '设备名称';
COMMENT ON COLUMN information_management.device_data.device_model IS '设备型号';
COMMENT ON COLUMN information_management.device_data.manufacturer IS '制作厂商';
COMMENT ON COLUMN information_management.device_data.workshop IS '车间';
COMMENT ON COLUMN information_management.device_data.station IS '站别';
COMMENT ON COLUMN information_management.device_data.location IS '位置';
COMMENT ON COLUMN information_management.device_data.device_status IS '设备状态';
COMMENT ON COLUMN information_management.device_data.is_valid IS '是否有效';
COMMENT ON COLUMN information_management.device_data.rule_name IS '保养周期规则名';
COMMENT ON COLUMN information_management.device_data.enable_date IS '启用日期';
COMMENT ON COLUMN information_management.device_data.benchmark_document_number IS '保养基准文号';
COMMENT ON COLUMN information_management.device_data.ois_document_number IS 'OIS文号';
COMMENT ON COLUMN information_management.device_data.device_inspection_benchmark IS '每日设备巡检基准';
COMMENT ON COLUMN information_management.device_data.change_date IS '变更日期';

-- 创建保养基准数据表
CREATE TABLE IF NOT EXISTS information_management.maintenance_benchmark_document
(
    -- 保养基准文号
    benchmark_document_number VARCHAR(45) PRIMARY KEY,
    -- 保养基准描述
    document_desc             VARCHAR(100) NOT NULL,
    -- 站别
    station                   VARCHAR(45)  NOT NULL,
    -- 版本
    version                   VARCHAR(45)  NOT NULL,
    -- 文件地址
    file_address              VARCHAR(100) NOT NULL,
    -- 保养项目
    item_number               SMALLINT[],
    -- 变更日期
    change_date               TIMESTAMP    NOT NULL
);

-- 添加保养基准数据表注释
COMMENT ON TABLE information_management.maintenance_benchmark_document IS '保养基准数据表';
COMMENT ON COLUMN information_management.maintenance_benchmark_document.benchmark_document_number IS '保养基准文号';
COMMENT ON COLUMN information_management.maintenance_benchmark_document.document_desc IS '保养基准描述';
COMMENT ON COLUMN information_management.maintenance_benchmark_document.station IS '站别';
COMMENT ON COLUMN information_management.maintenance_benchmark_document.version IS '版本';
COMMENT ON COLUMN information_management.maintenance_benchmark_document.file_address IS '文件地址';
COMMENT ON COLUMN information_management.maintenance_benchmark_document.item_number IS '保养项目';
COMMENT ON COLUMN information_management.maintenance_benchmark_document.change_date IS '变更日期';

-- 创建OIS数据表
CREATE TABLE IF NOT EXISTS information_management.ois_document
(
    -- OIS文号
    ois_document_number VARCHAR(45) PRIMARY KEY,
    -- OIS描述
    document_desc       VARCHAR(100) NOT NULL,
    -- 站别
    station             VARCHAR(45)  NOT NULL,
    -- 版本
    version             VARCHAR(45)  NOT NULL,
    -- 文件地址
    file_address        VARCHAR(100) NOT NULL,
    -- 变更日期
    change_date         TIMESTAMP    NOT NULL
);

-- 添加OIS数据表注释
COMMENT ON TABLE information_management.ois_document IS 'OIS数据表';
COMMENT ON COLUMN information_management.ois_document.ois_document_number IS 'OIS文号';
COMMENT ON COLUMN information_management.ois_document.document_desc IS 'OIS描述';
COMMENT ON COLUMN information_management.ois_document.station IS '站别';
COMMENT ON COLUMN information_management.ois_document.version IS '版本';
COMMENT ON COLUMN information_management.ois_document.file_address IS '文件地址';
COMMENT ON COLUMN information_management.ois_document.change_date IS '变更日期';

-- 创建设备巡检基准数据表
CREATE TABLE IF NOT EXISTS information_management.device_inspection_document
(
    -- 设备巡检基准
    device_inspection_benchmark VARCHAR(45) PRIMARY KEY,
    -- 设备巡检基准描述
    document_desc               VARCHAR(100) NOT NULL,
    -- 站别
    station                     VARCHAR(45)  NOT NULL,
    -- 版本
    version                     VARCHAR(45)  NOT NULL,
    -- 文件地址
    file_address                VARCHAR(100) NOT NULL,
    -- 变更日期
    change_date                 TIMESTAMP    NOT NULL
);

-- 添加设备巡检基准数据表注释
COMMENT ON TABLE information_management.device_inspection_document IS '设备巡检基准数据表';
COMMENT ON COLUMN information_management.device_inspection_document.device_inspection_benchmark IS '设备巡检基准';
COMMENT ON COLUMN information_management.device_inspection_document.document_desc IS '设备巡检基准描述';
COMMENT ON COLUMN information_management.device_inspection_document.station IS '站别';
COMMENT ON COLUMN information_management.device_inspection_document.version IS '版本';
COMMENT ON COLUMN information_management.device_inspection_document.file_address IS '文件地址';
COMMENT ON COLUMN information_management.device_inspection_document.change_date IS '变更日期';

-- 创建保养项目数据表
CREATE TABLE IF NOT EXISTS information_management.maintenance_item
(
    -- ID
    id                SERIAL PRIMARY KEY,
    -- 项目编号
    item_number       SMALLINT                                     NOT NULL,
    -- 机台型号
    device_model      VARCHAR(80)                                  NOT NULL,
    -- 保养项目
    maintenance_item  VARCHAR(45)                                  NOT NULL,
    -- 保养项目描述
    item_desc         VARCHAR(100)                                 NOT NULL,
    -- 项目类型
    item_type         information_management.MAINTENANCE_ITEM_TYPE NOT NULL,
    -- 保养周期
    maintenance_cycle MAINTENANCE_CYCLE                            NOT NULL,
    -- 是否是模组
    is_module         BOOLEAN                                      NOT NULL,
    -- 备品编号
    spare_part_number SMALLINT,
    -- 备品使用量
    quantity          SMALLINT
);

-- 添加保养项目数据表注释
COMMENT ON TABLE information_management.maintenance_item IS '保养项目数据表';
COMMENT ON COLUMN information_management.maintenance_item.id IS 'ID';
COMMENT ON COLUMN information_management.maintenance_item.item_number IS '项目编号';
COMMENT ON COLUMN information_management.maintenance_item.maintenance_item IS '保养项目';
COMMENT ON COLUMN information_management.maintenance_item.item_desc IS '保养项目描述';
COMMENT ON COLUMN information_management.maintenance_item.item_type IS '项目类型';
COMMENT ON COLUMN information_management.maintenance_item.maintenance_cycle IS '保养周期';
COMMENT ON COLUMN information_management.maintenance_item.is_module IS '是否是模组';
COMMENT ON COLUMN information_management.maintenance_item.spare_part_number IS '备品编号';
COMMENT ON COLUMN information_management.maintenance_item.quantity IS '备品使用量';


-- 创建备品管理架构
CREATE SCHEMA IF NOT EXISTS spare_parts_management;

-- 创建备品数据表
CREATE TABLE IF NOT EXISTS spare_parts_management.spare_parts_data
(
    -- 备品编号
    spare_part_number SERIAL PRIMARY KEY,
    -- 备品料号
    part_number       VARCHAR(45),
    -- 备品名称
    spare_part_name   VARCHAR(45)    NOT NULL UNIQUE,
    -- 品牌
    brand             VARCHAR(45),
    -- 图号
    drawing_number    VARCHAR(45),
    -- 图片链接
    image_link        VARCHAR(100),
    -- 价格
    price             DECIMAL(10, 2) NOT NULL
);

-- 添加备品数据表注释
COMMENT ON TABLE spare_parts_management.spare_parts_data IS '备品数据表';
COMMENT ON COLUMN spare_parts_management.spare_parts_data.spare_part_number IS '备品编号';
COMMENT ON COLUMN spare_parts_management.spare_parts_data.part_number IS '备品料号';
COMMENT ON COLUMN spare_parts_management.spare_parts_data.spare_part_name IS '备品名称';
COMMENT ON COLUMN spare_parts_management.spare_parts_data.brand IS '品牌';
COMMENT ON COLUMN spare_parts_management.spare_parts_data.drawing_number IS '图号';
COMMENT ON COLUMN spare_parts_management.spare_parts_data.image_link IS '图片链接';
COMMENT ON COLUMN spare_parts_management.spare_parts_data.price IS '价格';

-- 项目费用数据表
CREATE TABLE IF NOT EXISTS spare_parts_management.item_cost
(
    -- 主键id
    id                SERIAL PRIMARY KEY,
    -- 设备编号
    device_number     VARCHAR(45)       NOT NULL,
    -- 保养周期
    maintenance_cycle MAINTENANCE_CYCLE NOT NULL,
    -- 保养项目
    maintenance_item  VARCHAR(45)       NOT NULL,
    -- 备品名称
    spare_part_name   VARCHAR(45)       NOT NULL,
    -- 备品使用量
    quantity          SMALLINT          NOT NULL
);

-- 添加项目费用数据表注释
COMMENT ON TABLE spare_parts_management.item_cost IS '项目费用数据表';
COMMENT ON COLUMN spare_parts_management.item_cost.device_number IS '设备编号';
COMMENT ON COLUMN spare_parts_management.item_cost.maintenance_cycle IS '保养周期';
COMMENT ON COLUMN spare_parts_management.item_cost.maintenance_item IS '保养项目';
COMMENT ON COLUMN spare_parts_management.item_cost.spare_part_name IS '备品名称';
COMMENT ON COLUMN spare_parts_management.item_cost.quantity IS '备品使用量';


