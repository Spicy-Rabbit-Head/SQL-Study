-- 机台信息
INSERT
INTO
    information_management.device_data
    (device_number,
     device_name,
     device_model,
     manufacturer,
     workshop,
     station,
     location,
     device_status,
     is_valid,
     change_date)
VALUES
    ('N1560',
     '自动微调机',
     'B03',
     '日本',
     '製造一部車間',
     '微调站',
     'P2-2F',
     '运行中',
     TRUE,
     '2024-01-01 00:00:00'::TIMESTAMP),
    ('N1570',
     '自动微调机',
     'B03',
     '日本',
     '製造二部車間',
     '微调站',
     'P4-2F',
     '运行中',
     TRUE,
     '2023-01-01 00:00:00'::TIMESTAMP),
    ('N1580',
     '点胶机',
     'ATM-100',
     '三生',
     '製造一部車間',
     '点胶站',
     'P2-2F',
     '运行中',
     TRUE,
     '2022-01-01 00:00:00'::TIMESTAMP),
    ('N1590',
     '溅镀机',
     'xx-2',
     '日本',
     '製造二部車間',
     '溅镀站',
     'P4-2F',
     '运行中',
     TRUE,
     '2021-01-01 00:00:00'::TIMESTAMP);




-- 保养项目
