/**
  资料架构数据
  执行位置请切换为 management 数据库
  执行前先执行数据库创建、数据表设计、备品架构数据文件
 */

-- 添加规则数据
INSERT
INTO
    information_management.maintenance_cycle_rules
    (rule_name, rule_desc, months)
VALUES
    ('规则一',
     '一月年保的规则',
     ARRAY ['年','月','月','季','月','月','半年','月','月','季','月','月']::information_management.REGULAR_MONTH_COLLECTION),
    ('规则二',
     '二月年保的规则',
     ARRAY ['月','年','月','月','季','月','月','半年','月','月','季','月']::information_management.REGULAR_MONTH_COLLECTION),
    ('规则三',
     '三月年保的规则',
     ARRAY ['月','月','年','月','月','季','月','月','半年','月','月','季']::information_management.REGULAR_MONTH_COLLECTION),
    ('规则四',
     '四月年保的规则',
     ARRAY ['季','月','月','年','月','月','季','月','月','半年','月','月']::information_management.REGULAR_MONTH_COLLECTION),
    ('规则五',
     '五月年保的规则',
     ARRAY ['月','季','月','月','年','月','月','季','月','月','半年','月']::information_management.REGULAR_MONTH_COLLECTION),
    ('规则六',
     '六月年保的规则',
     ARRAY ['月','月','季','月','月','年','月','月','季','月','月','半年']::information_management.REGULAR_MONTH_COLLECTION),
    ('规则七',
     '七月年保的规则',
     ARRAY ['半年','月','月','季','月','月','年','月','月','季','月','月']::information_management.REGULAR_MONTH_COLLECTION),
    ('规则八',
     '八月年保的规则',
     ARRAY ['月','半年','月','月','季','月','月','年','月','月','季','月']::information_management.REGULAR_MONTH_COLLECTION),
    ('规则九',
     '九月年保的规则',
     ARRAY ['月','月','半年','月','月','季','月','月','年','月','月','季']::information_management.REGULAR_MONTH_COLLECTION),
    ('规则十',
     '十月年保的规则',
     ARRAY ['季','月','月','半年','月','月','季','月','月','年','月','月']::information_management.REGULAR_MONTH_COLLECTION),
    ('规则十一',
     '十一月年保的规则',
     ARRAY ['月','季','月','月','半年','月','月','季','月','月','年','月']::information_management.REGULAR_MONTH_COLLECTION),
    ('规则十二',
     '十二月年保的规则',
     ARRAY ['月','月','季','月','月','半年','月','月','季','月','月','年']::information_management.REGULAR_MONTH_COLLECTION);



-- 添加保养基准数据

-- 清除测试设备资料数据
TRUNCATE information_management.device_data;




