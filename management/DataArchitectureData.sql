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
     ARRAY ['年','月','月','季度','月','月','半年','月','月','季度','月','月']::information_management.REGULAR_MONTH_COLLECTION),
    ('规则二',
     '二月年保的规则',
     ARRAY ['月','年','月','月','季度','月','月','半年','月','月','季度','月']::information_management.REGULAR_MONTH_COLLECTION),
    ('规则三',
     '三月年保的规则',
     ARRAY ['月','月','年','月','月','季度','月','月','半年','月','月','季度']::information_management.REGULAR_MONTH_COLLECTION),
    ('规则四',
     '四月年保的规则',
     ARRAY ['季度','月','月','年','月','月','季度','月','月','半年','月','月']::information_management.REGULAR_MONTH_COLLECTION),
    ('规则五',
     '五月年保的规则',
     ARRAY ['月','季度','月','月','年','月','月','季度','月','月','半年','月']::information_management.REGULAR_MONTH_COLLECTION),
    ('规则六',
     '六月年保的规则',
     ARRAY ['月','月','季度','月','月','年','月','月','季度','月','月','半年']::information_management.REGULAR_MONTH_COLLECTION),
    ('规则七',
     '七月年保的规则',
     ARRAY ['半年','月','月','季度','月','月','年','月','月','季度','月','月']::information_management.REGULAR_MONTH_COLLECTION),
    ('规则八',
     '八月年保的规则',
     ARRAY ['月','半年','月','月','季度','月','月','年','月','月','季度','月']::information_management.REGULAR_MONTH_COLLECTION),
    ('规则九',
     '九月年保的规则',
     ARRAY ['月','月','半年','月','月','季度','月','月','年','月','月','季度']::information_management.REGULAR_MONTH_COLLECTION),
    ('规则十',
     '十月年保的规则',
     ARRAY ['季度','月','月','半年','月','月','季度','月','月','年','月','月']::information_management.REGULAR_MONTH_COLLECTION),
    ('规则十一',
     '十一月年保的规则',
     ARRAY ['月','季度','月','月','半年','月','月','季度','月','月','年','月']::information_management.REGULAR_MONTH_COLLECTION),
    ('规则十二',
     '十二月年保的规则',
     ARRAY ['月','月','季度','月','月','半年','月','月','季度','月','月','年']::information_management.REGULAR_MONTH_COLLECTION);

INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2446, 'N2013', '月', '機台內部清潔,氣路及過濾器濾芯【小】清潔更換', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2447, 'N2013', '半年', '機台內部清潔,氣路及過濾器濾芯清潔更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2448, 'N2013', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2449, 'N2013', '半年', '自淨器/吸塵器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2450, 'N1164', '月', '機台內部清潔,氣路及過濾器濾芯【小】清潔更換', '過濾器濾芯【小】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2451, 'N1164', '半年', '機台內部清潔,氣路及過濾器濾芯清潔更換', '軟尼龍管', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2452, 'N1164', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2453, 'N0843', '月', '機台內部清潔,氣路及過濾器濾芯【小】清潔更換', '過濾器濾芯【小】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2454, 'N0843', '半年', '機台內部清潔,氣路及過濾器濾芯清潔更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2455, 'N0843', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2456, 'N3336', '月', '機台內部清潔,氣路及過濾器濾芯【小】清潔更換', '過濾器濾芯【小】', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2457, 'N3336', '半年', '機台內部清潔,氣路及過濾器濾芯清潔更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2458, 'N3336', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2459, 'N3336', '半年', '自淨器/吸塵器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2460, 'N2778', '月', '機台內部清潔,氣路及過濾器濾芯【小】清潔更換', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2461, 'N2778', '半年', '機台內部清潔,氣路及過濾器濾芯清潔更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2462, 'N2778', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2463, 'N2778', '半年', '自淨器/吸塵器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2464, 'N3228', '月', '機台內部清潔,氣路及過濾器濾芯【小】清潔更換', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2465, 'N3228', '半年', '機台內部清潔,氣路及過濾器濾芯清潔更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2466, 'N3228', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2467, 'N3228', '半年', '自淨器/吸塵器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2468, 'N3073', '月', '機台內部清潔,氣路及過濾器濾芯【小】清潔更換', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2469, 'N3073', '半年', '機台內部清潔,氣路及過濾器濾芯清潔更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2470, 'N3073', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2471, 'N3073', '半年', '自淨器/吸塵器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2472, 'N3072', '月', '機台內部清潔,氣路及過濾器濾芯【小】清潔更換', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2473, 'N3072', '半年', '機台內部清潔,氣路及過濾器濾芯清潔更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2474, 'N3072', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2475, 'N3072', '半年', '自淨器/吸塵器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2476, 'N3210', '月', '機台內部清潔,氣路及過濾器濾芯【小】清潔更換', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2477, 'N3210', '半年', '機台內部清潔,氣路及過濾器濾芯清潔更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2478, 'N3210', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2479, 'N3210', '半年', '自淨器/吸塵器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2480, 'N3225', '月', '機台內部清潔,氣路及過濾器濾芯【小】清潔更換', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2481, 'N3225', '半年', '機台內部清潔,氣路及過濾器濾芯清潔更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2482, 'N3225', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2483, 'N3225', '半年', '自淨器/吸塵器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2484, 'N3074', '月', '機台內部清潔,氣路及過濾器濾芯【小】清潔更換', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2485, 'N3074', '半年', '機台內部清潔,氣路及過濾器濾芯清潔更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2486, 'N3074', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2487, 'N3074', '半年', '自淨器/吸塵器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2488, 'N3079', '月', '機台內部清潔,氣路及過濾器濾芯【小】清潔更換', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2489, 'N3079', '半年', '機台內部清潔,氣路及過濾器濾芯清潔更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2490, 'N3079', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2491, 'N3079', '半年', '自淨器/吸塵器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2492, 'N3077', '月', '機台內部清潔,氣路及過濾器濾芯【小】清潔更換', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2493, 'N3077', '半年', '機台內部清潔,氣路及過濾器濾芯清潔更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2494, 'N3077', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2495, 'N3077', '半年', '自淨器/吸塵器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2496, 'N3041', '月', '機台內部清潔,氣路及過濾器濾芯【小】清潔更換', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2497, 'N3041', '半年', '機台內部清潔,氣路及過濾器濾芯清潔更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2498, 'N3041', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2499, 'N3041', '半年', '自淨器/吸塵器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2500, 'N3227', '月', '機台內部清潔,氣路及過濾器濾芯【小】清潔更換', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2501, 'N3227', '半年', '機台內部清潔,氣路及過濾器濾芯清潔更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2502, 'N3227', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2503, 'N3227', '半年', '自淨器/吸塵器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2504, 'N3209', '月', '機台內部清潔,氣路及過濾器濾芯【小】清潔更換', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2505, 'N3209', '半年', '機台內部清潔,氣路及過濾器濾芯清潔更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2506, 'N3209', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2507, 'N3209', '半年', '自淨器/吸塵器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2508, 'N3042', '月', '機台內部清潔,氣路及過濾器濾芯【小】清潔更換', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2509, 'N3042', '半年', '機台內部清潔,氣路及過濾器濾芯清潔更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2510, 'N3042', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2511, 'N3042', '半年', '自淨器/吸塵器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2512, 'N3039', '月', '機台內部清潔,氣路及過濾器濾芯【小】清潔更換', '過濾器濾芯【小】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2513, 'N3039', '半年', '機台內部清潔,氣路及過濾器濾芯清潔更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2514, 'N3039', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2515, 'N3039', '半年', '自淨器/吸塵器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2516, 'N3076', '月', '機台內部清潔,氣路及過濾器濾芯【小】清潔更換', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2517, 'N3076', '半年', '機台內部清潔,氣路及過濾器濾芯清潔更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2518, 'N3076', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2519, 'N3076', '半年', '自淨器/吸塵器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2520, 'N3080', '月', '機台內部清潔,氣路及過濾器濾芯【小】清潔更換', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2521, 'N3080', '半年', '機台內部清潔,氣路及過濾器濾芯清潔更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2522, 'N3080', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2523, 'N3080', '半年', '自淨器/吸塵器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2524, 'N3226', '月', '機台內部清潔,氣路及過濾器濾芯【小】清潔更換', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2525, 'N3226', '半年', '機台內部清潔,氣路及過濾器濾芯清潔更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2526, 'N3226', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2527, 'N3226', '半年', '自淨器/吸塵器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2528, 'N2606', '月', '機台內部清潔,氣路及過濾器濾芯【小】清潔更換', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2529, 'N2606', '半年', '機台內部清潔,氣路及過濾器濾芯清潔更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2530, 'N2606', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2531, 'N2606', '半年', '自淨器/吸塵器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2532, 'N0708', '月', '機台內部清潔,氣路及過濾器濾芯【小】清潔更換', '過濾器濾芯【小】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2533, 'N0708', '半年', '機台內部清潔,氣路及過濾器濾芯清潔更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2534, 'N0708', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2535, 'N2609', '月', '機台內部清潔,氣路及過濾器濾芯【小】清潔更換', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2536, 'N2609', '半年', '機台內部清潔,氣路及過濾器濾芯清潔更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2537, 'N2609', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2538, 'N2609', '半年', '自淨器/吸塵器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2539, 'N0838', '月', '機台內部清潔,氣路及過濾器濾芯【小】清潔更換', '過濾器濾芯【小】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2540, 'N0838', '半年', '機台內部清潔,氣路及過濾器濾芯清潔更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2541, 'N0838', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2542, 'N2015', '月', '機台內部清潔,氣路及過濾器濾芯【小】清潔更換', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2543, 'N2015', '半年', '機台內部清潔,氣路及過濾器濾芯清潔更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2544, 'N2015', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2545, 'N2015', '半年', '自淨器/吸塵器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2546, 'N2469', '月', '機台內部清潔,氣路及過濾器濾芯【小】清潔更換', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2547, 'N2469', '半年', '機台內部清潔,氣路及過濾器濾芯清潔更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2548, 'N2469', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2549, 'N2469', '半年', '自淨器/吸塵器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2550, 'N0707', '月', '機台內部清潔,氣路及過濾器濾芯【小】清潔更換', '過濾器濾芯【小】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2551, 'N0707', '半年', '機台內部清潔,氣路及過濾器濾芯清潔更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2552, 'N0707', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2553, 'N0871', '月', '機台內部清潔,氣路及過濾器濾芯【小】清潔更換', '過濾器濾芯【小】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2554, 'N0871', '半年', '機台內部清潔,氣路及過濾器濾芯清潔更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2555, 'N0871', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2556, 'N0709', '月', '機台內部清潔,氣路及過濾器濾芯【小】清潔更換', '過濾器濾芯【小】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2557, 'N0709', '半年', '機台內部清潔,氣路及過濾器濾芯清潔更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2558, 'N0709', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2559, 'N0709', '半年', '各軸絲桿和滑塊保養', 'NSK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2560, 'N2016', '月', '機台內部清潔,氣路及過濾器濾芯【小】清潔更換', '過濾器濾芯【小】', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2561, 'N2016', '半年', '機台內部清潔,氣路及過濾器濾芯清潔更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2562, 'N2016', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2563, 'N2016', '半年', '自淨器/吸塵器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2564, 'N0710', '月', '機台內部清潔,氣路及過濾器濾芯【小】清潔更換', '過濾器濾芯【小】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2565, 'N0710', '半年', '機台內部清潔,氣路及過濾器濾芯清潔更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2566, 'N0710', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2567, 'N0942', '月', '機台內部清潔,氣路及過濾器濾芯【小】清潔更換', '過濾器濾芯【小】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2568, 'N0942', '半年', '機台內部清潔,氣路及過濾器濾芯清潔更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2569, 'N0942', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2570, 'N1963', '月', '機台內部清潔,氣路及過濾器濾芯【小】清潔更換', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2571, 'N1963', '半年', '機台內部清潔,氣路及過濾器濾芯清潔更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2572, 'N1963', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2573, 'N1963', '半年', '自淨器/吸塵器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2574, 'N1066', '月', '機台內部清潔,氣路及過濾器濾芯【小】清潔更換', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2575, 'N1066', '半年', '機台內部清潔,氣路及過濾器濾芯清潔更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2576, 'N1066', '半年', '各軸絲桿和滑塊保養', 'NSK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2577, 'N1111', '月', '機台內部清潔,氣路及過濾器濾芯【小】清潔更換', '過濾器濾芯【小】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2578, 'N1111', '半年', '機台內部清潔,氣路及過濾器濾芯清潔更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2579, 'N1111', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2580, 'N1804', '月', '機台內部清潔,氣路及過濾器濾芯【小】清潔更換', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2581, 'N1804', '半年', '機台內部清潔,氣路及過濾器濾芯清潔更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2582, 'N1804', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2583, 'N1804', '半年', '自淨器/吸塵器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2584, 'N1991', '月', '機台內部清潔,氣路及過濾器濾芯【小】清潔更換', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2585, 'N1991', '半年', '機台內部清潔,氣路及過濾器濾芯清潔更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2586, 'N1991', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2587, 'N1991', '半年', '自淨器/吸塵器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2588, 'N2278', '月', '機台內部清潔,氣路及過濾器濾芯【小】清潔更換', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2589, 'N2278', '半年', '機台內部清潔,氣路及過濾器濾芯清潔更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2590, 'N2278', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2591, 'N2278', '半年', '自淨器/吸塵器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2592, 'N3513', '月', '機台內部清潔,氣路及過濾器濾芯【小】清潔更換', '過濾器濾芯【小】', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2593, 'N3513', '半年', '機台內部清潔,氣路及過濾器濾芯清潔更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2594, 'N3513', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2595, 'N3513', '半年', '自淨器/吸塵器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2596, 'N3514', '月', '機台內部清潔,氣路及過濾器濾芯【小】清潔更換', '過濾器濾芯【小】', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2597, 'N3514', '半年', '機台內部清潔,氣路及過濾器濾芯清潔更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2598, 'N3514', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2599, 'N3514', '半年', '自淨器/吸塵器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2600, 'N1964', '月', '機台內部清潔,氣路及過濾器濾芯【小】清潔更換', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2601, 'N1964', '半年', '機台內部清潔,氣路及過濾器濾芯清潔更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2602, 'N1964', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2603, 'N1964', '半年', '自淨器/吸塵器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2604, 'N1163', '月', '機台內部清潔,氣路及過濾器濾芯【小】清潔更換', '過濾器濾芯【小】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2605, 'N1163', '半年', '機台內部清潔,氣路及過濾器濾芯清潔更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2606, 'N1163', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2607, 'N2288', '月', '機台內部清潔,氣路及過濾器濾芯【小】清潔更換', '過濾器濾芯【小】', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2608, 'N2288', '半年', '機台內部清潔,氣路及過濾器濾芯清潔更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2609, 'N2288', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2610, 'N2288', '半年', '自淨器/吸塵器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2611, 'N1202', '月', '機台內部清潔,氣路及過濾器濾芯【小】清潔更換', '過濾器濾芯【小】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2612, 'N1202', '半年', '機台內部清潔,氣路及過濾器濾芯清潔更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2613, 'N1202', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2614, 'N1162', '月', '機台內部清潔,氣路及過濾器濾芯【小】清潔更換', '過濾器濾芯【小】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2615, 'N1162', '半年', '機台內部清潔,氣路及過濾器濾芯清潔更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2616, 'N1162', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2617, 'N2289', '月', '機台內部清潔,氣路及過濾器濾芯【小】清潔更換', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2618, 'N2289', '半年', '機台內部清潔,氣路及過濾器濾芯清潔更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2619, 'N2289', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2620, 'N2289', '半年', '自淨器/吸塵器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2621, 'N2290', '月', '機台內部清潔,氣路及過濾器濾芯【小】清潔更換', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2622, 'N2290', '半年', '機台內部清潔,氣路及過濾器濾芯清潔更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2623, 'N2290', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2624, 'N2290', '半年', '自淨器/吸塵器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2625, 'N1276', '月', '機台內部清潔,氣路及過濾器濾芯【小】清潔更換', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2626, 'N1276', '半年', '機台內部清潔,氣路及過濾器濾芯清潔更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2627, 'N1276', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2628, 'N1316', '月', '機台內部清潔,氣路及過濾器濾芯【小】清潔更換', '過濾器濾芯【小】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2629, 'N1316', '半年', '機台內部清潔,氣路及過濾器濾芯清潔更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2630, 'N1316', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2631, 'N2097', '月', '機台內部清潔,氣路及過濾器濾芯【小】清潔更換', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2632, 'N2097', '半年', '機台內部清潔,氣路及過濾器濾芯清潔更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2633, 'N2097', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2634, 'N2097', '半年', '自淨器/吸塵器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2635, 'N1328', '月', '機台內部清潔,氣路及過濾器濾芯【小】清潔更換', '過濾器濾芯【小】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2636, 'N1328', '半年', '機台內部清潔,氣路及過濾器濾芯清潔更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2637, 'N1328', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2638, 'N1393', '月', '機台內部清潔,氣路及過濾器濾芯【小】清潔更換', '過濾器濾芯【小】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2639, 'N1393', '半年', '機台內部清潔,氣路及過濾器濾芯清潔更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2640, 'N1393', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2641, 'N1992', '月', '機台內部清潔,氣路及過濾器濾芯【小】清潔更換', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2642, 'N1992', '半年', '機台內部清潔,氣路及過濾器濾芯清潔更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2643, 'N1992', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2644, 'N1992', '半年', '自淨器/吸塵器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2645, 'N1662', '月', '機台內部清潔,氣路及過濾器濾芯【小】清潔更換', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2646, 'N1662', '半年', '機台內部清潔,氣路及過濾器濾芯清潔更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2647, 'N1662', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2648, 'N1662', '半年', '自淨器/吸塵器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2649, 'N1679', '月', '機台內部清潔,氣路及過濾器濾芯【小】清潔更換', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2650, 'N1679', '半年', '機台內部清潔,氣路及過濾器濾芯清潔更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2651, 'N1679', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2652, 'N1679', '半年', '自淨器/吸塵器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2653, 'N1587', '月', '機台內部清潔,氣路及過濾器濾芯【小】清潔更換', '過濾器濾芯【小】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2654, 'N1587', '半年', '機台內部清潔,氣路及過濾器濾芯清潔更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2655, 'N1587', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2656, 'N1680', '月', '機台內部清潔,氣路及過濾器濾芯【小】清潔更換', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2657, 'N1680', '半年', '機台內部清潔,氣路及過濾器濾芯清潔更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2658, 'N1680', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2659, 'N1680', '半年', '自淨器/吸塵器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2660, 'N1588', '月', '機台內部清潔,氣路及過濾器濾芯【小】清潔更換', '過濾器濾芯【小】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2661, 'N1588', '半年', '機台內部清潔,氣路及過濾器濾芯清潔更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2662, 'N1588', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4392, 'N2071', '月', '封刀清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2663, 'N2146', '月', '機台內部清潔,氣路及過濾器濾芯【小】清潔更換', '過濾器濾芯【小】', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2664, 'N2146', '半年', '機台內部清潔,氣路及過濾器濾芯清潔更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2665, 'N2146', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2666, 'N2146', '半年', '自淨器/吸塵器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2667, 'N2014', '月', '機台內部清潔,氣路及過濾器濾芯【小】清潔更換', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2668, 'N2014', '半年', '機台內部清潔,氣路及過濾器濾芯清潔更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2669, 'N2014', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2670, 'N2014', '半年', '自淨器/吸塵器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2671, 'N2096', '月', '機台內部清潔,氣路及過濾器濾芯【小】清潔更換', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2672, 'N2096', '半年', '機台內部清潔,氣路及過濾器濾芯清潔更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2673, 'N2096', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2674, 'N2096', '半年', '自淨器/吸塵器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2675, 'N1010', '月', '機台內部清潔,氣路及過濾器濾芯【小】清潔更換', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2676, 'N1010', '半年', '機台內部清潔,氣路及過濾器濾芯清潔更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2677, 'N1010', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2678, 'N1885', '月', '機台內部清潔,氣路及過濾器濾芯【小】清潔更換', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2679, 'N1885', '半年', '機台內部清潔,氣路及過濾器濾芯清潔更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2680, 'N1885', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2681, 'N1885', '半年', '自淨器/吸塵器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2682, 'N1329', '月', '機台內部清潔,氣路及過濾器濾芯【小】清潔更換', '過濾器濾芯【小】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2683, 'N1329', '半年', '機台內部清潔,氣路及過濾器濾芯清潔更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2684, 'N1329', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2685, 'N2157', '月', '機台內部清潔,氣路及過濾器濾芯【小】清潔更換', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2686, 'N2157', '半年', '機台內部清潔,氣路及過濾器濾芯清潔更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2687, 'N2157', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2688, 'N2157', '半年', '自淨器/吸塵器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2689, 'N1886', '月', '機台內部清潔,氣路及過濾器濾芯【小】清潔更換', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2690, 'N1886', '半年', '機台內部清潔,氣路及過濾器濾芯清潔更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2691, 'N1886', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2692, 'N1886', '半年', '自淨器/吸塵器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2693, 'N2773', '月', '機台內部清潔,氣路及過濾器濾芯【小】清潔更換', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2694, 'N2773', '半年', '機台內部清潔,氣路及過濾器濾芯清潔更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2695, 'N2773', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2696, 'N2773', '半年', '自淨器/吸塵器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2697, 'N2920', '月', '機台內部清潔,氣路及過濾器濾芯【小】清潔更換', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2698, 'N2920', '半年', '機台內部清潔,氣路及過濾器濾芯清潔更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2699, 'N2920', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2700, 'N2920', '半年', '自淨器/吸塵器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2701, 'N2921', '月', '機台內部清潔,氣路及過濾器濾芯【小】清潔更換', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2702, 'N2921', '半年', '機台內部清潔,氣路及過濾器濾芯清潔更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2703, 'N2921', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2704, 'N2921', '半年', '自淨器/吸塵器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2705, 'N2781', '月', '機台內部清潔,氣路及過濾器濾芯【小】清潔更換', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2706, 'N2781', '半年', '機台內部清潔,氣路及過濾器濾芯清潔更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2707, 'N2781', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2708, 'N2781', '半年', '自淨器/吸塵器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2709, 'N2602', '月', '機台內部清潔,氣路及過濾器濾芯【小】清潔更換', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2710, 'N2602', '半年', '機台內部清潔,氣路及過濾器濾芯清潔更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2711, 'N2602', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2712, 'N2602', '半年', '自淨器/吸塵器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2713, 'N2608', '月', '機台內部清潔,氣路及過濾器濾芯【小】清潔更換', '過濾器濾芯【小】', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2714, 'N2608', '半年', '機台內部清潔,氣路及過濾器濾芯清潔更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2715, 'N2608', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2716, 'N2608', '半年', '自淨器/吸塵器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2717, 'N3380', '月', '機台內部清潔,氣路及過濾器濾芯【小】清潔更換', '過濾器濾芯【小】', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2718, 'N3380', '半年', '機台內部清潔,氣路及過濾器濾芯清潔更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2719, 'N3380', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2720, 'N3380', '半年', '自淨器/吸塵器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2721, 'N3381', '月', '機台內部清潔,氣路及過濾器濾芯【小】清潔更換', '過濾器濾芯【小】', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2722, 'N3381', '半年', '機台內部清潔,氣路及過濾器濾芯清潔更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2723, 'N3381', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2724, 'N3381', '半年', '自淨器/吸塵器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2725, 'N3383', '月', '機台內部清潔,氣路及過濾器濾芯【小】清潔更換', '過濾器濾芯【小】', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2726, 'N3383', '半年', '機台內部清潔,氣路及過濾器濾芯清潔更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2727, 'N3383', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2728, 'N3383', '半年', '自淨器/吸塵器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2729, 'N3384', '月', '機台內部清潔,氣路及過濾器濾芯【小】清潔更換', '過濾器濾芯【小】', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2730, 'N3384', '半年', '機台內部清潔,氣路及過濾器濾芯清潔更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2731, 'N3384', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2732, 'N3384', '半年', '自淨器/吸塵器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2733, 'N1665', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2734, 'N1665', '半年', '自淨器/吸塵器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2735, 'N2155', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2736, 'N2155', '半年', '自淨器/吸塵器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2737, 'N2156', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2738, 'N2156', '半年', '自淨器/吸塵器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2739, 'N2923', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2740, 'N2923', '半年', '自淨器/吸塵器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2741, 'N1831', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2742, 'N1831', '半年', '自淨器/吸塵器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2743, 'N1827', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2744, 'N1827', '半年', '自淨器/吸塵器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2745, 'N0645', '季度', '各軸絲桿和滑塊保養', '美孚油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2746, 'N0645', '半年', 'IPA溶液濾芯更換', '"CWFT010S1/精度1μm 長度10""材質聚丙烯/自動清洗機用"', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2747, 'N0742', '季度', '各軸絲桿和滑塊保養', '美孚油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2748, 'N0742', '半年', 'IPA溶液濾芯更換', '"CWFT010S1/精度1μm 長度10""材質聚丙烯/自動清洗機用"', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2749, 'N3102', '季度', '各軸絲桿和滑塊保養', '美孚油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2750, 'N3102', '半年', 'IPA溶液濾芯更換', '"CWFT010S1/精度1μm 長度10""材質聚丙烯/自動清洗機用"', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2751, 'N3308', '季度', '各軸絲桿和滑塊保養', '美孚油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2752, 'N3308', '半年', 'IPA溶液濾芯更換', '"CWFT010S1/精度1μm 長度10""材質聚丙烯/自動清洗機用"', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2753, 'N0841', '季度', '各軸絲桿和滑塊保養', '美孚油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2754, 'N0841', '半年', 'IPA溶液濾芯更換', '"CWFT010S1/精度1μm 長度10""材質聚丙烯/自動清洗機用"', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2755, 'N0842', '季度', '各軸絲桿和滑塊保養', '美孚油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2756, 'N0842', '半年', 'IPA溶液濾芯更換', '"CWFT010S1/精度1μm 長度10""材質聚丙烯/自動清洗機用"', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2757, 'N1313', '季度', '各軸絲桿和滑塊保養', '美孚油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2758, 'N1313', '半年', 'IPA溶液濾芯更換', '"CWFT010S1/精度1μm 長度10""材質聚丙烯/自動清洗機用"', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2759, 'N1516', '月', '各軸絲桿和滑塊保養', '美孚油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2760, 'N1516', '年', '鏈條更換', 'SUS304鏈條', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2761, 'N1418', '月', '各軸絲桿和滑塊保養', '美孚油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2762, 'N1418', '年', '鏈條濾芯更換', 'SUS304鏈條', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2763, 'N0620', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2764, 'N0620', '半年', '冷卻水UF-61C-1冷卻水濾芯更換', 'UF-61C-1冷卻水濾芯', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2765, 'N0620', '年', '軌道保養', '導向軸承', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2766, 'N0620', '年', '軌道保養', '軌道傳動軸承', 40);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2767, 'N0620', '年', '軌道保養', '限位塊軸承', 48);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2768, 'N0620', '年', '回轉泵保養', '機械泵油R7', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2769, 'N0620', '年', '主閥保養', '主閥密封圈（SER-35)', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2770, 'N0620', '年', '主閥保養', '主閥密封圈（PDU-35Z)', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2771, 'N0620', '年', '主閥保養', '主閥密O型封圈（33*4）', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2772, 'N0620', '年', '前級閥保養', '防塵密封圈（SER-16）', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2773, 'N0620', '年', '前級閥保養', '密封圈（PDU-16Z）', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2774, 'N0620', '年', '前級閥保養', 'O型密封圈（P16）', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2775, 'N3197', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2776, 'N3197', '半年', '冷卻水UF-61C-1冷卻水濾芯更換', 'UF-61C-1冷卻水濾芯', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2777, 'N3197', '年', '軌道保養', '導向軸承', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2778, 'N3197', '年', '軌道保養', '軌道傳動軸承', 40);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2779, 'N3197', '年', '軌道保養', '限位塊軸承', 48);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2780, 'N3197', '年', '回轉泵保養', '機械泵油R7', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2781, 'N3197', '年', '主閥保養', '主閥密封圈（SER-35)', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2782, 'N3197', '年', '主閥保養', '主閥密封圈（PDU-35Z)', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2783, 'N3197', '年', '主閥保養', '主閥密O型封圈（33*4）', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2784, 'N3197', '年', '前級閥保養', '防塵密封圈（SER-16）', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2785, 'N3197', '年', '前級閥保養', '密封圈（PDU-16Z）', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2786, 'N3197', '年', '前級閥保養', 'O型密封圈（P16）', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2787, 'N3046', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2788, 'N3046', '半年', '冷卻水UF-61C-1冷卻水濾芯更換', 'UF-61C-1冷卻水濾芯', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2789, 'N3046', '年', '回轉泵保養', '機械泵油R7', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2790, 'N0701', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2791, 'N0701', '半年', '冷卻水UF-61C-1冷卻水濾芯更換', 'UF-61C-1冷卻水濾芯', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2792, 'N0701', '年', '軌道保養', '導向軸承', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2793, 'N0701', '年', '軌道保養', '軌道傳動軸承', 40);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2794, 'N0701', '年', '軌道保養', '限位塊軸承', 48);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2795, 'N0701', '年', '回轉泵保養', '機械泵油R7', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2796, 'N0701', '年', '主閥保養', '主閥密封圈（SER-35)', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2797, 'N0701', '年', '主閥保養', '主閥密封圈（PDU-16Z)', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2798, 'N0701', '年', '主閥保養', '主閥密O型封圈（33*4）', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2799, 'N0701', '年', '前級閥保養', '防塵密封圈（SER-16）', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2800, 'N0701', '年', '前級閥保養', '密封圈（PDU-16Z）', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2801, 'N0701', '年', '前級閥保養', 'O型密封圈（P16）', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2802, 'N0344', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2803, 'N0344', '半年', '冷卻水UF-61C-1冷卻水濾芯更換', 'UF-61C-1冷卻水濾芯', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2804, 'N0344', '年', '軌道保養', '導向軸承', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2805, 'N0344', '年', '軌道保養', '軌道傳動軸承', 40);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2806, 'N0344', '年', '軌道保養', '限位塊軸承', 48);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2807, 'N0344', '年', '回轉泵保養', '機械泵油R7', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2808, 'N0344', '年', '主閥保養', '主閥密封圈（SER-35)', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2809, 'N0344', '年', '主閥保養', '主閥密封圈（PDU-35Z)', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2810, 'N0344', '年', '主閥保養', '主閥密O型封圈（33*4）', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2811, 'N0344', '年', '前級閥保養', '防塵密封圈（SER-16）', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2812, 'N0344', '年', '前級閥保養', '密封圈（PDU-16Z）', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2813, 'N0344', '年', '前級閥保養', 'O型密封圈（P16）', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2814, 'N2554', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2815, 'N2554', '半年', '冷卻水UF-61C-1冷卻水濾芯更換', 'UF-61C-1冷卻水濾芯', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2816, 'N2554', '年', '軌道保養', '導向軸承', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2817, 'N2554', '年', '軌道保養', '軌道傳動軸承', 40);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2818, 'N2554', '年', '軌道保養', '限位塊軸承', 48);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2819, 'N2554', '年', '回轉泵保養', '機械泵油R7', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2820, 'N2554', '年', '主閥保養', '主閥密封圈（SER-35)', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2821, 'N2554', '年', '主閥保養', '主閥密封圈（PDU-35Z)', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2822, 'N2554', '年', '主閥保養', '主閥密O型封圈（33*4）', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2823, 'N2554', '年', '前級閥保養', '防塵密封圈（SER-16）', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2824, 'N2554', '年', '前級閥保養', '密封圈（PDU-16Z）', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2825, 'N2554', '年', '前級閥保養', 'O型密封圈（P16）', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2826, 'N1201', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2827, 'N1201', '半年', '冷卻水UF-61C-1冷卻水濾芯更換', 'UF-61C-1冷卻水濾芯', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2828, 'N1201', '年', '軌道保養', '導向軸承', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2829, 'N1201', '年', '軌道保養', '軌道傳動軸承', 40);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2830, 'N1201', '年', '軌道保養', '限位塊軸承', 48);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2831, 'N1201', '年', '回轉泵保養', '機械泵油R7', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2832, 'N1201', '年', '主閥保養', '主閥密封圈（SER-35)', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2833, 'N1201', '年', '主閥保養', '主閥密封圈（PDU-35Z)', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2834, 'N1201', '年', '主閥保養', '主閥密O型封圈（33*4）', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2835, 'N1201', '年', '前級閥保養', '防塵密封圈（SER-16）', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2836, 'N1201', '年', '前級閥保養', '密封圈（PDU-16Z）', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2837, 'N1201', '年', '前級閥保養', 'O型密封圈（P16）', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2838, 'N2085', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2839, 'N2085', '半年', '冷卻水UF-61C-1冷卻水濾芯更換', 'UF-61C-1冷卻水濾芯', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2840, 'N2085', '年', '軌道保養', '導向軸承', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2841, 'N2085', '年', '軌道保養', '軌道傳動軸承', 40);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2842, 'N2085', '年', '軌道保養', '限位塊軸承', 48);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2843, 'N2085', '年', '回轉泵保養', '機械泵油R7', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2844, 'N2085', '年', '主閥保養', '主閥密封圈（SER-35)', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2845, 'N2085', '年', '主閥保養', '主閥密封圈（PDU-35Z)', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2846, 'N2085', '年', '主閥保養', '主閥密O型封圈（33*4）', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2847, 'N2085', '年', '前級閥保養', '防塵密封圈（SER-16）', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2848, 'N2085', '年', '前級閥保養', '密封圈（PDU-16Z）', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2849, 'N2085', '年', '前級閥保養', 'O型密封圈（P16）', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2850, 'N1403', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2851, 'N1403', '半年', '冷卻水UF-61C-1冷卻水濾芯更換', 'UF-61C-1冷卻水濾芯', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2852, 'N1403', '年', '軌道保養', '導向軸承', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2853, 'N1403', '年', '軌道保養', '軌道傳動軸承', 40);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2854, 'N1403', '年', '軌道保養', '限位塊軸承', 48);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2855, 'N1403', '年', '回轉泵保養', '機械泵油R7', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2856, 'N1403', '年', '主閥保養', '主閥密封圈（SER-35)', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2857, 'N1403', '年', '主閥保養', '主閥密封圈（PDU-35Z)', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2858, 'N1403', '年', '主閥保養', '主閥密O型封圈（33*4）', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2859, 'N1403', '年', '前級閥保養', '防塵密封圈（SER-16）', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2860, 'N1403', '年', '前級閥保養', '密封圈（PDU-16Z）', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2861, 'N1403', '年', '前級閥保養', 'O型密封圈（P16）', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2862, 'N1667', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2863, 'N1667', '半年', '冷卻水UF-61C-1冷卻水濾芯更換', 'UF-61C-1冷卻水濾芯', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2864, 'N1667', '年', '回轉泵保養', '機械泵油R7', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2865, 'N1749', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2866, 'N1749', '半年', '冷卻水UF-61C-1冷卻水濾芯更換', 'UF-61C-1冷卻水濾芯', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2867, 'N1749', '年', '軌道保養', '導向軸承', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2868, 'N1749', '年', '軌道保養', '軌道傳動軸承', 40);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2869, 'N1749', '年', '軌道保養', '限位塊軸承', 48);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2870, 'N1749', '年', '回轉泵保養', '機械泵油R7', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2871, 'N1749', '年', '主閥保養', '主閥密封圈（SER-35)', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2872, 'N1749', '年', '主閥保養', '主閥密封圈（PDU-35Z)', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2873, 'N1749', '年', '主閥保養', '主閥密O型封圈（33*4）', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2874, 'N1749', '年', '前級閥保養', '防塵密封圈（SER-16）', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2875, 'N1749', '年', '前級閥保養', '密封圈（PDU-16Z）', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2876, 'N1749', '年', '前級閥保養', 'O型密封圈（P16）', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2877, 'N2093', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2878, 'N2093', '半年', '冷卻水UF-61C-1冷卻水濾芯更換', 'UF-61C-1冷卻水濾芯', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2879, 'N2093', '年', '軌道保養', '導向軸承', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2880, 'N2093', '年', '軌道保養', '軌道傳動軸承', 40);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2881, 'N2093', '年', '軌道保養', '限位塊軸承', 48);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2882, 'N2093', '年', '回轉泵保養', '機械泵油R7', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2883, 'N2093', '年', '主閥保養', '主閥密封圈（SER-35)', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2884, 'N2093', '年', '主閥保養', '主閥密封圈（PDU-35Z)', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2885, 'N2093', '年', '主閥保養', '主閥密O型封圈（33*4）', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2886, 'N2093', '年', '前級閥保養', '防塵密封圈（SER-16）', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2887, 'N2093', '年', '前級閥保養', '密封圈（PDU-16Z）', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2888, 'N2093', '年', '前級閥保養', 'O型密封圈（P16）', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2889, 'N1098', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2890, 'N1098', '半年', '冷卻水UF-61C-1冷卻水濾芯更換', 'UF-61C-1冷卻水濾芯', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2891, 'N1098', '年', '軌道保養', '導向軸承', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2892, 'N1098', '年', '軌道保養', '軌道傳動軸承', 40);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2893, 'N1098', '年', '軌道保養', '限位塊軸承', 48);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2894, 'N1098', '年', '回轉泵保養', '機械泵油R7', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2895, 'N1098', '年', '主閥保養', '主閥密封圈（SER-35)', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2896, 'N1098', '年', '主閥保養', '主閥密封圈（PDU-35Z)', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2897, 'N1098', '年', '主閥保養', '主閥密O型封圈（33*4）', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2898, 'N1098', '年', '前級閥保養', '防塵密封圈（SER-16）', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2899, 'N1098', '年', '前級閥保養', '密封圈（PDU-16Z）', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2900, 'N1098', '年', '前級閥保養', 'O型密封圈（P16）', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2901, 'N2082', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2902, 'N2082', '月', '過濾器清潔，濾芯、氣管更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2903, 'N2082', '月', '潔淨器功能點檢', '潔淨器', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2904, 'N2082', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2905, 'N2082', '半年', '真空泵保養', '真空泵專用油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2906, 'N2082', '半年', '真空泵保養', '活塞', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2907, 'N2083', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2908, 'N2083', '月', '過濾器清潔，濾芯、氣管更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2909, 'N2083', '月', '潔淨器功能點檢', '潔淨器', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2910, 'N2083', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2911, 'N2083', '半年', '真空泵保養', '真空泵專用油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2912, 'N2083', '半年', '真空泵保養', '活塞', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2913, 'N2054', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2914, 'N2054', '月', '過濾器清潔，濾芯、氣管更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2915, 'N2054', '月', '潔淨器功能點檢', '潔淨器', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2916, 'N2054', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2917, 'N2054', '半年', '真空泵保養', '真空泵專用油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2918, 'N2054', '半年', '真空泵保養', '活塞', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2919, 'N2055', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2920, 'N2055', '月', '過濾器清潔，濾芯、氣管更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2921, 'N2055', '月', '潔淨器功能點檢', '潔淨器', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2922, 'N2055', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2923, 'N2055', '半年', '真空泵保養', '真空泵專用油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2924, 'N2055', '半年', '真空泵保養', '活塞', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2925, 'N2279', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2926, 'N2279', '月', '過濾器清潔，濾芯、氣管更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2927, 'N2279', '月', '潔淨器功能點檢', '潔淨器', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2928, 'N2279', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2929, 'N2279', '半年', '真空泵保養', '真空泵專用油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2930, 'N2279', '半年', '真空泵保養', '活塞', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2931, 'N2042', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2932, 'N2042', '月', '過濾器清潔，濾芯、氣管更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2933, 'N2042', '月', '潔淨器功能點檢', '潔淨器', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2934, 'N2042', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2935, 'N2042', '半年', '真空泵保養', '真空泵專用油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2936, 'N2042', '半年', '真空泵保養', '活塞', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2937, 'N0997', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2938, 'N0997', '月', '過濾器清潔，濾芯、氣管更換', '過濾器【先鋒搭載】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2939, 'N0997', '月', '過濾器清潔，濾芯、氣管更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2940, 'N0997', '月', '潔淨器功能點檢', '潔淨器', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2941, 'N0997', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2942, 'N0997', '半年', '各軸絲桿和滑塊保養', 'NSK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2943, 'N0997', '半年', '真空泵保養', '真空泵專用油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2944, 'N0997', '半年', '真空泵保養', '活塞', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2945, 'N1089', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2946, 'N1089', '月', '過濾器清潔，濾芯、氣管更換', '過濾器【先鋒搭載】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2947, 'N1089', '月', '過濾器清潔，濾芯、氣管更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2948, 'N1089', '月', '潔淨器功能點檢', '潔淨器', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2949, 'N1089', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2950, 'N1089', '半年', '各軸絲桿和滑塊保養', 'NSK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2951, 'N1089', '半年', '真空泵保養', '真空泵專用油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2952, 'N1089', '半年', '真空泵保養', '活塞', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2953, 'N1150', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2954, 'N1150', '月', '過濾器清潔，濾芯、氣管更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2955, 'N1150', '月', '潔淨器功能點檢', '潔淨器', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2956, 'N1150', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2957, 'N1150', '半年', '真空泵保養', '真空泵專用油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2958, 'N1150', '半年', '自淨器/吸塵器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2959, 'N1150', '半年', '真空泵保養', '活塞', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2960, 'N1165', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2961, 'N1165', '月', '過濾器清潔，濾芯、氣管更換', '過濾器【先鋒搭載】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2962, 'N1165', '月', '過濾器清潔，濾芯、氣管更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2963, 'N1165', '月', '潔淨器功能點檢', '潔淨器', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2964, 'N1165', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2965, 'N1165', '半年', '各軸絲桿和滑塊保養', 'NSK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2966, 'N1165', '半年', '真空泵保養', '真空泵專用油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2967, 'N1165', '半年', '真空泵保養', '活塞', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2968, 'N1166', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2969, 'N1166', '月', '過濾器清潔，濾芯、氣管更換', '過濾器【先鋒搭載】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2970, 'N1166', '月', '過濾器清潔，濾芯、氣管更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2971, 'N1166', '月', '潔淨器功能點檢', '潔淨器', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2972, 'N1166', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2973, 'N1166', '半年', '各軸絲桿和滑塊保養', 'NSK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2974, 'N1166', '半年', '真空泵保養', '真空泵專用油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2975, 'N1166', '半年', '真空泵保養', '活塞', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2976, 'N1167', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2977, 'N1167', '月', '過濾器清潔，濾芯、氣管更換', '過濾器【先鋒搭載】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2978, 'N1167', '月', '過濾器清潔，濾芯、氣管更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2979, 'N1167', '月', '潔淨器功能點檢', '潔淨器', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2980, 'N1167', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2981, 'N1167', '半年', '各軸絲桿和滑塊保養', 'NSK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2982, 'N1167', '半年', '真空泵保養', '真空泵專用油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2983, 'N1167', '半年', '真空泵保養', '活塞', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2984, 'N1168', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2985, 'N1168', '月', '過濾器清潔，濾芯、氣管更換', '過濾器【先鋒搭載】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2986, 'N1168', '月', '過濾器清潔，濾芯、氣管更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2987, 'N1168', '月', '潔淨器功能點檢', '潔淨器', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2988, 'N1168', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2989, 'N1168', '半年', '各軸絲桿和滑塊保養', 'NSK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2990, 'N1168', '半年', '真空泵保養', '真空泵專用油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2991, 'N1168', '半年', '真空泵保養', '活塞', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2992, 'N1277', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2993, 'N1277', '月', '過濾器清潔，濾芯、氣管更換', '過濾器【先鋒搭載】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2994, 'N1277', '月', '過濾器清潔，濾芯、氣管更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2995, 'N1277', '月', '潔淨器功能點檢', '潔淨器', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2996, 'N1277', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2997, 'N1277', '半年', '各軸絲桿和滑塊保養', 'NSK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2998, 'N1277', '半年', '真空泵保養', '真空泵專用油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (2999, 'N1277', '半年', '真空泵保養', '活塞', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3000, 'N1278', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3001, 'N1278', '月', '過濾器清潔，濾芯、氣管更換', '過濾器【先鋒搭載】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3002, 'N1278', '月', '過濾器清潔，濾芯、氣管更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3003, 'N1278', '月', '潔淨器功能點檢', '潔淨器', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3004, 'N1278', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3005, 'N1278', '半年', '各軸絲桿和滑塊保養', 'NSK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3006, 'N1278', '半年', '真空泵保養', '真空泵專用油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3007, 'N1278', '半年', '真空泵保養', '活塞', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3008, 'N1392', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3009, 'N1392', '月', '過濾器清潔，濾芯、氣管更換', '過濾器【先鋒搭載】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3010, 'N1392', '月', '過濾器清潔，濾芯、氣管更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3011, 'N1392', '月', '潔淨器功能點檢', '潔淨器', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3012, 'N1392', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3013, 'N1392', '半年', '各軸絲桿和滑塊保養', 'NSK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3014, 'N1392', '半年', '真空泵保養', '真空泵專用油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3015, 'N1392', '半年', '真空泵保養', '活塞', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3016, 'N1638', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3017, 'N1638', '月', '過濾器清潔，濾芯、氣管更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3018, 'N1638', '月', '潔淨器功能點檢', '潔淨器', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3019, 'N1638', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3020, 'N1638', '半年', '真空泵保養', '真空泵專用油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3021, 'N1638', '半年', '自淨器/吸塵器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3022, 'N1638', '半年', '真空泵保養', '活塞', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3023, 'N1639', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3024, 'N1639', '月', '過濾器清潔，濾芯、氣管更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3025, 'N1639', '月', '潔淨器功能點檢', '潔淨器', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3026, 'N1639', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3027, 'N1639', '半年', '真空泵保養', '真空泵專用油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3028, 'N1639', '半年', '自淨器/吸塵器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3029, 'N1639', '半年', '真空泵保養', '活塞', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3030, 'N1640', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3031, 'N1640', '月', '過濾器清潔，濾芯、氣管更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3032, 'N1640', '月', '潔淨器功能點檢', '潔淨器', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3033, 'N1640', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3034, 'N1640', '半年', '真空泵保養', '真空泵專用油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3035, 'N1640', '半年', '自淨器/吸塵器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3036, 'N1640', '半年', '真空泵保養', '活塞', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3037, 'N1641', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3038, 'N1641', '月', '過濾器清潔，濾芯、氣管更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3039, 'N1641', '月', '潔淨器功能點檢', '潔淨器', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3040, 'N1641', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3041, 'N1641', '半年', '真空泵保養', '真空泵專用油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3042, 'N1641', '半年', '自淨器/吸塵器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3043, 'N1641', '半年', '真空泵保養', '活塞', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3044, 'N2585', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3045, 'N2585', '月', '過濾器清潔，濾芯、氣管更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3046, 'N2585', '月', '潔淨器功能點檢', '潔淨器', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3047, 'N2585', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3048, 'N2585', '半年', '真空泵保養', '真空泵專用油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3049, 'N2585', '半年', '真空泵保養', '活塞', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3050, 'N2650', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3051, 'N2650', '月', '過濾器清潔，濾芯、氣管更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3052, 'N2650', '月', '潔淨器功能點檢', '潔淨器', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3053, 'N2650', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3054, 'N2650', '半年', '真空泵保養', '真空泵專用油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3055, 'N2650', '半年', '真空泵保養', '活塞', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3056, 'N2651', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【微】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3057, 'N2651', '月', '潔淨器功能點檢', '潔淨器', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3058, 'N2651', '半年', '真空泵保養', '真空泵專用油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3059, 'N2651', '半年', '真空泵保養', '活塞', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3060, 'N2652', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【微】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3061, 'N2652', '月', '潔淨器功能點檢', '潔淨器', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3062, 'N2652', '半年', '真空泵保養', '真空泵專用油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3063, 'N2652', '半年', '真空泵保養', '活塞', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3064, 'N2653', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【微】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3065, 'N2653', '月', '潔淨器功能點檢', '潔淨器', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3066, 'N2653', '半年', '真空泵保養', '真空泵專用油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3067, 'N2653', '半年', '真空泵保養', '活塞', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3068, 'N2931', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【微】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3069, 'N2931', '月', '潔淨器功能點檢', '潔淨器', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3070, 'N2931', '半年', '真空泵保養', '真空泵專用油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3071, 'N2931', '半年', '真空泵保養', '活塞', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3072, 'N2933', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【微】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3073, 'N2933', '月', '潔淨器功能點檢', '潔淨器', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3074, 'N2933', '半年', '真空泵保養', '真空泵專用油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3075, 'N2933', '半年', '真空泵保養', '活塞', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3076, 'N2654', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【微】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3077, 'N2654', '月', '潔淨器功能點檢', '潔淨器', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3078, 'N2654', '半年', '真空泵保養', '真空泵專用油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3079, 'N2654', '半年', '真空泵保養', '活塞', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3080, 'N3392', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【微】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3081, 'N3392', '月', '潔淨器功能點檢', '潔淨器', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3082, 'N3392', '半年', '真空泵保養', '真空泵專用油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3083, 'N3392', '半年', '真空泵保養', '活塞', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3084, 'N3393', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【微】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3085, 'N3393', '月', '潔淨器功能點檢', '潔淨器', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3086, 'N3393', '半年', '真空泵保養', '真空泵專用油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3087, 'N3393', '半年', '真空泵保養', '活塞', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3088, 'N3410', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【微】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3089, 'N3410', '月', '潔淨器功能點檢', '潔淨器', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3090, 'N3410', '半年', '真空泵保養', '真空泵專用油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3091, 'N3410', '半年', '真空泵保養', '活塞', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3092, 'N3411', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【微】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3093, 'N3411', '月', '潔淨器功能點檢', '潔淨器', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3094, 'N3411', '半年', '真空泵保養', '真空泵專用油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3095, 'N3411', '半年', '真空泵保養', '活塞', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3096, 'N3413', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【微】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3097, 'N3413', '月', '潔淨器功能點檢', '潔淨器', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3098, 'N3413', '半年', '真空泵保養', '真空泵專用油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3099, 'N3413', '半年', '真空泵保養', '活塞', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3100, 'N3414', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【微】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3101, 'N3414', '月', '潔淨器功能點檢', '潔淨器', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3102, 'N3414', '半年', '真空泵保養', '真空泵專用油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3103, 'N3414', '半年', '真空泵保養', '活塞', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3104, 'N1147', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3105, 'N1147', '月', '過濾器清潔，濾芯、氣管更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3106, 'N1147', '月', '潔淨器功能點檢', '潔淨器', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3107, 'N1147', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3108, 'N1147', '半年', '真空泵保養', '真空泵專用油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3109, 'N1147', '半年', '自淨器/吸塵器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3110, 'N1147', '半年', '真空泵保養', '活塞', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3111, 'N1148', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3112, 'N1148', '月', '過濾器清潔，濾芯、氣管更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3113, 'N1148', '月', '潔淨器功能點檢', '潔淨器', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3114, 'N1148', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3115, 'N1148', '半年', '真空泵保養', '真空泵專用油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3116, 'N1148', '半年', '自淨器/吸塵器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3117, 'N1148', '半年', '真空泵保養', '活塞', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3118, 'N1149', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3119, 'N1149', '月', '過濾器清潔，濾芯、氣管更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3120, 'N1149', '月', '潔淨器功能點檢', '潔淨器', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3121, 'N1149', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3122, 'N1149', '半年', '真空泵保養', '真空泵專用油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3123, 'N1149', '半年', '自淨器/吸塵器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3124, 'N1149', '半年', '真空泵保養', '活塞', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3125, 'N1288', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3126, 'N1288', '月', '過濾器清潔，濾芯、氣管更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3127, 'N1288', '月', '潔淨器功能點檢', '潔淨器', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3128, 'N1288', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3129, 'N1288', '半年', '真空泵保養', '真空泵專用油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3130, 'N1288', '半年', '自淨器/吸塵器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3131, 'N1288', '半年', '真空泵保養', '活塞', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3132, 'N1289', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3133, 'N1289', '月', '過濾器清潔，濾芯、氣管更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3134, 'N1289', '月', '潔淨器功能點檢', '潔淨器', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3135, 'N1289', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3136, 'N1289', '半年', '真空泵保養', '真空泵專用油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3137, 'N1289', '半年', '自淨器/吸塵器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3138, 'N1289', '半年', '真空泵保養', '活塞', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3139, 'N1290', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3140, 'N1290', '月', '過濾器清潔，濾芯、氣管更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3141, 'N1290', '月', '潔淨器功能點檢', '潔淨器', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3142, 'N1290', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3143, 'N1290', '半年', '真空泵保養', '真空泵專用油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3144, 'N1290', '半年', '自淨器/吸塵器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3145, 'N1290', '半年', '真空泵保養', '活塞', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3146, 'N1291', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3147, 'N1291', '月', '過濾器清潔，濾芯、氣管更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3148, 'N1291', '月', '潔淨器功能點檢', '潔淨器', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3149, 'N1291', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3150, 'N1291', '半年', '真空泵保養', '真空泵專用油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3151, 'N1291', '半年', '自淨器/吸塵器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3152, 'N1291', '半年', '真空泵保養', '活塞', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3153, 'N2043', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3154, 'N2043', '月', '過濾器清潔，濾芯、氣管更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3155, 'N2043', '月', '潔淨器功能點檢', '潔淨器', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3156, 'N2043', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3157, 'N2043', '半年', '真空泵保養', '真空泵專用油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3158, 'N2043', '半年', '真空泵保養', '活塞', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3159, 'N2304', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3160, 'N2304', '月', '過濾器清潔，濾芯、氣管更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3161, 'N2304', '月', '潔淨器功能點檢', '潔淨器', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3162, 'N2304', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3163, 'N2304', '半年', '真空泵保養', '真空泵專用油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3164, 'N2304', '半年', '自淨器/吸塵器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3165, 'N2304', '半年', '真空泵保養', '活塞', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3166, 'N2305', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3167, 'N2305', '月', '過濾器清潔，濾芯、氣管更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3168, 'N2305', '月', '潔淨器功能點檢', '潔淨器', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3169, 'N2305', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3170, 'N2305', '半年', '真空泵保養', '真空泵專用油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3171, 'N2305', '半年', '自淨器/吸塵器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3172, 'N2305', '半年', '真空泵保養', '活塞', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3173, 'N2312', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3174, 'N2312', '月', '過濾器清潔，濾芯、氣管更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3175, 'N2312', '月', '潔淨器功能點檢', '潔淨器', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3176, 'N2312', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3177, 'N2312', '半年', '真空泵保養', '真空泵專用油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3178, 'N2312', '半年', '自淨器/吸塵器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3179, 'N2312', '半年', '真空泵保養', '活塞', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3180, 'N2313', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3181, 'N2313', '月', '過濾器清潔，濾芯、氣管更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3182, 'N2313', '月', '潔淨器功能點檢', '潔淨器', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3183, 'N2313', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3184, 'N2313', '半年', '真空泵保養', '真空泵專用油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3185, 'N2313', '半年', '自淨器/吸塵器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3186, 'N2313', '半年', '真空泵保養', '活塞', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3187, 'N1552', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 3);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3188, 'N1552', '月', '過濾器清潔，濾芯、氣管更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3189, 'N1552', '月', '潔淨器功能點檢', '潔淨器', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3190, 'N1552', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3191, 'N1552', '半年', '真空泵保養', '真空泵專用油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3192, 'N1552', '半年', '自淨器/吸塵器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3193, 'N1552', '半年', '真空泵保養', '活塞', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3194, 'N1593', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 3);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3195, 'N1593', '月', '過濾器清潔，濾芯、氣管更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3196, 'N1593', '月', '潔淨器功能點檢', '潔淨器', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3197, 'N1593', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3198, 'N1593', '半年', '真空泵保養', '真空泵專用油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3199, 'N1593', '半年', '自淨器/吸塵器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3200, 'N1593', '半年', '真空泵保養', '活塞', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3201, 'N1600', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 3);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3202, 'N1600', '月', '過濾器清潔，濾芯、氣管更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3203, 'N1600', '月', '潔淨器功能點檢', '潔淨器', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3204, 'N1600', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3205, 'N1600', '半年', '真空泵保養', '真空泵專用油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3206, 'N1600', '半年', '自淨器/吸塵器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3207, 'N1600', '半年', '真空泵保養', '活塞', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3208, 'N1718', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 3);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3209, 'N1718', '月', '過濾器清潔，濾芯、氣管更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3210, 'N1718', '月', '潔淨器功能點檢', '潔淨器', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3211, 'N1718', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3212, 'N1718', '半年', '真空泵保養', '真空泵專用油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3213, 'N1718', '半年', '自淨器/吸塵器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3214, 'N1718', '半年', '真空泵保養', '活塞', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3215, 'N1845', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3216, 'N1845', '月', '過濾器清潔，濾芯、氣管更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3217, 'N1845', '月', '潔淨器功能點檢', '潔淨器', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3218, 'N1845', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3219, 'N1845', '半年', '真空泵保養', '真空泵專用油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3220, 'N1845', '半年', '自淨器/吸塵器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3221, 'N1845', '半年', '真空泵保養', '活塞', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3222, 'N1846', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3223, 'N1846', '月', '過濾器清潔，濾芯、氣管更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3224, 'N1846', '月', '潔淨器功能點檢', '潔淨器', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3225, 'N1846', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3226, 'N1846', '半年', '真空泵保養', '真空泵專用油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3227, 'N1846', '半年', '自淨器/吸塵器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3228, 'N1846', '半年', '真空泵保養', '活塞', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3229, 'N1889', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3230, 'N1889', '月', '過濾器清潔，濾芯、氣管更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3231, 'N1889', '月', '潔淨器功能點檢', '潔淨器', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3232, 'N1889', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3233, 'N1889', '半年', '真空泵保養', '真空泵專用油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3234, 'N1889', '半年', '自淨器/吸塵器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3235, 'N1889', '半年', '真空泵保養', '活塞', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3236, 'N1890', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3237, 'N1890', '月', '過濾器清潔，濾芯、氣管更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3238, 'N1890', '月', '潔淨器功能點檢', '潔淨器', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3239, 'N1890', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3240, 'N1890', '半年', '真空泵保養', '真空泵專用油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3241, 'N1890', '半年', '自淨器/吸塵器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3242, 'N1890', '半年', '真空泵保養', '活塞', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3243, 'N1982', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3244, 'N1982', '月', '過濾器清潔，濾芯、氣管更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3245, 'N1982', '月', '潔淨器功能點檢', '潔淨器', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3246, 'N1982', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3247, 'N1982', '半年', '真空泵保養', '真空泵專用油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3248, 'N1982', '半年', '自淨器/吸塵器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3249, 'N1982', '半年', '真空泵保養', '活塞', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3250, 'N1983', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3251, 'N1983', '月', '過濾器清潔，濾芯、氣管更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3252, 'N1983', '月', '潔淨器功能點檢', '潔淨器', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3253, 'N1983', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3254, 'N1983', '半年', '真空泵保養', '真空泵專用油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3255, 'N1983', '半年', '自淨器/吸塵器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3256, 'N1983', '半年', '真空泵保養', '活塞', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3257, 'N2058', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3258, 'N2058', '月', '過濾器清潔，濾芯、氣管更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3259, 'N2058', '月', '潔淨器功能點檢', '潔淨器', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3260, 'N2058', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3261, 'N2058', '半年', '真空泵保養', '真空泵專用油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3262, 'N2058', '半年', '自淨器/吸塵器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3263, 'N2058', '半年', '真空泵保養', '活塞', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3264, 'N2059', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3265, 'N2059', '月', '過濾器清潔，濾芯、氣管更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3266, 'N2059', '月', '潔淨器功能點檢', '潔淨器', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3267, 'N2059', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3268, 'N2059', '半年', '真空泵保養', '真空泵專用油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3269, 'N2059', '半年', '自淨器/吸塵器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3270, 'N2059', '半年', '真空泵保養', '活塞', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3271, 'N2044', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3272, 'N2044', '月', '過濾器清潔，濾芯、氣管更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3273, 'N2044', '月', '潔淨器功能點檢', '潔淨器', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3274, 'N2044', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3275, 'N2044', '半年', '真空泵保養', '真空泵專用油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3276, 'N2044', '半年', '自淨器/吸塵器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3277, 'N2044', '半年', '真空泵保養', '活塞', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3278, 'N2045', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3279, 'N2045', '月', '過濾器清潔，濾芯、氣管更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3280, 'N2045', '月', '潔淨器功能點檢', '潔淨器', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3281, 'N2045', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3282, 'N2045', '半年', '真空泵保養', '真空泵專用油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3283, 'N2045', '半年', '自淨器/吸塵器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3284, 'N2045', '半年', '真空泵保養', '活塞', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3285, 'N2825', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3286, 'N2825', '月', '過濾器清潔，濾芯、氣管更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3287, 'N2825', '月', '潔淨器功能點檢', '潔淨器', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3288, 'N2825', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3289, 'N2825', '半年', '真空泵保養', '真空泵專用油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3290, 'N2825', '半年', '自淨器/吸塵器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3291, 'N2825', '半年', '真空泵保養', '活塞', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3292, 'N2826', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3293, 'N2826', '月', '過濾器清潔，濾芯、氣管更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3294, 'N2826', '月', '潔淨器功能點檢', '潔淨器', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3295, 'N2826', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3296, 'N2826', '半年', '真空泵保養', '真空泵專用油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3297, 'N2826', '半年', '自淨器/吸塵器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3298, 'N2826', '半年', '真空泵保養', '活塞', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3299, 'N2621', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3300, 'N2621', '月', '過濾器清潔，濾芯、氣管更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3301, 'N2621', '月', '潔淨器功能點檢', '潔淨器', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3302, 'N2621', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3303, 'N2621', '半年', '真空泵保養', '真空泵專用油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3304, 'N2621', '半年', '自淨器/吸塵器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3305, 'N2621', '半年', '真空泵保養', '活塞', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3306, 'N3103', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3307, 'N3103', '月', '過濾器清潔，濾芯、氣管更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3308, 'N3103', '月', '潔淨器功能點檢', '潔淨器', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3309, 'N3103', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3310, 'N3103', '半年', '真空泵保養', '真空泵專用油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3311, 'N3103', '半年', '自淨器/吸塵器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3312, 'N3103', '半年', '真空泵保養', '活塞', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3313, 'N3104', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3314, 'N3104', '月', '過濾器清潔，濾芯、氣管更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3315, 'N3104', '月', '潔淨器功能點檢', '潔淨器', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3316, 'N3104', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3317, 'N3104', '半年', '真空泵保養', '真空泵專用油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3318, 'N3104', '半年', '自淨器/吸塵器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3319, 'N3104', '半年', '真空泵保養', '活塞', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3320, 'N2622', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3321, 'N2622', '月', '過濾器清潔，濾芯、氣管更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3322, 'N2622', '月', '潔淨器功能點檢', '潔淨器', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3323, 'N2622', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3324, 'N2622', '半年', '真空泵保養', '真空泵專用油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3325, 'N2622', '半年', '自淨器/吸塵器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3326, 'N2622', '半年', '真空泵保養', '活塞', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3327, 'N3050', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3328, 'N3050', '月', '過濾器清潔，濾芯、氣管更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3329, 'N3050', '月', '潔淨器功能點檢', '潔淨器', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3330, 'N3050', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3331, 'N3050', '半年', '真空泵保養', '真空泵專用油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3332, 'N3050', '半年', '自淨器/吸塵器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3333, 'N3050', '半年', '真空泵保養', '活塞', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3334, 'N3051', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3335, 'N3051', '月', '過濾器清潔，濾芯、氣管更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3336, 'N3051', '月', '潔淨器功能點檢', '潔淨器', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3337, 'N3051', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3338, 'N3051', '半年', '真空泵保養', '真空泵專用油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3339, 'N3051', '半年', '自淨器/吸塵器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3340, 'N3051', '半年', '真空泵保養', '活塞', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3341, 'N3060', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3342, 'N3060', '月', '過濾器清潔，濾芯、氣管更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3343, 'N3060', '月', '潔淨器功能點檢', '潔淨器', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3344, 'N3060', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3345, 'N3060', '半年', '真空泵保養', '真空泵專用油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3346, 'N3060', '半年', '自淨器/吸塵器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3347, 'N3060', '半年', '真空泵保養', '活塞', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3348, 'N3061', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3349, 'N3061', '月', '過濾器清潔，濾芯、氣管更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3350, 'N3061', '月', '潔淨器功能點檢', '潔淨器', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3351, 'N3061', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3352, 'N3061', '半年', '真空泵保養', '真空泵專用油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4491, 'N1826', '月', '濾網更換', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3353, 'N3061', '半年', '自淨器/吸塵器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3354, 'N3061', '半年', '真空泵保養', '活塞', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3355, 'N3090', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3356, 'N3090', '月', '過濾器清潔，濾芯、氣管更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3357, 'N3090', '月', '潔淨器功能點檢', '潔淨器', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3358, 'N3090', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3359, 'N3090', '半年', '真空泵保養', '真空泵專用油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3360, 'N3090', '半年', '自淨器/吸塵器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3361, 'N3090', '半年', '真空泵保養', '活塞', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3362, 'N3091', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3363, 'N3091', '月', '過濾器清潔，濾芯、氣管更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3364, 'N3091', '月', '潔淨器功能點檢', '潔淨器', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3365, 'N3091', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3366, 'N3091', '半年', '真空泵保養', '真空泵專用油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3367, 'N3091', '半年', '自淨器/吸塵器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3368, 'N3091', '半年', '真空泵保養', '活塞', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3369, 'N1994', '月', '機台內部清潔', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3370, 'N1994', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3371, 'N1994', '半年', '各軸絲桿和滑塊保養', 'AFE-CA油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3372, 'N1994', '半年', '自淨器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3373, 'N2751', '月', '機台內部清潔', '過濾器濾芯【小】', 6);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3374, 'N2751', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3375, 'N2751', '半年', '各軸絲桿和滑塊保養', 'AFE-CA油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3376, 'N2751', '半年', '自淨器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3377, 'N2752', '月', '機台內部清潔', '過濾器濾芯【小】', 8);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3378, 'N2752', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3379, 'N2752', '半年', '各軸絲桿和滑塊保養', 'AFE-CA油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3380, 'N2752', '半年', '自淨器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3381, 'N2291', '月', '機台內部清潔', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3382, 'N2291', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3383, 'N2291', '半年', '各軸絲桿和滑塊保養', 'AFE-CA油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3384, 'N2291', '半年', '自淨器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3385, 'N1995', '月', '機台內部清潔', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3386, 'N1995', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3387, 'N1995', '半年', '各軸絲桿和滑塊保養', 'AFE-CA油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3388, 'N1995', '半年', '自淨器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3389, 'N2292', '月', '機台內部清潔', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3390, 'N2292', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3391, 'N2292', '半年', '各軸絲桿和滑塊保養', 'AFE-CA油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3392, 'N2292', '半年', '自淨器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3393, 'N1887', '月', '機台內部清潔', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3394, 'N1887', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3395, 'N1887', '半年', '各軸絲桿和滑塊保養', 'AFE-CA油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3396, 'N1887', '半年', '自淨器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3397, 'N2293', '月', '機台內部清潔', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3398, 'N2293', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3399, 'N2293', '半年', '各軸絲桿和滑塊保養', 'AFE-CA油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3400, 'N2293', '半年', '自淨器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3401, 'N1888', '月', '機台內部清潔', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3402, 'N1888', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3403, 'N1888', '半年', '各軸絲桿和滑塊保養', 'AFE-CA油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3404, 'N1888', '半年', '自淨器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3405, 'N1960', '月', '機台內部清潔', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3406, 'N1960', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3407, 'N1960', '半年', '各軸絲桿和滑塊保養', 'AFE-CA油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3408, 'N1960', '半年', '自淨器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3409, 'N1961', '月', '機台內部清潔', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3410, 'N1961', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3411, 'N1961', '半年', '各軸絲桿和滑塊保養', 'AFE-CA油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3412, 'N1961', '半年', '自淨器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3413, 'N2132', '月', '機台內部清潔', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3414, 'N2132', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3415, 'N2132', '半年', '各軸絲桿和滑塊保養', 'AFE-CA油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3416, 'N2132', '半年', '自淨器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3417, 'N2710', '月', '機台內部清潔', '過濾器濾芯【小】', 8);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3418, 'N2710', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3419, 'N2710', '半年', '各軸絲桿和滑塊保養', 'AFE-CA油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3420, 'N2710', '半年', '自淨器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3421, 'N2707', '月', '機台內部清潔', '過濾器濾芯【小】', 6);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3422, 'N2707', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3423, 'N2707', '半年', '各軸絲桿和滑塊保養', 'AFE-CA油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3424, 'N2707', '半年', '自淨器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3425, 'N2133', '月', '機台內部清潔', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3426, 'N2133', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3427, 'N2133', '半年', '各軸絲桿和滑塊保養', 'AFE-CA油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3428, 'N2133', '半年', '自淨器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3429, 'N2713', '月', '機台內部清潔', '過濾器濾芯【小】', 8);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3430, 'N2713', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3431, 'N2713', '半年', '各軸絲桿和滑塊保養', 'AFE-CA油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3432, 'N2713', '半年', '自淨器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3433, 'N2714', '月', '機台內部清潔', '過濾器濾芯【小】', 6);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3434, 'N2714', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3435, 'N2714', '半年', '各軸絲桿和滑塊保養', 'AFE-CA油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3436, 'N2714', '半年', '自淨器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3437, 'N2632', '月', '機台內部清潔', '過濾器濾芯【小】', 6);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3438, 'N2632', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3439, 'N2632', '半年', '各軸絲桿和滑塊保養', 'AFE-CA油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3440, 'N2632', '半年', '自淨器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3441, 'N2277', '月', '機台內部清潔', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3442, 'N2277', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3443, 'N2277', '半年', '各軸絲桿和滑塊保養', 'AFE-CA油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3444, 'N2277', '半年', '自淨器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3445, 'N1832', '月', '機台內部清潔', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3446, 'N1832', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3447, 'N1832', '半年', '各軸絲桿和滑塊保養', 'AFE-CA油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3448, 'N1832', '半年', '自淨器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3449, 'N2466', '月', '機台內部清潔', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3450, 'N2466', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3451, 'N2466', '半年', '各軸絲桿和滑塊保養', 'AFE-CA油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3452, 'N2466', '半年', '自淨器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3453, 'N2445', '月', '機台內部清潔', '過濾器濾芯【小】', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3454, 'N2445', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3455, 'N2445', '半年', '各軸絲桿和滑塊保養', 'AFE-CA油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3456, 'N2445', '半年', '自淨器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3457, 'N1833', '月', '機台內部清潔', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3458, 'N1833', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3459, 'N1833', '半年', '各軸絲桿和滑塊保養', 'AFE-CA油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3460, 'N1833', '半年', '自淨器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3461, 'N2467', '月', '機台內部清潔', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3462, 'N2467', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3463, 'N2467', '半年', '各軸絲桿和滑塊保養', 'AFE-CA油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3464, 'N2467', '半年', '自淨器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3465, 'N2196', '月', '機台內部清潔', '過濾器濾芯【小】', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3466, 'N2196', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3467, 'N2196', '半年', '各軸絲桿和滑塊保養', 'AFE-CA油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3468, 'N2196', '半年', '自淨器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3469, 'N2631', '月', '機台內部清潔', '過濾器濾芯【小】', 6);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3470, 'N2631', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3471, 'N2631', '半年', '各軸絲桿和滑塊保養', 'AFE-CA油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3472, 'N2631', '半年', '自淨器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3473, 'N2468', '月', '機台內部清潔', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3474, 'N2468', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3475, 'N2468', '半年', '各軸絲桿和滑塊保養', 'AFE-CA油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3476, 'N2468', '半年', '自淨器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3477, 'N1585', '月', '機台內部清潔', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3478, 'N1585', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3479, 'N1585', '半年', '各軸絲桿和滑塊保養', 'AFE-CA油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3480, 'N1585', '半年', '自淨器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3481, 'N1586', '月', '機台內部清潔', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3482, 'N1586', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3483, 'N1586', '半年', '各軸絲桿和滑塊保養', 'AFE-CA油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3484, 'N1586', '半年', '自淨器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3485, 'N1550', '月', '機台內部清潔', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3486, 'N1550', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3487, 'N1550', '半年', '各軸絲桿和滑塊保養', 'AFE-CA油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3488, 'N1550', '半年', '自淨器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3489, 'N1785', '月', '機台內部清潔', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3490, 'N1785', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3491, 'N1785', '半年', '各軸絲桿和滑塊保養', 'AFE-CA油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3492, 'N1785', '半年', '自淨器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3493, 'N1786', '月', '機台內部清潔', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3494, 'N1786', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3495, 'N1786', '半年', '各軸絲桿和滑塊保養', 'AFE-CA油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3496, 'N1786', '半年', '自淨器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3497, 'N1737', '月', '機台內部清潔', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3498, 'N1737', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3499, 'N1737', '半年', '各軸絲桿和滑塊保養', 'AFE-CA油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3500, 'N1737', '半年', '自淨器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3501, 'N1854', '月', '機台內部清潔', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3502, 'N1854', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3503, 'N1854', '半年', '各軸絲桿和滑塊保養', 'AFE-CA油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3504, 'N1854', '半年', '自淨器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3505, 'N1584', '月', '機台內部清潔', '過濾器濾芯【小】', 6);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3506, 'N1584', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3507, 'N1584', '半年', '各軸絲桿和滑塊保養', 'AFE-CA油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3508, 'N1584', '半年', '自淨器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3509, 'N1524', '月', '機台內部清潔', '過濾器濾芯【小】', 6);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3510, 'N1524', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3511, 'N1524', '半年', '各軸絲桿和滑塊保養', 'AFE-CA油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3512, 'N1524', '半年', '自淨器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3513, 'N1663', '月', '機台內部清潔', '過濾器濾芯【小】', 6);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3514, 'N1663', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3515, 'N1663', '半年', '各軸絲桿和滑塊保養', 'AFE-CA油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3516, 'N1663', '半年', '自淨器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3517, 'N1783', '月', '機台內部清潔', '過濾器濾芯【小】', 6);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3518, 'N1783', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3519, 'N1783', '半年', '各軸絲桿和滑塊保養', 'AFE-CA油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3520, 'N1783', '半年', '自淨器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3521, 'N1836', '月', '機台內部清潔', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3522, 'N1836', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3523, 'N1836', '半年', '自淨器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3524, 'N2708', '月', '機台內部清潔', '過濾器濾芯【小】', 6);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3525, 'N2708', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3526, 'N2708', '半年', '各軸絲桿和滑塊保養', 'AFE-CA油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3527, 'N2708', '半年', '自淨器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3528, 'N2446', '月', '機台內部清潔', '過濾器濾芯【小】', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3529, 'N2446', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3530, 'N2446', '半年', '自淨器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3531, 'N1844', '月', '機台內部清潔', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3532, 'N1844', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3533, 'N1844', '半年', '各軸絲桿和滑塊保養', 'AFE-CA油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3534, 'N1844', '半年', '自淨器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3535, 'N2295', '月', '機台內部清潔', '過濾器濾芯【小】', 3);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3536, 'N2295', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3537, 'N2295', '半年', '自淨器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3538, 'N2296', '月', '機台內部清潔', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3539, 'N2296', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3540, 'N2296', '半年', '自淨器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3541, 'N2302', '月', '機台內部清潔', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3542, 'N2302', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3543, 'N2302', '半年', '自淨器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3544, 'N1924', '月', '機台內部清潔', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3545, 'N1924', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3546, 'N1924', '半年', '各軸絲桿和滑塊保養', 'AFE-CA油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3547, 'N1924', '半年', '自淨器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3548, 'N2019', '月', '機台內部清潔', '過濾器濾芯【小】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3549, 'N2019', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3550, 'N2019', '半年', '各軸絲桿和滑塊保養', 'AFE-CA油脂', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3551, 'N2019', '半年', '自淨器濾網更換', '自淨器粗效過濾網', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3552, 'N1925', '月', '機台內部清潔', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3553, 'N1925', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3554, 'N1925', '半年', '各軸絲桿和滑塊保養', 'AFE-CA油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3555, 'N1925', '半年', '自淨器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3556, 'N3161', '月', '機台內部清潔', '過濾器濾芯【小】', 14);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3557, 'N3161', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3558, 'N3161', '半年', '各軸絲桿和滑塊保養', 'AFE-CA油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3559, 'N3161', '半年', '自淨器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3560, 'N3127', '月', '機台內部清潔', '過濾器濾芯【小】', 14);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3561, 'N3127', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3562, 'N3127', '半年', '各軸絲桿和滑塊保養', 'AFE-CA油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3563, 'N3127', '半年', '自淨器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3564, 'N3087', '月', '機台內部清潔', '過濾器濾芯【小】', 14);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3565, 'N3087', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3566, 'N3087', '半年', '各軸絲桿和滑塊保養', 'AFE-CA油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3567, 'N3087', '半年', '自淨器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3568, 'N3068', '月', '機台內部清潔', '過濾器濾芯【小】', 14);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3569, 'N3068', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3570, 'N3068', '半年', '各軸絲桿和滑塊保養', 'AFE-CA油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3571, 'N3068', '半年', '自淨器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3572, 'N1962', '月', '機台內部清潔', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3573, 'N1962', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3574, 'N1962', '半年', '各軸絲桿和滑塊保養', 'AFE-CA油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3575, 'N1962', '半年', '自淨器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3576, 'N2084', '月', '機台內部清潔', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3577, 'N2084', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3578, 'N2084', '半年', '各軸絲桿和滑塊保養', 'AFE-CA油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3579, 'N2084', '半年', '自淨器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3580, 'N2029', '月', '機台內部清潔', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3581, 'N2029', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3582, 'N2029', '半年', '各軸絲桿和滑塊保養', 'AFE-CA油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3583, 'N2029', '半年', '自淨器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3584, 'N2496', '月', '機台內部清潔', '過濾器濾芯【小】', 6);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3585, 'N2496', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3586, 'N2496', '半年', '各軸絲桿和滑塊保養', 'AFE-CA油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3587, 'N2496', '半年', '自淨器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3588, 'N2497', '月', '機台內部清潔', '過濾器濾芯【小】', 6);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3589, 'N2497', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3590, 'N2497', '半年', '各軸絲桿和滑塊保養', 'AFE-CA油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3591, 'N2497', '半年', '自淨器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3592, 'N2633', '月', '機台內部清潔', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3593, 'N2633', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3594, 'N2633', '半年', '各軸絲桿和滑塊保養', 'AFE-CA油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3595, 'N2633', '半年', '自淨器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3596, 'N2634', '月', '機台內部清潔', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3597, 'N2634', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3598, 'N2634', '半年', '各軸絲桿和滑塊保養', 'AFE-CA油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3599, 'N2634', '半年', '自淨器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3600, 'N2635', '月', '機台內部清潔', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3601, 'N2635', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3602, 'N2635', '半年', '各軸絲桿和滑塊保養', 'AFE-CA油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3603, 'N2635', '半年', '自淨器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3604, 'N2636', '月', '機台內部清潔', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3605, 'N2636', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3606, 'N2636', '半年', '各軸絲桿和滑塊保養', 'AFE-CA油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3607, 'N2636', '半年', '自淨器濾網更換', '自淨器粗效過濾網', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3608, 'N0388', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3609, 'N0388', '半年', '冷卻水過濾器濾芯更換', '冷卻水濾芯', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3610, 'N0388', '半年', '自淨器濾網更換', '自淨器粗效過濾網', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3611, 'N3394', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3612, 'N3394', '半年', '冷卻水過濾器濾芯更換', '冷卻水濾芯', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3613, 'N3394', '半年', '自淨器濾網更換', '自淨器粗效過濾網', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3614, 'N3412', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3615, 'N3412', '半年', '冷卻水過濾器濾芯更換', '冷卻水濾芯', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3616, 'N3412', '半年', '自淨器濾網更換', '自淨器粗效過濾網', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3617, 'N3415', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3618, 'N3415', '半年', '冷卻水過濾器濾芯更換', '冷卻水濾芯', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3619, 'N3415', '半年', '自淨器濾網更換', '自淨器粗效過濾網', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3620, 'N0718', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3621, 'N0718', '半年', '冷卻水過濾器濾芯更換', '冷卻水濾芯', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3622, 'N0718', '半年', '自淨器濾網更換', '自淨器粗效過濾網', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3623, 'N0839', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3624, 'N0839', '半年', '冷卻水過濾器濾芯更換', '冷卻水濾芯', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3625, 'N0839', '半年', '自淨器濾網更換', '自淨器粗效過濾網', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3626, 'N0389', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3627, 'N0389', '半年', '冷卻水過濾器濾芯更換', '冷卻水濾芯', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3628, 'N0389', '半年', '自淨器濾網更換', '自淨器粗效過濾網', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3629, 'N1273', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3630, 'N1273', '半年', '冷卻水過濾器濾芯更換', '冷卻水濾芯', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3631, 'N1273', '半年', '自淨器濾網更換', '自淨器粗效過濾網', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3632, 'N0391', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3633, 'N0391', '半年', '冷卻水過濾器濾芯更換', '冷卻水濾芯', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3634, 'N0391', '半年', '自淨器濾網更換', '自淨器粗效過濾網', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3635, 'N2655', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3636, 'N2655', '半年', '冷卻水過濾器濾芯更換', '冷卻水濾芯', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3637, 'N2655', '半年', '自淨器濾網更換', '自淨器粗效過濾網', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3638, 'N2656', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3639, 'N2656', '半年', '冷卻水過濾器濾芯更換', '冷卻水濾芯', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3640, 'N2656', '半年', '自淨器濾網更換', '自淨器粗效過濾網', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3641, 'N2934', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3642, 'N2934', '半年', '冷卻水過濾器濾芯更換', '冷卻水濾芯', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3643, 'N2934', '半年', '自淨器濾網更換', '自淨器粗效過濾網', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3644, 'N0386', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3645, 'N0386', '半年', '冷卻水過濾器濾芯更換', '冷卻水濾芯', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3646, 'N0386', '半年', '自淨器濾網更換', '自淨器粗效過濾網', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3647, 'N0810', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 5);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3648, 'N0810', '月', '過濾器清潔，濾芯、氣管更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3649, 'N0810', '月', '吸盤更換', '真空吸盤【小】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3650, 'N0810', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3651, 'N0863', '月', '過濾器清潔更換', '過濾器濾芯【小】', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3652, 'N0863', '月', '防黏料吸盤更換', '真空吸盤【小】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3653, 'N0863', '季度', '各軸絲桿和滑塊保養', '美孚油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3654, 'N0940', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 5);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3655, 'N0940', '月', '過濾器清潔，濾芯、氣管更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3656, 'N0940', '月', '吸盤更換', '真空吸盤【小】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3657, 'N0940', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3658, 'N0959', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 6);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3659, 'N0959', '月', '過濾器清潔，濾芯、氣管更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3660, 'N0959', '月', '吸盤更換', '真空吸盤【小】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3661, 'N0959', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3662, 'N1018', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 3);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3663, 'N1018', '月', '過濾器清潔，濾芯、氣管更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3664, 'N1018', '月', '吸盤更換', '真空吸盤【小】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3665, 'N1018', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3666, 'N1145', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 5);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3667, 'N1145', '月', '過濾器清潔，濾芯、氣管更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3668, 'N1145', '月', '吸盤更換', '真空吸盤【小】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3669, 'N1145', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3670, 'N1158', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 6);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3671, 'N1158', '月', '過濾器清潔，濾芯、氣管更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3672, 'N1158', '月', '吸盤更換', '真空吸盤【小】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3673, 'N1158', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3674, 'N1172', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 5);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3675, 'N1172', '月', '過濾器清潔，濾芯、氣管更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3676, 'N1172', '月', '吸盤更換', '真空吸盤【小】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3677, 'N1172', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3678, 'N1307', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 5);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3679, 'N1307', '月', '過濾器清潔，濾芯、氣管更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3680, 'N1307', '月', '吸盤更換', '真空吸盤【小】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3681, 'N1307', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3682, 'N1308', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 5);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3683, 'N1308', '月', '過濾器清潔，濾芯、氣管更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3684, 'N1308', '月', '吸盤更換', '真空吸盤【小】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3685, 'N1308', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3686, 'N1309', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 5);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3687, 'N1309', '月', '過濾器清潔，濾芯、氣管更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3688, 'N1309', '月', '吸盤更換', '真空吸盤【小】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3689, 'N1309', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3690, 'N1310', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 5);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3691, 'N1310', '月', '過濾器清潔，濾芯、氣管更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3692, 'N1310', '月', '吸盤更換', '真空吸盤【小】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3693, 'N1310', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3694, 'N1330', '月', '過濾器清潔更換', '過濾器濾芯【小】', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3695, 'N1330', '月', '防黏料吸盤更換', '真空吸盤【中】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3696, 'N1330', '季度', '各軸絲桿和滑塊保養', '美孚油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3697, 'N1331', '月', '過濾器清潔更換', '過濾器濾芯【小】', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3698, 'N1331', '月', '防黏料吸盤更換', '真空吸盤【中】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3699, 'N1331', '季度', '各軸絲桿和滑塊保養', '美孚油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3700, 'N1548', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 5);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3701, 'N1548', '月', '過濾器清潔，濾芯、氣管更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3702, 'N1548', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3703, 'N1591', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 5);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3704, 'N1591', '月', '過濾器清潔，濾芯、氣管更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3705, 'N1591', '月', '吸盤更換', '真空吸盤【小】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3706, 'N1591', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3707, 'N1592', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 5);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3708, 'N1592', '月', '過濾器清潔，濾芯、氣管更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3709, 'N1592', '月', '吸盤更換', '真空吸盤【小】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3710, 'N1592', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3711, 'N1636', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 5);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3712, 'N1636', '月', '過濾器清潔，濾芯、氣管更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3713, 'N1636', '月', '吸盤更換', '真空吸盤【小】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3714, 'N1636', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3715, 'N1698', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 7);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3716, 'N1698', '月', '過濾器清潔，濾芯、氣管更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3717, 'N1698', '月', '吸盤更換', '真空吸盤【小】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3718, 'N1698', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3719, 'N1699', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 6);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3720, 'N1699', '月', '過濾器清潔，濾芯、氣管更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3721, 'N1699', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3722, 'N1701', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 6);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3723, 'N1701', '月', '過濾器清潔，濾芯、氣管更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3724, 'N1701', '月', '吸盤更換', '真空吸盤【小】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3725, 'N1701', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3726, 'N1702', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 5);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3727, 'N1702', '月', '過濾器清潔，濾芯、氣管更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3728, 'N1702', '月', '吸盤更換', '真空吸盤【小】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3729, 'N1702', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3730, 'N1747', '月', '過濾器清潔更換', '過濾器濾芯【小】', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3731, 'N1747', '月', '防黏料吸盤更換', '真空吸盤【中】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3732, 'N1747', '季度', '各軸絲桿和滑塊保養', '美孚油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3733, 'N1824', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3734, 'N1824', '月', '過濾器清潔，濾芯、氣管更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3735, 'N1824', '月', '吸盤更換', '真空吸盤【小】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3736, 'N1824', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3737, 'N1883', '月', '過濾器清潔更換', '過濾器濾芯【小】', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3738, 'N1883', '月', '防黏料吸盤更換', '真空吸盤【中】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3739, 'N1883', '季度', '各軸絲桿和滑塊保養', '美孚油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3740, 'N1898', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 5);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3741, 'N1898', '月', '過濾器清潔，濾芯、氣管更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3742, 'N1898', '月', '吸盤更換', '真空吸盤【小】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3743, 'N1898', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3744, 'N1899', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 5);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3745, 'N1899', '月', '過濾器清潔，濾芯、氣管更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3746, 'N1899', '月', '吸盤更換', '真空吸盤【小】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3747, 'N1899', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3748, 'N1930', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 5);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3749, 'N1930', '月', '過濾器清潔，濾芯、氣管更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3750, 'N1930', '月', '吸盤更換', '真空吸盤【中】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3751, 'N1930', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3752, 'N1935', '月', '過濾器清潔更換', '過濾器濾芯【小】', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3753, 'N1935', '月', '防黏料吸盤更換', '真空吸盤【中】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3754, 'N1935', '季度', '各軸絲桿和滑塊保養', '美孚油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3755, 'N1939', '月', '過濾器清潔更換', '過濾器濾芯【小】', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3756, 'N1939', '月', '防黏料吸盤更換', '真空吸盤【中】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3757, 'N1939', '季度', '各軸絲桿和滑塊保養', '美孚油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3758, 'N1940', '月', '過濾器清潔更換', '過濾器濾芯【小】', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3759, 'N1940', '月', '防黏料吸盤更換', '真空吸盤【中】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3760, 'N1940', '季度', '各軸絲桿和滑塊保養', '美孚油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3761, 'N1966', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 6);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3762, 'N1966', '月', '過濾器清潔，濾芯、氣管更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3763, 'N1966', '月', '吸盤更換', '真空吸盤【中】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3764, 'N1966', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3765, 'N1967', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 3);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3766, 'N1967', '月', '過濾器清潔，濾芯、氣管更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3767, 'N1967', '月', '吸盤更換', '真空吸盤【中】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3768, 'N1967', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3769, 'N1997', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 3);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3770, 'N1997', '月', '過濾器清潔，濾芯、氣管更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3771, 'N1997', '月', '吸盤更換', '真空吸盤【中】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3772, 'N1997', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3773, 'N2000', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 3);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3774, 'N2000', '月', '過濾器清潔，濾芯、氣管更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3775, 'N2000', '月', '吸盤更換', '真空吸盤【中】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3776, 'N2000', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3777, 'N2022', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 3);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3778, 'N2022', '月', '過濾器清潔，濾芯、氣管更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3779, 'N2022', '月', '吸盤更換', '真空吸盤【中】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3780, 'N2022', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3781, 'N2023', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 3);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3782, 'N2023', '月', '過濾器清潔，濾芯、氣管更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3783, 'N2023', '月', '吸盤更換', '真空吸盤【中】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3784, 'N2023', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3785, 'N2072', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 3);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3786, 'N2072', '月', '過濾器清潔，濾芯、氣管更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3787, 'N2072', '月', '吸盤更換', '真空吸盤【中】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3788, 'N2072', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3789, 'N2073', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 3);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3790, 'N2073', '月', '過濾器清潔，濾芯、氣管更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3791, 'N2073', '月', '吸盤更換', '真空吸盤【中】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3792, 'N2073', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3793, 'N2074', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 3);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3794, 'N2074', '月', '過濾器清潔，濾芯、氣管更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3795, 'N2074', '月', '吸盤更換', '真空吸盤【中】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3796, 'N2074', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3797, 'N2075', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 3);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3798, 'N2075', '月', '過濾器清潔，濾芯、氣管更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3799, 'N2075', '月', '吸盤更換', '真空吸盤【中】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3800, 'N2075', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3801, 'N2076', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 3);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3802, 'N2076', '月', '過濾器清潔，濾芯、氣管更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3803, 'N2076', '月', '吸盤更換', '真空吸盤【中】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3804, 'N2076', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3805, 'N2077', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 3);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3806, 'N2077', '月', '過濾器清潔，濾芯、氣管更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3807, 'N2077', '月', '吸盤更換', '真空吸盤【中】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3808, 'N2077', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3809, 'N2136', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 3);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3810, 'N2136', '月', '過濾器清潔，濾芯、氣管更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3811, 'N2136', '月', '吸盤更換', '真空吸盤【中】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3812, 'N2136', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3813, 'N2137', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 3);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3814, 'N2137', '月', '過濾器清潔，濾芯、氣管更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3815, 'N2137', '月', '吸盤更換', '真空吸盤【中】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3816, 'N2137', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3817, 'N2161', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 3);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3818, 'N2161', '月', '過濾器清潔，濾芯、氣管更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3819, 'N2161', '月', '吸盤更換', '真空吸盤【中】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3820, 'N2161', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3821, 'N2183', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 3);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3822, 'N2183', '月', '過濾器清潔，濾芯、氣管更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3823, 'N2183', '月', '吸盤更換', '真空吸盤【中】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3824, 'N2183', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3825, 'N2192', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 3);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3826, 'N2192', '月', '過濾器清潔，濾芯、氣管更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3827, 'N2192', '月', '吸盤更換', '真空吸盤【中】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3828, 'N2192', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3829, 'N2193', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 3);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3830, 'N2193', '月', '過濾器清潔，濾芯、氣管更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3831, 'N2193', '月', '吸盤更換', '真空吸盤【中】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3832, 'N2193', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3833, 'N2194', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 3);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3834, 'N2194', '月', '過濾器清潔，濾芯、氣管更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3835, 'N2194', '月', '吸盤更換', '真空吸盤【中】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3836, 'N2194', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3837, 'N2507', '月', '過濾器清潔更換', '過濾器濾芯【小】', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3838, 'N2507', '月', '防黏料吸盤更換', '真空吸盤【中】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3839, 'N2507', '季度', '各軸絲桿和滑塊保養', '美孚油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3840, 'N2266', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 3);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3841, 'N2266', '月', '過濾器清潔，濾芯、氣管更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3842, 'N2266', '月', '吸盤更換', '真空吸盤【中】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3843, 'N2266', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3844, 'N2267', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 3);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3845, 'N2267', '月', '過濾器清潔，濾芯、氣管更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3846, 'N2267', '月', '吸盤更換', '真空吸盤【中】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3847, 'N2267', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3848, 'N2272', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 6);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3849, 'N2272', '月', '過濾器清潔，濾芯、氣管更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3850, 'N2272', '月', '吸盤更換', '真空吸盤【中】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3851, 'N2272', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3852, 'N2273', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 3);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3853, 'N2273', '月', '過濾器清潔，濾芯、氣管更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3854, 'N2273', '月', '吸盤更換', '真空吸盤【中】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3855, 'N2273', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3856, 'N2320', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 6);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3857, 'N2320', '月', '過濾器清潔，濾芯、氣管更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3858, 'N2320', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3859, 'N2352', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 3);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3860, 'N2352', '月', '過濾器清潔，濾芯、氣管更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3861, 'N2352', '月', '吸盤更換', '真空吸盤【中】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3862, 'N2352', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3863, 'N2353', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 3);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3864, 'N2353', '月', '過濾器清潔，濾芯、氣管更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3865, 'N2353', '月', '吸盤更換', '真空吸盤【中】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3866, 'N2353', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3867, 'N2354', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3868, 'N2354', '月', '過濾器清潔，濾芯、氣管更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3869, 'N2354', '月', '吸盤更換', '真空吸盤【中】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3870, 'N2354', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3871, 'N2355', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3872, 'N2355', '月', '過濾器清潔，濾芯、氣管更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3873, 'N2355', '月', '吸盤更換', '真空吸盤【中】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3874, 'N2355', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3875, 'N2356', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3876, 'N2356', '月', '過濾器清潔，濾芯、氣管更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3877, 'N2356', '月', '吸盤更換', '真空吸盤【中】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3878, 'N2356', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3879, 'N1999', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 3);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3880, 'N1999', '月', '過濾器清潔，濾芯、氣管更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3881, 'N1999', '月', '吸盤更換', '真空吸盤【中】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3882, 'N1999', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3883, 'N2321', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 6);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3884, 'N2321', '月', '過濾器清潔，濾芯、氣管更換', '軟尼龍管', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3885, 'N2321', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3886, 'N2380', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 10);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3887, 'N2380', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【中】', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3888, 'N2380', '月', '過濾器清潔，濾芯、氣管更換', '真空吸盤【小】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3889, 'N2380', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3890, 'N2380', '季度', '各軸絲桿和滑塊保養', 'THK-AFC油脂【針對直線運動】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3891, 'N2599', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 21);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3892, 'N2599', '季度', '過濾器清潔，濾芯、氣管更換', '極細聚氨酯軟管【黃色】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3893, 'N2599', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3894, 'N2601', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 21);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3895, 'N2601', '季度', '過濾器清潔，濾芯、氣管更換', '極細聚氨酯軟管【黃色】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3896, 'N2601', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3897, 'N2618', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 21);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3898, 'N2618', '季度', '過濾器清潔，濾芯、氣管更換', '極細聚氨酯軟管【黃色】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3899, 'N2618', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3900, 'N2619', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 21);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3901, 'N2619', '季度', '過濾器清潔，濾芯、氣管更換', '極細聚氨酯軟管【黃色】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3902, 'N2619', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3903, 'N2667', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 21);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3904, 'N2667', '季度', '過濾器清潔，濾芯、氣管更換', '極細聚氨酯軟管【黃色】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3905, 'N2667', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3906, 'N2675', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 21);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3907, 'N2675', '季度', '過濾器清潔，濾芯、氣管更換', '極細聚氨酯軟管【黃色】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3908, 'N2675', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3909, 'N2676', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 21);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3910, 'N2676', '季度', '過濾器清潔，濾芯、氣管更換', '極細聚氨酯軟管【黃色】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3911, 'N2676', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3912, 'N2677', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 21);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3913, 'N2677', '季度', '過濾器清潔，濾芯、氣管更換', '極細聚氨酯軟管【黃色】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3914, 'N2677', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3915, 'N2678', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 21);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3916, 'N2678', '季度', '過濾器清潔，濾芯、氣管更換', '極細聚氨酯軟管【黃色】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3917, 'N2678', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3918, 'N2754', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 21);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3919, 'N2754', '季度', '過濾器清潔，濾芯、氣管更換', '極細聚氨酯軟管【黃色】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3920, 'N2754', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3921, 'N2755', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 21);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3922, 'N2755', '季度', '過濾器清潔，濾芯、氣管更換', '極細聚氨酯軟管【黃色】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3923, 'N2755', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3924, 'N2756', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 21);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3925, 'N2756', '季度', '過濾器清潔，濾芯、氣管更換', '極細聚氨酯軟管【黃色】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3926, 'N2756', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3927, 'N2757', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 21);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3928, 'N2757', '季度', '過濾器清潔，濾芯、氣管更換', '極細聚氨酯軟管【黃色】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3929, 'N2757', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3930, 'N2758', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 21);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3931, 'N2758', '季度', '過濾器清潔，濾芯、氣管更換', '極細聚氨酯軟管【黃色】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3932, 'N2758', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3933, 'N2759', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 21);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3934, 'N2759', '季度', '過濾器清潔，濾芯、氣管更換', '極細聚氨酯軟管【黃色】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3935, 'N2759', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3936, 'N2898', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 10);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3937, 'N2898', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【中】', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3938, 'N2898', '月', '過濾器清潔，濾芯、氣管更換', '真空吸盤【小】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3939, 'N2898', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3940, 'N2898', '季度', '各軸絲桿和滑塊保養', 'THK-AFC油脂【針對直線運動】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3941, 'N2900', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 10);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3942, 'N2900', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【中】', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3943, 'N2900', '月', '過濾器清潔，濾芯、氣管更換', '真空吸盤【小】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3944, 'N2900', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3945, 'N2900', '季度', '各軸絲桿和滑塊保養', 'THK-AFC油脂【針對直線運動】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3946, 'N2914', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 21);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3947, 'N2914', '季度', '過濾器清潔，濾芯、氣管更換', '極細聚氨酯軟管【黃色】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3948, 'N2914', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3949, 'N2915', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 21);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3950, 'N2915', '季度', '過濾器清潔，濾芯、氣管更換', '極細聚氨酯軟管【黃色】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3951, 'N2915', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3952, 'N2951', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 10);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3953, 'N2951', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【中】', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3954, 'N2951', '月', '過濾器清潔，濾芯、氣管更換', '真空吸盤【小】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3955, 'N2951', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3956, 'N2951', '季度', '各軸絲桿和滑塊保養', 'THK-AFC油脂【針對直線運動】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3957, 'N3118', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 21);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3958, 'N3118', '季度', '過濾器清潔，濾芯、氣管更換', '極細聚氨酯軟管【黃色】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3959, 'N3118', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3960, 'N3274', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 21);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3961, 'N3274', '季度', '過濾器清潔，濾芯、氣管更換', '極細聚氨酯軟管【黃色】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3962, 'N3274', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3963, 'N3273', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 21);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3964, 'N3273', '季度', '過濾器清潔，濾芯、氣管更換', '極細聚氨酯軟管【黃色】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3965, 'N3273', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3966, 'N3272', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 21);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3967, 'N3272', '季度', '過濾器清潔，濾芯、氣管更換', '極細聚氨酯軟管【黃色】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3968, 'N3272', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3969, 'N3238', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 10);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3970, 'N3238', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【中】', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3971, 'N3238', '月', '過濾器清潔，濾芯、氣管更換', '真空吸盤【小】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3972, 'N3238', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3973, 'N3238', '季度', '各軸絲桿和滑塊保養', 'THK-AFC油脂【針對直線運動】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3974, 'N2942', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 10);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3975, 'N2942', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【中】', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3976, 'N2942', '月', '過濾器清潔，濾芯、氣管更換', '真空吸盤【小】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3977, 'N2942', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3978, 'N2942', '季度', '各軸絲桿和滑塊保養', 'THK-AFC油脂【針對直線運動】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3979, 'N2943', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 10);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3980, 'N2943', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【中】', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3981, 'N2943', '月', '過濾器清潔，濾芯、氣管更換', '真空吸盤【小】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3982, 'N2943', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3983, 'N2943', '季度', '各軸絲桿和滑塊保養', 'THK-AFC油脂【針對直線運動】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3984, 'N2949', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 10);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3985, 'N2949', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【中】', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3986, 'N2949', '月', '過濾器清潔，濾芯、氣管更換', '真空吸盤【小】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3987, 'N2949', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3988, 'N2949', '季度', '各軸絲桿和滑塊保養', 'THK-AFC油脂【針對直線運動】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3989, 'N3294', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 21);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3990, 'N3294', '季度', '過濾器清潔，濾芯、氣管更換', '極細聚氨酯軟管【黃色】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3991, 'N3294', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3992, 'N3113', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 21);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3993, 'N3113', '季度', '過濾器清潔，濾芯、氣管更換', '極細聚氨酯軟管【黃色】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3994, 'N3113', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3995, 'N2948', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 10);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3996, 'N2948', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【中】', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3997, 'N2948', '月', '過濾器清潔，濾芯、氣管更換', '真空吸盤【小】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3998, 'N2948', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (3999, 'N2948', '季度', '各軸絲桿和滑塊保養', 'THK-AFC油脂【針對直線運動】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4000, 'N3237', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 10);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4001, 'N3237', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【中】', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4002, 'N3237', '月', '過濾器清潔，濾芯、氣管更換', '真空吸盤【小】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4003, 'N3237', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4004, 'N3237', '季度', '各軸絲桿和滑塊保養', 'THK-AFC油脂【針對直線運動】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4005, 'N2940', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 10);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4006, 'N2940', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【中】', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4007, 'N2940', '月', '過濾器清潔，濾芯、氣管更換', '真空吸盤【小】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4008, 'N2940', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4009, 'N2940', '季度', '各軸絲桿和滑塊保養', 'THK-AFC油脂【針對直線運動】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4010, 'N2945', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 10);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4011, 'N2945', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【中】', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4012, 'N2945', '月', '過濾器清潔，濾芯、氣管更換', '真空吸盤【小】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4013, 'N2945', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4014, 'N2945', '季度', '各軸絲桿和滑塊保養', 'THK-AFC油脂【針對直線運動】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4015, 'N2946', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 10);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4016, 'N2946', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【中】', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4017, 'N2946', '月', '過濾器清潔，濾芯、氣管更換', '真空吸盤【小】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4018, 'N2946', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4019, 'N2946', '季度', '各軸絲桿和滑塊保養', 'THK-AFC油脂【針對直線運動】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4020, 'N3293', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 21);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4021, 'N3293', '季度', '過濾器清潔，濾芯、氣管更換', '極細聚氨酯軟管【黃色】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4022, 'N3293', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4023, 'N2939', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 10);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4024, 'N2939', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【中】', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4025, 'N2939', '月', '過濾器清潔，濾芯、氣管更換', '真空吸盤【小】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4026, 'N2939', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4027, 'N2939', '季度', '各軸絲桿和滑塊保養', 'THK-AFC油脂【針對直線運動】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4028, 'N2944', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 10);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4029, 'N2944', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【中】', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4030, 'N2944', '月', '過濾器清潔，濾芯、氣管更換', '真空吸盤【小】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4031, 'N2944', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4032, 'N2944', '季度', '各軸絲桿和滑塊保養', 'THK-AFC油脂【針對直線運動】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4033, 'N3111', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 10);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4034, 'N3111', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【中】', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4035, 'N3111', '月', '過濾器清潔，濾芯、氣管更換', '真空吸盤【小】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4036, 'N3111', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4037, 'N3111', '季度', '各軸絲桿和滑塊保養', 'THK-AFC油脂【針對直線運動】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4038, 'N2947', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 14);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4039, 'N2947', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【中】', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4040, 'N2947', '月', '過濾器清潔，濾芯、氣管更換', '真空吸盤【小】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4041, 'N2947', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4042, 'N2947', '季度', '各軸絲桿和滑塊保養', 'THK-AFC油脂【針對直線運動】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4043, 'N3114', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 21);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4044, 'N3114', '季度', '過濾器清潔，濾芯、氣管更換', '極細聚氨酯軟管【黃色】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4045, 'N3114', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4046, 'N3119', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 21);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4047, 'N3119', '季度', '過濾器清潔，濾芯、氣管更換', '極細聚氨酯軟管【黃色】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4048, 'N3119', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4049, 'N3120', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 21);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4050, 'N3120', '季度', '過濾器清潔，濾芯、氣管更換', '極細聚氨酯軟管【黃色】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4051, 'N3120', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4052, 'N3112', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 10);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4053, 'N3112', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【中】', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4054, 'N3112', '月', '過濾器清潔，濾芯、氣管更換', '真空吸盤【小】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4055, 'N3112', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4056, 'N3112', '季度', '各軸絲桿和滑塊保養', 'THK-AFC油脂【針對直線運動】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4057, 'N3292', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 21);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4058, 'N3292', '季度', '過濾器清潔，濾芯、氣管更換', '極細聚氨酯軟管【黃色】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4059, 'N3292', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4060, 'N2916', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 21);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4061, 'N2916', '季度', '過濾器清潔，濾芯、氣管更換', '極細聚氨酯軟管【黃色】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4062, 'N2916', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4063, 'N3310', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 3);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4064, 'N3310', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【中】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4065, 'N3310', '月', '過濾器清潔，濾芯、氣管更換', '真空吸盤【小】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4066, 'N3310', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4067, 'N3310', '季度', '各軸絲桿和滑塊保養', 'THK-AFC油脂【針對直線運動】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4068, 'N3447', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4069, 'N3447', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【中】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4070, 'N3447', '月', '過濾器清潔，濾芯、氣管更換', '真空吸盤【小】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4071, 'N3447', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4072, 'N3447', '季度', '各軸絲桿和滑塊保養', 'THK-AFC油脂【針對直線運動】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4073, 'N3445', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4074, 'N3445', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【中】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4075, 'N3445', '月', '過濾器清潔，濾芯、氣管更換', '真空吸盤【小】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4076, 'N3445', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4077, 'N3445', '季度', '各軸絲桿和滑塊保養', 'THK-AFC油脂【針對直線運動】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4078, 'N3446', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4079, 'N3446', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【中】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4080, 'N3446', '月', '過濾器清潔，濾芯、氣管更換', '真空吸盤【小】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4081, 'N3446', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4082, 'N3446', '季度', '各軸絲桿和滑塊保養', 'THK-AFC油脂【針對直線運動】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4083, 'N0769', '月', '機台內部清潔', 'L-200油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4084, 'N0769', '半年', '自淨器濾網更換', '自淨器粗效過濾網', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4085, 'N0769', '半年', '冷卻水過濾器濾芯更換', '冷卻水濾芯', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4086, 'N0769', '年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4087, 'N0769', '年', '各軸絲桿和滑塊保養', 'NSK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4088, 'N0769', '年', '回轉泵保養', '阿爾卡特泵油', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4089, 'N1301', '月', '機台內部清潔', 'L-200油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4090, 'N1301', '半年', '冷卻水過濾器濾芯更換', '冷卻水濾芯', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4091, 'N1301', '年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4092, 'N1301', '年', '各軸絲桿和滑塊保養', 'NSK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4093, 'N1301', '年', '回轉泵保養', '阿爾卡特泵油', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4094, 'N2910', '月', '機台內部清潔', 'L-200油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4095, 'N2910', '半年', '冷卻水過濾器濾芯更換', '冷卻水濾芯', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4096, 'N2910', '年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4097, 'N2910', '年', '各軸絲桿和滑塊保養', 'NSK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4098, 'N2910', '年', '回轉泵保養', '阿爾卡特泵油', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4099, 'N2909', '月', '機台內部清潔', 'L-200油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4100, 'N2909', '半年', '冷卻水過濾器濾芯更換', '冷卻水濾芯', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4101, 'N2909', '年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4102, 'N2909', '年', '各軸絲桿和滑塊保養', 'NSK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4103, 'N2909', '年', '回轉泵保養', '阿爾卡特泵油', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4104, 'N1462', '月', '機台內部清潔', 'L-200油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4105, 'N1462', '半年', '冷卻水過濾器濾芯更換', '冷卻水濾芯', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4106, 'N1462', '年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4107, 'N1462', '年', '各軸絲桿和滑塊保養', 'NSK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4108, 'N1462', '年', '回轉泵保養', '阿爾卡特泵油', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4109, 'N1728', '月', '機台內部清潔', 'L-200油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4110, 'N1728', '半年', '冷卻水過濾器濾芯更換', '冷卻水濾芯', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4111, 'N1728', '年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4112, 'N1728', '年', '各軸絲桿和滑塊保養', 'NSK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4113, 'N1728', '年', '回轉泵保養', '阿爾卡特泵油', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4114, 'N3390', '月', '機台內部清潔', 'L-200油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4115, 'N3390', '半年', '冷卻水過濾器濾芯更換', '冷卻水濾芯', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4116, 'N3390', '年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4117, 'N3390', '年', '各軸絲桿和滑塊保養', 'NSK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4118, 'N3390', '年', '回轉泵保養', '阿爾卡特泵油', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4119, 'N3391', '月', '機台內部清潔', 'L-200油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4120, 'N3391', '半年', '冷卻水過濾器濾芯更換', '冷卻水濾芯', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4121, 'N3391', '年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4122, 'N3391', '年', '各軸絲桿和滑塊保養', 'NSK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4123, 'N3391', '年', '回轉泵保養', '阿爾卡特泵油', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4124, 'N3280', '月', '機台內部清潔', 'L-200油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4125, 'N3280', '半年', '冷卻水過濾器濾芯更換', '冷卻水濾芯', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4126, 'N3280', '年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4127, 'N3280', '年', '各軸絲桿和滑塊保養', 'NSK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4128, 'N3280', '年', '回轉泵保養', '阿爾卡特泵油', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4129, 'N3306', '月', '機台內部清潔', 'L-200油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4130, 'N3306', '半年', '冷卻水過濾器濾芯更換', '冷卻水濾芯', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4131, 'N3306', '年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4132, 'N3306', '年', '各軸絲桿和滑塊保養', 'NSK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4133, 'N3306', '年', '回轉泵保養', '阿爾卡特泵油', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4134, 'N3099', '月', '機台內部清潔', 'L-200油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4135, 'N3099', '半年', '冷卻水過濾器濾芯更換', '冷卻水濾芯', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4136, 'N3099', '年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4137, 'N3099', '年', '各軸絲桿和滑塊保養', 'NSK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4138, 'N3099', '年', '回轉泵保養', '阿爾卡特泵油', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4139, 'N1736', '月', '機台內部清潔', 'L-200油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4140, 'N1736', '半年', '冷卻水過濾器濾芯更換', '冷卻水濾芯', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4141, 'N1736', '年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4142, 'N1736', '年', '各軸絲桿和滑塊保養', 'NSK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4143, 'N1736', '年', '回轉泵保養', '阿爾卡特泵油', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4144, 'N1751', '月', '機台內部清潔', 'L-200油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4145, 'N1751', '半年', '冷卻水過濾器濾芯更換', '冷卻水濾芯', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4146, 'N1751', '年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4147, 'N1751', '年', '各軸絲桿和滑塊保養', 'NSK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4148, 'N1751', '年', '回轉泵保養', '阿爾卡特泵油', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4149, 'N1752', '月', '機台內部清潔', 'L-200油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4150, 'N1752', '半年', '冷卻水過濾器濾芯更換', '冷卻水濾芯', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4151, 'N1752', '年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4152, 'N1752', '年', '各軸絲桿和滑塊保養', 'NSK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4153, 'N1752', '年', '回轉泵保養', '阿爾卡特泵油', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4154, 'N1753', '月', '機台內部清潔', 'L-200油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4155, 'N1753', '半年', '冷卻水過濾器濾芯更換', '冷卻水濾芯', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4156, 'N1753', '年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4157, 'N1753', '年', '各軸絲桿和滑塊保養', 'NSK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4158, 'N1753', '年', '回轉泵保養', '阿爾卡特泵油', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4159, 'N1754', '月', '機台內部清潔', 'L-200油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4160, 'N1754', '半年', '冷卻水過濾器濾芯更換', '冷卻水濾芯', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4161, 'N1754', '年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4162, 'N1754', '年', '各軸絲桿和滑塊保養', 'NSK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4163, 'N1754', '年', '回轉泵保養', '阿爾卡特泵油', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4164, 'N1738', '月', '機台內部清潔', 'L-200油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4165, 'N1738', '半年', '冷卻水過濾器濾芯更換', '冷卻水濾芯', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4166, 'N1738', '年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4167, 'N1738', '年', '各軸絲桿和滑塊保養', 'NSK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4168, 'N1738', '年', '回轉泵保養', '阿爾卡特泵油', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4169, 'N1897', '月', '機台內部清潔', 'L-200油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4170, 'N1897', '半年', '冷卻水過濾器濾芯更換', '冷卻水濾芯', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4171, 'N1897', '年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4172, 'N1897', '年', '各軸絲桿和滑塊保養', 'NSK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4173, 'N1897', '年', '回轉泵保養', '阿爾卡特泵油', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4174, 'N1990', '月', '機台內部清潔', 'L-200油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4175, 'N1990', '半年', '冷卻水過濾器濾芯更換', '冷卻水濾芯', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4176, 'N1990', '年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4177, 'N1990', '年', '各軸絲桿和滑塊保養', 'NSK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4178, 'N1990', '年', '回轉泵保養', '阿爾卡特泵油', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4179, 'N2066', '月', '機台內部清潔', 'L-200油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4180, 'N2066', '半年', '冷卻水過濾器濾芯更換', '冷卻水濾芯', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4181, 'N2066', '年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4182, 'N2066', '年', '各軸絲桿和滑塊保養', 'NSK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4183, 'N2066', '年', '回轉泵保養', '阿爾卡特泵油', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4184, 'N2131', '月', '機台內部清潔', 'L-200油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4185, 'N2131', '半年', '冷卻水過濾器濾芯更換', '冷卻水濾芯', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4186, 'N2131', '年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4187, 'N2131', '年', '各軸絲桿和滑塊保養', 'NSK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4188, 'N2131', '年', '回轉泵保養', '阿爾卡特泵油', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4189, 'N2648', '月', '機台內部清潔', 'L-200油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4190, 'N2648', '半年', '冷卻水過濾器濾芯更換', '冷卻水濾芯', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4191, 'N2648', '年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4192, 'N2648', '年', '各軸絲桿和滑塊保養', 'NSK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4193, 'N2648', '年', '回轉泵保養', '阿爾卡特泵油', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4194, 'N2138', '月', '機台內部清潔', 'L-200油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4195, 'N2138', '半年', '冷卻水過濾器濾芯更換', '冷卻水濾芯', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4196, 'N2138', '年', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4197, 'N2138', '年', '各軸絲桿和滑塊保養', 'NSK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4198, 'N2138', '年', '回轉泵保養', '阿爾卡特泵油', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4199, 'N0927', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4200, 'N0927', '年', '回轉泵保養', '機械泵油R7', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4201, 'N2027', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4202, 'N2027', '年', '回轉泵保養', '機械泵油R7', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4203, 'N2028', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4204, 'N2028', '年', '回轉泵保養', '機械泵油R7', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4205, 'N3284', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4206, 'N3284', '年', '回轉泵保養', '機械泵油R7', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4207, 'N3287', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4208, 'N3287', '年', '回轉泵保養', '機械泵油R7', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4209, 'N3285', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4210, 'N3285', '年', '回轉泵保養', '機械泵油R7', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4211, 'N3288', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4212, 'N3288', '年', '回轉泵保養', '機械泵油R7', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4213, 'N3289', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4214, 'N3289', '年', '回轉泵保養', '機械泵油R7', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4215, 'N3286', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4216, 'N3286', '年', '回轉泵保養', '機械泵油R7', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4217, 'N1811', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4218, 'N1811', '年', '回轉泵保養', '機械泵油R7', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4219, 'N0928', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4220, 'N0928', '年', '回轉泵保養', '機械泵油R7', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4221, 'N0885', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4222, 'N0885', '年', '回轉泵保養', '機械泵油R7', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4223, 'N0886', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4224, 'N0886', '年', '回轉泵保養', '機械泵油R7', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4225, 'N2493', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4226, 'N2493', '年', '回轉泵保養', '機械泵油R7', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4227, 'N2494', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4228, 'N2494', '年', '回轉泵保養', '機械泵油R7', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4229, 'N1900', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4230, 'N1900', '年', '回轉泵保養', '機械泵油R7', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4231, 'N2211', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4232, 'N2211', '年', '回轉泵保養', '機械泵油R7', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4233, 'N1876', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4234, 'N1876', '年', '回轉泵保養', '機械泵油R7', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4235, 'N0796', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4236, 'N0796', '年', '回轉泵保養', '機械泵油R7', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4237, 'N2930', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4238, 'N2930', '年', '回轉泵保養', '機械泵油R7', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4239, 'N2929', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4240, 'N2929', '年', '回轉泵保養', '機械泵油R7', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4241, 'N2575', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4242, 'N2575', '年', '回轉泵保養', '機械泵油R7', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4243, 'N2465', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4244, 'N2465', '年', '回轉泵保養', '機械泵油R7', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4245, 'N0990', '月', '吸嘴及氣路清潔', '過濾器濾芯【小】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4246, 'N0990', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4247, 'N0990', '月', '封刀清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4248, 'N0990', '季度', '各運動機構清潔潤滑保養', '美孚油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4249, 'N0990', '半年', '測試探針更換', '真空泵', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4250, 'N1683', '月', '吸嘴及氣路清潔', '過濾器濾芯【小】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4251, 'N1683', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4252, 'N1683', '月', '封刀清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4253, 'N1683', '季度', '各運動機構清潔潤滑保養', '美孚油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4254, 'N1683', '半年', '測試探針更換', '真空泵', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4255, 'N1064', '月', '吸嘴及氣路清潔', '過濾器濾芯【小】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4256, 'N1064', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4257, 'N1064', '月', '封刀清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4258, 'N1064', '季度', '各運動機構清潔潤滑保養', '美孚油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4259, 'N1064', '半年', '測試探針更換', '真空泵', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4260, 'N1103', '月', '吸嘴及氣路清潔', '過濾器濾芯【小】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4261, 'N1103', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4262, 'N1103', '月', '封刀清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4263, 'N1103', '季度', '各運動機構清潔潤滑保養', '美孚油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4264, 'N1103', '半年', '測試探針更換', '真空泵', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4265, 'N1104', '月', '吸嘴及氣路清潔', '過濾器濾芯【小】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4266, 'N1104', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4267, 'N1104', '月', '封刀清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4268, 'N1104', '季度', '各運動機構清潔潤滑保養', '美孚油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4269, 'N1104', '半年', '測試探針更換', '真空泵', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4270, 'N1106', '月', '吸嘴及氣路清潔', '過濾器濾芯【小】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4271, 'N1106', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4272, 'N1106', '月', '封刀清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4273, 'N1106', '季度', '各運動機構清潔潤滑保養', '美孚油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4274, 'N1106', '半年', '測試探針更換', '真空泵', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4275, 'N1107', '月', '吸嘴及氣路清潔', '過濾器濾芯【小】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4276, 'N1107', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4277, 'N1107', '月', '封刀清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4278, 'N1107', '季度', '各運動機構清潔潤滑保養', '美孚油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4279, 'N1107', '半年', '測試探針更換', '真空泵', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4280, 'N1108', '月', '吸嘴及氣路清潔', '過濾器濾芯【小】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4281, 'N1108', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4282, 'N1108', '月', '封刀清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4283, 'N1108', '季度', '各運動機構清潔潤滑保養', '美孚油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4284, 'N1108', '半年', '測試探針更換', '真空泵', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4285, 'N1137', '月', '吸嘴及氣路清潔', '過濾器濾芯【小】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4286, 'N1137', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4287, 'N1137', '月', '封刀清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4288, 'N1137', '季度', '各運動機構清潔潤滑保養', '美孚油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4289, 'N1137', '半年', '測試探針更換', '真空泵', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4290, 'N1348', '月', '吸嘴及氣路清潔', '過濾器濾芯【小】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4291, 'N1348', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4292, 'N1348', '月', '封刀清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4293, 'N1348', '季度', '各運動機構清潔潤滑保養', '美孚油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4294, 'N1348', '半年', '測試探針更換', '真空泵', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4295, 'N1349', '月', '吸嘴及氣路清潔', '過濾器濾芯【小】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4296, 'N1349', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4297, 'N1349', '月', '封刀清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4298, 'N1349', '季度', '各運動機構清潔潤滑保養', '美孚油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4299, 'N1349', '半年', '測試探針更換', '真空泵', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4300, 'N1451', '月', '吸嘴及氣路清潔', '過濾器濾芯【小】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4301, 'N1451', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4302, 'N1451', '月', '封刀清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4303, 'N1451', '季度', '各運動機構清潔潤滑保養', '美孚油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4304, 'N1451', '半年', '測試探針更換', '真空泵', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4305, 'N1551', '月', '吸嘴及氣路清潔', '過濾器濾芯【小】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4306, 'N1551', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4307, 'N1551', '月', '封刀清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4308, 'N1551', '季度', '各運動機構清潔潤滑保養', '美孚油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4309, 'N1551', '半年', '測試探針更換', '真空泵', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4310, 'N1589', '月', '吸嘴及氣路清潔', '過濾器濾芯【小】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4311, 'N1589', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4312, 'N1589', '月', '封刀清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4313, 'N1589', '季度', '各運動機構清潔潤滑保養', '美孚油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4314, 'N1589', '半年', '測試探針更換', '真空泵', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4315, 'N1590', '月', '吸嘴及氣路清潔', '過濾器濾芯【小】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4316, 'N1590', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4317, 'N1590', '月', '封刀清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4318, 'N1590', '季度', '各運動機構清潔潤滑保養', '美孚油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4319, 'N1590', '半年', '測試探針更換', '真空泵', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4320, 'N1688', '月', '吸嘴及氣路清潔', '過濾器濾芯【小】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4321, 'N1688', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4322, 'N1688', '月', '封刀清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4323, 'N1688', '季度', '各運動機構清潔潤滑保養', '美孚油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4324, 'N1688', '半年', '測試探針更換', '真空泵', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4325, 'N1689', '月', '吸嘴及氣路清潔', '過濾器濾芯【小】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4326, 'N1689', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4327, 'N1689', '月', '封刀清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4328, 'N1689', '季度', '各運動機構清潔潤滑保養', '美孚油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4329, 'N1689', '半年', '測試探針更換', '真空泵', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4330, 'N1700', '月', '吸嘴及氣路清潔', '過濾器濾芯【小】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4331, 'N1700', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4332, 'N1700', '月', '封刀清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4333, 'N1700', '季度', '各運動機構清潔潤滑保養', '美孚油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4334, 'N1700', '半年', '測試探針更換', '真空泵', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4335, 'N1825', '月', '吸嘴及氣路清潔', '過濾器濾芯【小】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4336, 'N1825', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4337, 'N1825', '月', '封刀清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4338, 'N1825', '季度', '各運動機構清潔潤滑保養', '美孚油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4339, 'N1825', '半年', '測試探針更換', '真空泵', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4340, 'N1842', '月', '吸嘴及氣路清潔', '過濾器濾芯【小】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4341, 'N1842', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4342, 'N1842', '月', '封刀清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4343, 'N1842', '季度', '各運動機構清潔潤滑保養', '美孚油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4344, 'N1842', '半年', '測試探針更換', '真空泵', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4345, 'N1950', '月', '吸嘴及氣路清潔', '過濾器濾芯【小】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4346, 'N1950', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4347, 'N1950', '月', '封刀清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4348, 'N1950', '季度', '各運動機構清潔潤滑保養', '美孚油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4349, 'N1950', '半年', '測試探針更換', '真空泵', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4350, 'N1976', '月', '吸嘴及氣路清潔', '過濾器濾芯【小】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4351, 'N1976', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4352, 'N1976', '月', '封刀清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4353, 'N1976', '季度', '各運動機構清潔潤滑保養', '美孚油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4354, 'N1976', '半年', '測試探針更換', '真空泵', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4355, 'N1977', '月', '吸嘴及氣路清潔', '過濾器濾芯【小】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4356, 'N1977', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4357, 'N1977', '月', '封刀清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4358, 'N1977', '季度', '各運動機構清潔潤滑保養', '美孚油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4359, 'N1977', '半年', '測試探針更換', '真空泵', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4360, 'N2003', '月', '吸嘴及氣路清潔', '過濾器濾芯【小】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4361, 'N2003', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4362, 'N2003', '月', '封刀清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4363, 'N2003', '季度', '各運動機構清潔潤滑保養', '美孚油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4364, 'N2003', '半年', '測試探針更換', '真空泵', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4365, 'N2004', '月', '吸嘴及氣路清潔', '過濾器濾芯【小】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4366, 'N2004', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4367, 'N2004', '月', '封刀清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4368, 'N2004', '季度', '各運動機構清潔潤滑保養', '美孚油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4369, 'N2004', '半年', '測試探針更換', '真空泵', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4370, 'N2005', '月', '吸嘴及氣路清潔', '過濾器濾芯【小】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4371, 'N2005', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4372, 'N2005', '月', '封刀清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4373, 'N2005', '季度', '各運動機構清潔潤滑保養', '美孚油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4374, 'N2005', '半年', '測試探針更換', '真空泵', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4375, 'N2006', '月', '吸嘴及氣路清潔', '過濾器濾芯【小】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4376, 'N2006', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4377, 'N2006', '月', '封刀清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4378, 'N2006', '季度', '各運動機構清潔潤滑保養', '美孚油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4379, 'N2006', '半年', '測試探針更換', '真空泵', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4380, 'N2007', '月', '吸嘴及氣路清潔', '過濾器濾芯【小】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4381, 'N2007', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4382, 'N2007', '月', '封刀清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4383, 'N2007', '季度', '各運動機構清潔潤滑保養', '美孚油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4384, 'N2007', '半年', '測試探針更換', '真空泵', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4385, 'N2070', '月', '吸嘴及氣路清潔', '過濾器濾芯【小】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4386, 'N2070', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4387, 'N2070', '月', '封刀清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4388, 'N2070', '季度', '各運動機構清潔潤滑保養', '美孚油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4389, 'N2070', '半年', '測試探針更換', '真空泵', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4390, 'N2071', '月', '吸嘴及氣路清潔', '過濾器濾芯【小】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4391, 'N2071', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4393, 'N2071', '季度', '各運動機構清潔潤滑保養', '美孚油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4394, 'N2071', '半年', '測試探針更換', '真空泵', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4395, 'N2079', '月', '吸嘴及氣路清潔', '過濾器濾芯【小】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4396, 'N2079', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4397, 'N2079', '月', '封刀清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4398, 'N2079', '季度', '各運動機構清潔潤滑保養', '美孚油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4399, 'N2079', '半年', '測試探針更換', '真空泵', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4400, 'N2080', '月', '吸嘴及氣路清潔', '過濾器濾芯【小】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4401, 'N2080', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4402, 'N2080', '月', '封刀清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4403, 'N2080', '季度', '各運動機構清潔潤滑保養', '美孚油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4404, 'N2080', '半年', '測試探針更換', '真空泵', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4405, 'N2162', '月', '吸嘴及氣路清潔', '過濾器濾芯【小】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4406, 'N2162', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4407, 'N2162', '月', '封刀清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4408, 'N2162', '季度', '各運動機構清潔潤滑保養', '美孚油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4409, 'N2162', '半年', '測試探針更換', '真空泵', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4410, 'N2195', '月', '吸嘴及氣路清潔', '過濾器濾芯【小】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4411, 'N2195', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4412, 'N2195', '月', '封刀清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4413, 'N2195', '季度', '各運動機構清潔潤滑保養', '美孚油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4414, 'N2195', '半年', '測試探針更換', '真空泵', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4415, 'N2694', '月', '吸嘴及氣路清潔', '過濾器濾芯【小】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4416, 'N2694', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4417, 'N2694', '月', '封刀清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4418, 'N2694', '季度', '各運動機構清潔潤滑保養', '美孚油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4419, 'N2694', '半年', '測試探針更換', '真空泵', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4420, 'N2274', '月', '吸嘴及氣路清潔', '過濾器濾芯【小】', 3);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4421, 'N2274', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4422, 'N2274', '月', '封刀清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4423, 'N2274', '季度', '各運動機構清潔潤滑保養', '美孚油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4424, 'N2274', '半年', '測試探針更換', '真空泵', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4425, 'N2282', '月', '吸嘴及氣路清潔', '過濾器濾芯【小】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4426, 'N2282', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4427, 'N2282', '月', '封刀清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4428, 'N2282', '季度', '各運動機構清潔潤滑保養', '美孚油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4429, 'N2282', '半年', '測試探針更換', '真空泵', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4430, 'N2283', '月', '吸嘴及氣路清潔', '過濾器濾芯【小】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4431, 'N2283', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4432, 'N2283', '月', '封刀清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4433, 'N2283', '季度', '各運動機構清潔潤滑保養', '美孚油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4434, 'N2283', '半年', '測試探針更換', '真空泵', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4435, 'N2284', '月', '吸嘴及氣路清潔', '過濾器濾芯【小】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4436, 'N2284', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4437, 'N2284', '月', '封刀清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4438, 'N2284', '季度', '各運動機構清潔潤滑保養', '美孚油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4439, 'N2284', '半年', '測試探針更換', '真空泵', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4440, 'N2285', '月', '吸嘴及氣路清潔', '過濾器濾芯【小】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4441, 'N2285', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4442, 'N2285', '月', '封刀清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4443, 'N2285', '季度', '各運動機構清潔潤滑保養', '美孚油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4444, 'N2285', '半年', '測試探針更換', '真空泵', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4445, 'N2322', '月', '吸嘴及氣路清潔', '過濾器濾芯【小】', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4446, 'N2322', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4447, 'N2322', '月', '封刀清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4448, 'N2322', '季度', '各運動機構清潔潤滑保養', '美孚油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4449, 'N2322', '半年', '測試探針更換', '真空泵', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4450, 'N2398', '月', '吸嘴及氣路清潔', '過濾器濾芯【小】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4451, 'N2398', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4452, 'N2398', '月', '封刀清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4453, 'N2398', '季度', '各運動機構清潔潤滑保養', '美孚油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4454, 'N2398', '半年', '測試探針更換', '真空泵', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4455, 'N2399', '月', '吸嘴及氣路清潔', '過濾器濾芯【小】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4456, 'N2399', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4457, 'N2399', '月', '封刀清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4458, 'N2399', '季度', '各運動機構清潔潤滑保養', '美孚油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4459, 'N2399', '半年', '測試探針更換', '真空泵', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4460, 'N2408', '月', '吸嘴及氣路清潔', '過濾器濾芯【小】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4461, 'N2408', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4462, 'N2408', '月', '封刀清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4463, 'N2408', '季度', '各運動機構清潔潤滑保養', '美孚油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4464, 'N2408', '半年', '測試探針更換', '真空泵', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4465, 'N2323', '月', '吸嘴及氣路清潔', '過濾器濾芯【小】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4466, 'N2323', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4467, 'N2323', '月', '封刀清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4468, 'N2323', '季度', '各運動機構清潔潤滑保養', '美孚油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4469, 'N2323', '半年', '測試探針更換', '真空泵', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4470, 'N0497', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4471, 'N0497', '月', '濾網更換', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4472, 'N0497', '季度', '各運動機構清潔潤滑保養', '美孚油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4473, 'N0497', '半年', '鏡頭清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4474, 'N0764', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4475, 'N0764', '月', '濾網更換', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4476, 'N0764', '季度', '各運動機構清潔潤滑保養', '美孚油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4477, 'N0764', '半年', '鏡頭清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4478, 'N1319', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4479, 'N1319', '月', '濾網更換', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4480, 'N1319', '季度', '各運動機構清潔潤滑保養', '美孚油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4481, 'N1319', '半年', '鏡頭清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4482, 'N1559', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4483, 'N1559', '月', '濾網更換', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4484, 'N1559', '季度', '各運動機構清潔潤滑保養', '美孚油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4485, 'N1559', '半年', '鏡頭清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4486, 'N1609', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4487, 'N1609', '月', '濾網更換', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4488, 'N1609', '季度', '各運動機構清潔潤滑保養', '美孚油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4489, 'N1609', '半年', '鏡頭清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4490, 'N1826', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4492, 'N1826', '季度', '各運動機構清潔潤滑保養', '美孚油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4493, 'N1826', '半年', '鏡頭清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4494, 'N1882', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4495, 'N1882', '月', '濾網更換', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4496, 'N1882', '季度', '各運動機構清潔潤滑保養', '美孚油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4497, 'N1882', '半年', '鏡頭清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4498, 'N2024', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4499, 'N2024', '月', '濾網更換', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4500, 'N2024', '季度', '各運動機構清潔潤滑保養', '美孚油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4501, 'N2024', '半年', '鏡頭清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4502, 'N2025', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4503, 'N2025', '月', '濾網更換', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4504, 'N2025', '季度', '各運動機構清潔潤滑保養', '美孚油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4505, 'N2025', '半年', '鏡頭清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4506, 'N2098', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4507, 'N2098', '月', '濾網更換', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4508, 'N2098', '季度', '各運動機構清潔潤滑保養', '美孚油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4509, 'N2098', '半年', '鏡頭清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4510, 'N2298', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4511, 'N2298', '月', '濾網更換', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4512, 'N2298', '季度', '各運動機構清潔潤滑保養', '美孚油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4513, 'N2298', '半年', '鏡頭清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4514, 'N2299', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4515, 'N2299', '月', '濾網更換', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4516, 'N2299', '季度', '各運動機構清潔潤滑保養', '美孚油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4517, 'N2299', '半年', '鏡頭清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4518, 'N1385', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4519, 'N1385', '月', '吸嘴過濾器更換及管路疏通', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4520, 'N1385', '季度', '各運動機構清潔潤滑保養', '美孚油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4521, 'N1385', '季度', '測試槽和測試槽定位機構保養', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4522, 'N1385', '半年', '真空泵/真空發生器保養', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4523, 'N2086', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4524, 'N2086', '月', '吸嘴過濾器更換及管路疏通', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4525, 'N2086', '季度', '測試槽和測試槽定位機構保養', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4526, 'N2086', '季度', '各運動機構清潔潤滑保養', '美孚油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4527, 'N2086', '半年', '真空泵/真空發生器保養', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4528, 'N2087', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4529, 'N2087', '月', '吸嘴過濾器更換及管路疏通', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4530, 'N2087', '季度', '測試槽和測試槽定位機構保養', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4531, 'N2087', '季度', '各運動機構清潔潤滑保養', '美孚油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4532, 'N2087', '半年', '真空泵/真空發生器保養', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4533, 'N2088', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4534, 'N2088', '月', '吸嘴過濾器更換及管路疏通', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4535, 'N2088', '季度', '測試槽和測試槽定位機構保養', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4536, 'N2088', '季度', '各運動機構清潔潤滑保養', '美孚油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4537, 'N2088', '半年', '真空泵/真空發生器保養', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4538, 'N2089', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4539, 'N2089', '月', '吸嘴過濾器更換及管路疏通', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4540, 'N2089', '季度', '測試槽和測試槽定位機構保養', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4541, 'N2089', '季度', '各運動機構清潔潤滑保養', '美孚油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4542, 'N2089', '半年', '真空泵/真空發生器保養', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4543, 'N1422', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4544, 'N1422', '月', '吸嘴過濾器更換及管路疏通', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4545, 'N1422', '季度', '各運動機構清潔潤滑保養', '美孚油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4546, 'N1422', '半年', '真空泵/真空發生器保養', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4547, 'N1423', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4548, 'N1423', '月', '吸嘴過濾器更換及管路疏通', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4549, 'N1423', '季度', '各運動機構清潔潤滑保養', '美孚油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4550, 'N1423', '半年', '真空泵/真空發生器保養', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4551, 'N1074', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4552, 'N1074', '月', '吸嘴過濾器更換及管路疏通', '過濾器濾芯【小】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4553, 'N1074', '季度', '各運動機構清潔潤滑保養', '美孚油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4554, 'N1074', '半年', '真空泵/真空發生器保養', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4555, 'N1903', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4556, 'N1903', '季度', '各氣動閥、電磁閥清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4557, 'N1903', '年', '回轉泵保養', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4558, 'N1904', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4559, 'N1904', '季度', '各氣動閥、電磁閥清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4560, 'N1904', '年', '回轉泵保養', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4561, 'N2147', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4562, 'N2147', '季度', '各氣動閥、電磁閥清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4563, 'N2147', '年', '回轉泵保養', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4564, 'N1798', '月', '收納夾爪保養', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4565, 'N1798', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4566, 'N1798', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4567, 'N1798', '季度', '各運動機構清潔潤滑保養', '美孚油脂', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4568, 'N1798', '季度', '自淨器濾網更換', '自淨器粗效過濾網', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4569, 'N1798', '半年', '真空泵保養', '真空泵', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4570, 'N1798', '半年', '飛達清潔潤滑保養', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4571, 'N1801', '月', '收納夾爪保養', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4572, 'N1801', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4573, 'N1801', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4574, 'N1801', '季度', '各運動機構清潔潤滑保養', '美孚油脂', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4575, 'N1801', '季度', '自淨器濾網更換', '自淨器粗效過濾網', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4576, 'N1801', '半年', '真空泵保養', '真空泵', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4577, 'N1801', '半年', '飛達清潔潤滑保養', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4578, 'N1813', '月', '收納夾爪保養', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4579, 'N1813', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4580, 'N1813', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4581, 'N1813', '季度', '各運動機構清潔潤滑保養', '美孚油脂', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4582, 'N1813', '季度', '自淨器濾網更換', '自淨器粗效過濾網', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4583, 'N1813', '半年', '真空泵保養', '真空泵', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4584, 'N1813', '半年', '飛達清潔潤滑保養', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4585, 'N2395', '月', '收納夾爪保養', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4666, 'N3164', '月', '機台內部清潔,各標記基準點清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4586, 'N2395', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4587, 'N2395', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4588, 'N2395', '季度', '各運動機構清潔潤滑保養', '美孚油脂', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4589, 'N2395', '季度', '自淨器濾網更換', '自淨器粗效過濾網', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4590, 'N2395', '半年', '真空泵保養', '真空泵', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4591, 'N2395', '半年', '飛達清潔潤滑保養', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4592, 'N3235', '月', '收納夾爪保養', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4593, 'N3235', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4594, 'N3235', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4595, 'N3235', '季度', '各運動機構清潔潤滑保養', '美孚油脂', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4596, 'N3235', '季度', '自淨器濾網更換', '自淨器粗效過濾網', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4597, 'N3235', '半年', '真空泵保養', '真空泵', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4598, 'N3235', '半年', '飛達清潔潤滑保養', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4599, 'N1834', '月', '收納夾爪保養', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4600, 'N1834', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4601, 'N1834', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4602, 'N1834', '季度', '各運動機構清潔潤滑保養', '美孚油脂', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4603, 'N1834', '季度', '自淨器濾網更換', '自淨器粗效過濾網', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4604, 'N1834', '半年', '真空泵保養', '真空泵', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4605, 'N1834', '半年', '飛達清潔潤滑保養', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4606, 'N2191', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4607, 'N2191', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4608, 'N2191', '季度', '各運動機構清潔潤滑保養', '美孚油脂', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4609, 'N2191', '半年', '真空泵保養', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4610, 'N2191', '半年', '自淨器濾網更換', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4611, 'N2495', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4612, 'N2495', '季度', '各運動機構清潔潤滑保養', '美孚油脂', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4613, 'N2495', '半年', '真空泵保養', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4614, 'N2495', '半年', '自淨器濾網更換', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4615, 'N2394', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4616, 'N2394', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4617, 'N2394', '季度', '各運動機構清潔潤滑保養', '美孚油脂', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4618, 'N2394', '半年', '真空泵保養', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4619, 'N2394', '半年', '自淨器濾網更換', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4620, 'N2403', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4621, 'N2403', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4622, 'N2403', '季度', '各運動機構清潔潤滑保養', '美孚油脂', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4623, 'N2403', '半年', '真空泵保養', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4624, 'N2403', '半年', '自淨器濾網更換', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4625, 'N1830', '月', '過濾器清潔，濾芯、氣管更換', '過濾器濾芯【小】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4626, 'N1830', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4627, 'N1830', '季度', '各運動機構清潔潤滑保養', '美孚油脂', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4628, 'N1830', '半年', '真空泵保養', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4629, 'N1830', '半年', '自淨器濾網更換', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4630, 'N1931', '月', '機台內部清潔,各標記基準點清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4631, 'N1931', '月', '氣路清潔，吸嘴振洗清潔更換，各部位過濾器清潔更換', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4632, 'N1931', '月', '高速安裝頭高速擴散板清掃，吸嘴儲料器部件清掃注油', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4633, 'N1931', '季度', '各運動機構清潔潤滑保養', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4634, 'N1931', '季度', '各氣源真空系統過濾器更換，各滾珠絲桿清掃注油', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4635, 'N1931', '半年', 'X,Y橫樑部電纜側面&定位部清掃注油，線路板定位部滾珠絲桿副清掃注油', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4636, 'N3432', '月', '機台內部清潔,各標記基準點清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4637, 'N3432', '月', '氣路清潔，吸嘴振洗清潔更換，各部位過濾器清潔更換', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4638, 'N3432', '月', '高速安裝頭高速擴散板清掃，吸嘴儲料器部件清掃注油', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4639, 'N3432', '季度', '各運動機構清潔潤滑保養', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4640, 'N3432', '季度', '各氣源真空系統過濾器更換，各滾珠絲桿清掃注油', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4641, 'N3432', '半年', 'X,Y橫樑部電纜側面&定位部清掃注油，線路板定位部滾珠絲桿副清掃注油', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4642, 'N3165', '月', '機台內部清潔,各標記基準點清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4643, 'N3165', '月', '氣路清潔，吸嘴振洗清潔更換，各部位過濾器清潔更換', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4644, 'N3165', '月', '高速安裝頭高速擴散板清掃，吸嘴儲料器部件清掃注油', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4645, 'N3165', '季度', '各運動機構清潔潤滑保養', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4646, 'N3165', '季度', '各氣源真空系統過濾器更換，各滾珠絲桿清掃注油', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4647, 'N3165', '半年', 'X,Y橫樑部電纜側面&定位部清掃注油，線路板定位部滾珠絲桿副清掃注油', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4648, 'N2699', '月', '機台內部清潔,各標記基準點清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4649, 'N2699', '月', '氣路清潔，吸嘴振洗清潔更換，各部位過濾器清潔更換', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4650, 'N2699', '月', '高速安裝頭高速擴散板清掃，吸嘴儲料器部件清掃注油', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4651, 'N2699', '季度', '各運動機構清潔潤滑保養', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4652, 'N2699', '季度', '各氣源真空系統過濾器更換，各滾珠絲桿清掃注油', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4653, 'N2699', '半年', 'X,Y橫樑部電纜側面&定位部清掃注油，線路板定位部滾珠絲桿副清掃注油', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4654, 'N2026', '月', '機台內部清潔,各標記基準點清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4655, 'N2026', '月', '氣路清潔，吸嘴振洗清潔更換，各部位過濾器清潔更換', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4656, 'N2026', '月', '高速安裝頭高速擴散板清掃，吸嘴儲料器部件清掃注油', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4657, 'N2026', '季度', '各運動機構清潔潤滑保養', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4658, 'N2026', '季度', '各氣源真空系統過濾器更換，各滾珠絲桿清掃注油', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4659, 'N2026', '半年', 'X,Y橫樑部電纜側面&定位部清掃注油，線路板定位部滾珠絲桿副清掃注油', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4660, 'N2572', '月', '機台內部清潔,各標記基準點清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4661, 'N2572', '月', '氣路清潔，吸嘴振洗清潔更換，各部位過濾器清潔更換', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4662, 'N2572', '月', '高速安裝頭高速擴散板清掃，吸嘴儲料器部件清掃注油', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4663, 'N2572', '季度', '各運動機構清潔潤滑保養', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4664, 'N2572', '季度', '各氣源真空系統過濾器更換，各滾珠絲桿清掃注油', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4665, 'N2572', '半年', 'X,Y橫樑部電纜側面&定位部清掃注油，線路板定位部滾珠絲桿副清掃注油', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4667, 'N3164', '月', '氣路清潔，吸嘴振洗清潔更換，各部位過濾器清潔更換', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4668, 'N3164', '月', '高速安裝頭高速擴散板清掃，吸嘴儲料器部件清掃注油', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4669, 'N3164', '季度', '各運動機構清潔潤滑保養', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4670, 'N3164', '季度', '各氣源真空系統過濾器更換，各滾珠絲桿清掃注油', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4671, 'N3164', '半年', 'X,Y橫樑部電纜側面&定位部清掃注油，線路板定位部滾珠絲桿副清掃注油', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4672, 'N2702', '月', '機台內部清潔,各標記基準點清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4673, 'N2702', '月', '氣路清潔，吸嘴振洗清潔更換，各部位過濾器清潔更換', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4674, 'N2702', '月', '高速安裝頭高速擴散板清掃，吸嘴儲料器部件清掃注油', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4675, 'N2702', '季度', '各運動機構清潔潤滑保養', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4676, 'N2702', '季度', '各氣源真空系統過濾器更換，各滾珠絲桿清掃注油', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4677, 'N2702', '半年', 'X,Y橫樑部電纜側面&定位部清掃注油，線路板定位部滾珠絲桿副清掃注油', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4678, 'N2230', '月', '機台內部清潔,各標記基準點清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4679, 'N2230', '月', '氣路清潔，吸嘴振洗清潔更換，各部位過濾器清潔更換', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4680, 'N2230', '月', '高速安裝頭高速擴散板清掃，吸嘴儲料器部件清掃注油', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4681, 'N2230', '季度', '各運動機構清潔潤滑保養', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4682, 'N2230', '季度', '各氣源真空系統過濾器更換，各滾珠絲桿清掃注油', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4683, 'N2230', '半年', 'X,Y橫樑部電纜側面&定位部清掃注油，線路板定位部滾珠絲桿副清掃注油', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4684, 'N2327', '月', '機台內部清潔,各標記基準點清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4685, 'N2327', '月', '氣路清潔，吸嘴振洗清潔更換，各部位過濾器清潔更換', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4686, 'N2327', '月', '高速安裝頭高速擴散板清掃，吸嘴儲料器部件清掃注油', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4687, 'N2327', '季度', '各運動機構清潔潤滑保養', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4688, 'N2327', '季度', '各氣源真空系統過濾器更換，各滾珠絲桿清掃注油', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4689, 'N2327', '半年', 'X,Y橫樑部電纜側面&定位部清掃注油，線路板定位部滾珠絲桿副清掃注油', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4690, 'N2328', '月', '氣路清潔，吸嘴振洗清潔更換，各部位過濾器清潔更換', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4691, 'N2328', '月', '高速安裝頭高速擴散板清掃，吸嘴儲料器部件清掃注油', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4692, 'N2328', '季度', '各運動機構清潔潤滑保養', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4693, 'N2328', '季度', '各氣源真空系統過濾器更換，各滾珠絲桿清掃注油', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4694, 'N2328', '半年', 'X,Y橫樑部電纜側面&定位部清掃注油，線路板定位部滾珠絲桿副清掃注油', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4695, 'N2681', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4696, 'N2681', '月', '吸嘴過濾器更換及管路疏通', '過濾器濾芯【小】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4697, 'N2681', '季度', '測試槽和測試槽定位機構保養', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4698, 'N2681', '季度', '各運動機構清潔潤滑保養', '美孚油脂', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4699, 'N2681', '半年', '真空泵/真空發生器保養', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4700, 'N3167', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4701, 'N3167', '月', '吸嘴過濾器更換及管路疏通', '過濾器濾芯【小】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4702, 'N3167', '季度', '各運動機構清潔潤滑保養', '美孚油脂', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4703, 'N3167', '季度', '測試槽和測試槽定位機構保養', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4704, 'N3167', '半年', '真空泵/真空發生器保養', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4705, 'N2680', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4706, 'N2680', '月', '吸嘴過濾器更換及管路疏通', '過濾器濾芯【小】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4707, 'N2680', '季度', '測試槽和測試槽定位機構保養', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4708, 'N2680', '季度', '各運動機構清潔潤滑保養', '美孚油脂', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4709, 'N2680', '半年', '真空泵/真空發生器保養', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4710, 'N2573', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4711, 'N2573', '月', '吸嘴過濾器更換及管路疏通', '過濾器濾芯【小】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4712, 'N2573', '季度', '測試槽和測試槽定位機構保養', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4713, 'N2573', '季度', '各運動機構清潔潤滑保養', '美孚油脂', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4714, 'N2573', '半年', '真空泵/真空發生器保養', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4715, 'N3166', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4716, 'N3166', '月', '吸嘴過濾器更換及管路疏通', '過濾器濾芯【小】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4717, 'N3166', '季度', '測試槽和測試槽定位機構保養', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4718, 'N3166', '季度', '各運動機構清潔潤滑保養', '美孚油脂', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4719, 'N3166', '半年', '真空泵/真空發生器保養', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4720, 'N2286', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4721, 'N2286', '月', '吸嘴過濾器更換及管路疏通', '過濾器濾芯【小】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4722, 'N2286', '季度', '測試槽和測試槽定位機構保養', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4723, 'N2286', '季度', '各運動機構清潔潤滑保養', '美孚油脂', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4724, 'N2286', '半年', '真空泵/真空發生器保養', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4725, 'N1803', '季度', '鏈條傳動機構潤滑保養', '美孚油脂', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4726, 'N1803', '年', '爐體內壁清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4727, 'N0961', '季度', '鏈條傳動機構潤滑保養', '美孚油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4728, 'N0961', '年', '爐體內壁清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4729, 'N2017', '季度', '鏈條傳動機構潤滑保養', '美孚油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4730, 'N2017', '年', '爐體內壁清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4731, 'N2324', '季度', '鏈條傳動機構潤滑保養', '美孚油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4732, 'N2324', '年', '爐體內壁清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4733, 'N2237', '季度', '鏈條傳動機構潤滑保養', '美孚油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4734, 'N2237', '年', '爐體內壁清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4735, 'N2237', '季度', '濾網清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4736, 'N2237', '季度', '循壞降溫冷卻水更換', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4737, 'N3311', '季度', '鏈條傳動機構潤滑保養', '美孚油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4738, 'N3311', '年', '爐體內壁清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4739, 'N3311', '季度', '濾網清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4740, 'N3311', '季度', '循壞降溫冷卻水更換', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4741, 'N1918', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4742, 'N1918', '季度', '各運動機構清潔潤滑保養', '美孚油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4743, 'N2037', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4744, 'N2037', '季度', '各運動機構清潔潤滑保養', '美孚油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4745, 'N2703', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4746, 'N2703', '季度', '各運動機構清潔潤滑保養', '美孚油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4747, 'N2038', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4748, 'N2038', '季度', '各運動機構清潔潤滑保養', '美孚油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4749, 'N2407', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4750, 'N2407', '季度', '各運動機構清潔潤滑保養', '美孚油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4751, 'N0455', '月', '主傳動滾輪清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4752, 'N0455', '年', '爐體內壁清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4753, 'N0628', '月', '主傳動滾輪清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4754, 'N0628', '年', '爐體內壁清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4755, 'N1525', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4756, 'N1664', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4757, 'N3023', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4758, 'N1583', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4759, 'N1782', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4760, 'N1835', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4761, 'N2294', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4762, 'N2303', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4763, 'N2753', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4764, 'N2695', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4765, 'N1412', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4766, 'N1412', '月', '各氣源真空系統過濾器清潔更換', '過濾器濾芯【小】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4767, 'N1412', '季度', '冷卻機散熱濾網更換', '自淨器粗效過濾網', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4768, 'N1412', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4769, 'N3443', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4770, 'N3443', '月', '各氣源真空系統過濾器清潔更換', '過濾器濾芯【小】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4771, 'N3443', '季度', '冷卻機散熱濾網更換', '自淨器粗效過濾網', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4772, 'N3443', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4773, 'N3444', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4774, 'N3444', '月', '各氣源真空系統過濾器清潔更換', '過濾器濾芯【小】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4775, 'N3444', '季度', '冷卻機散熱濾網更換', '自淨器粗效過濾網', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4776, 'N3444', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4777, 'N2679', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4778, 'N2679', '月', '各氣源真空系統過濾器清潔更換', '過濾器濾芯【小】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4779, 'N2679', '季度', '冷卻機散熱濾網更換', '自淨器粗效過濾網', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4780, 'N2679', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4781, 'N2811', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4782, 'N2811', '月', '各氣源真空系統過濾器清潔更換', '過濾器濾芯【小】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4783, 'N2811', '季度', '冷卻機散熱濾網更換', '自淨器粗效過濾網', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4784, 'N2811', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4785, 'N2367', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4786, 'N2367', '月', '各氣源真空系統過濾器清潔更換', '過濾器濾芯【小】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4787, 'N2367', '季度', '冷卻機散熱濾網更換', '自淨器粗效過濾網', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4788, 'N2367', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4789, 'N2470', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4790, 'N2470', '月', '各氣源真空系統過濾器清潔更換', '過濾器濾芯【小】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4791, 'N2287', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4792, 'N2287', '月', '各氣源真空系統過濾器清潔更換', '過濾器濾芯【小】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4793, 'N2287', '季度', '冷卻機散熱濾網更換', '自淨器粗效過濾網', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4794, 'N2287', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4795, 'N3169', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4796, 'N3169', '月', '各氣源真空系統過濾器清潔更換', '過濾器濾芯【小】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4797, 'N3169', '季度', '冷卻機散熱濾網更換', '自淨器粗效過濾網', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4798, 'N3169', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4799, 'N2413', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4800, 'N2413', '月', '各氣源真空系統過濾器清潔更換', '過濾器濾芯【小】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4801, 'N2413', '季度', '冷卻機散熱濾網更換', '自淨器粗效過濾網', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4802, 'N2413', '半年', '各軸絲桿和滑塊保養', 'THK油脂', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4803, 'N2329', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4804, 'N2329', '月', '各氣源真空系統過濾器清潔更換', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4805, 'N2329', '月', '電腦主機濾網清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4806, 'N2329', '月', '低溫Chamber除霜及傳送軌道潤滑', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4807, 'N2329', '季度', '各軸絲桿和滑塊保養', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4808, 'N2329', '季度', 'GR&R測試及探針更換', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4809, 'N2329', '季度', '測試定位PIN更換', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4810, 'N2329', '半年', '夾爪吸盤更換', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4811, 'N2329', '半年', '真空泵保養', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4812, 'N2396', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4813, 'N2396', '月', '腔體密封圈清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4814, 'N2396', '半年', '耐熱膠帶及電熱線更換', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4815, 'N2396', '年', '回轉泵保養', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4816, 'N2330', '月', 'wire tension清潔保養', 'wire tension', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4817, 'N2330', '月', 'Clamper 清潔保養', 'Diamond Film', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4818, 'N2330', '月', 'Transducer 清潔保養', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4819, 'N2330', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4820, 'N2330', '月', '放電棒清潔保養', '金屬亮潔劑', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4821, 'N2330', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4822, 'N2330', '半年', '真空發生器保養', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4823, 'N2331', '月', 'wire tension清潔保養', 'wire tension', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4824, 'N2331', '月', 'Clamper 清潔保養', 'Diamond Film', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4825, 'N2331', '月', 'Transducer 清潔保養', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4826, 'N2331', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4827, 'N2331', '月', '放電棒清潔保養', '金屬亮潔劑', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4828, 'N2331', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4829, 'N2331', '半年', '真空發生器保養', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4830, 'N2333', '月', '排水及抽風管路保養', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4831, 'N2333', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4832, 'N2333', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4833, 'N2333', '半年', '真空發生器保養', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4834, 'N2333', '半年', 'NCS及B.BD SENSOR清潔保養', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4835, 'N2335', '月', '機台內部清潔，氣路及過濾器濾芯【小】清潔更換', '過濾器濾芯【小】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4836, 'N2335', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4837, 'N2336', '月', '機台內部清潔，氣路及過濾器濾芯【小】清潔更換', '過濾器濾芯【小】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4838, 'N2336', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4839, 'N2337', '月', '真空室治具更換', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4840, 'N2337', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4841, 'N2337', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4842, 'N2337', '半年', '自淨器濾網更換', '自淨器粗效過濾網', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4843, 'N2337', '半年', '回轉泵保養', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4844, 'N2338', '月', 'supply head部緩衡器和頂針部位清潔保養', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4845, 'N2338', '月', 'bonding head部電磁閥清潔', '金屬亮潔劑', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4846, 'N2338', '月', 'NG杯濾芯更換', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4847, 'N2338', '月', '機台內部清潔', '過濾器濾芯【大】', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4848, 'N2338', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4849, 'N2338', '半年', '真空泵保養', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4850, 'N2338', '半年', '自淨器濾網更換', '自淨器粗效過濾網', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4851, 'N2339', '月', 'supply head部緩衡器和頂針部位清潔保養', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4852, 'N2339', '月', 'bonding head部電磁閥清潔', '金屬亮潔劑', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4853, 'N2339', '月', 'NG杯濾芯更換', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4854, 'N2339', '月', '機台內部清潔', '過濾器濾芯【大】', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4855, 'N2339', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4856, 'N2339', '半年', '真空泵保養', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4857, 'N2339', '半年', '自淨器濾網更換', '自淨器粗效過濾網', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4858, 'N2340', '月', 'supply head部緩衡器和頂針部位清潔保養', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4859, 'N2340', '月', 'bonding head部電磁閥清潔', '金屬亮潔劑', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4860, 'N2340', '月', 'NG杯濾芯更換', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4861, 'N2340', '月', '機台內部清潔', '過濾器濾芯【大】', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4862, 'N2340', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4863, 'N2340', '半年', '真空泵保養', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4864, 'N2340', '半年', '自淨器濾網更換', '自淨器粗效過濾網', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4865, 'N2341', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4866, 'N2341', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4867, 'N2341', '半年', '自淨器濾網更換', '自淨器粗效過濾網', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4868, 'N2342', '月', '機台內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4869, 'N2342', '季度', '各軸絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4870, 'N2342', '半年', '自淨器濾網更換', '自淨器粗效過濾網', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4871, 'N2444', '月', '機器人第七軸軌道上油潤滑', '68號滑軌油', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4872, 'N2444', '季度', '機台各軸盤及其內部清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4873, 'N2444', '半年', '機器人1、2軸潤滑保養', '1054潤滑油', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4874, 'N2444', '半年', '上下料機各絲桿保養', 'NSK油脂', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4875, 'N2444', '半年', '機器人齒輪保養', '1054潤滑油', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4876, 'N2444', '半年', '上 ，下料與貼標機皮帶保養', '花王洗潔精', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4877, 'N2444', '年', '機器人3、4、5、6軸潤滑保養', '1026潤滑油', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4878, 'N2444', '年', '機器人電池更換', '川崎1HG板用電池', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4879, 'N2700', '月', '機台內部清潔，線路整理，各標記基準點清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4880, 'N2700', '月', '氣路清潔，吸嘴振洗清潔更換，各部位過濾器清潔更換', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4881, 'N2700', '月', '高速安裝頭高速擴散板清潔，吸嘴儲料器部件清掃注油', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4882, 'N2700', '季度', '各運動機構清潔注油保養', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4883, 'N2700', '季度', '各氣源真空系統過濾器更換，各滾珠絲桿清潔注油', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4884, 'N2700', '半年', 'X,Y橫樑部電纜側面&定位部清掃注油，線路板定位部滾珠絲桿副清掃注油', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4885, 'N3168', '月', '機台內部清潔，線路整理，各標記基準點清潔', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4886, 'N3168', '月', '氣路清潔，吸嘴振洗清潔更換，各部位過濾器清潔更換', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4887, 'N3168', '月', '高速安裝頭高速擴散板清潔，吸嘴儲料器部件清掃注油', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4888, 'N3168', '季度', '各運動機構清潔注油保養', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4889, 'N3168', '季度', '各氣源真空系統過濾器更換，各滾珠絲桿清潔注油', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4890, 'N3168', '半年', 'X,Y橫樑部電纜側面&定位部清掃注油，線路板定位部滾珠絲桿副清掃注油', 'N/A', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4891, 'N2316', '月', 'IONGUN系統保養', 'IG模組', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4892, 'N2316', '月', 'IONGUN系統保養', '擋板模組', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4893, 'N2316', '月', 'DC/MC吸嘴', '過濾器濾芯【大】', 12);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4894, 'N2316', '月', 'DC/MC吸嘴吸取定位機構', 'SPX4A-DC4A PKG 定位片', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4895, 'N2316', '季度', '各絲桿滑塊保養', 'L-200油脂', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4896, 'N2316', '半年', 'DC/MC自淨器濾網更換', '自淨器粗效過濾網', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4897, 'N2316', '年', '回轉泵保養', '機械泵油R7', 3);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4898, 'N2316', '年', '回轉泵保養', '真空泵油 R4', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4899, 'N1294', '月', 'IONGUN系統保養', 'IG模組', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4900, 'N1294', '月', 'IONGUN系統保養', '擋板模組', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4901, 'N1294', '月', '機台內部清潔', '過濾器濾芯【大】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4902, 'N1294', '季度', '各絲桿滑塊保養', 'L-200油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4903, 'N1294', '半年', '冷卻水過濾器UF-61C-1冷卻水濾芯更換', 'UF-61C-1冷卻水濾芯', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4904, 'N1294', '年', '回轉泵保養', '機械泵油R7', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4905, 'N2308', '月', 'IONGUN系統保養', 'IG模組', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4906, 'N2308', '月', 'IONGUN系統保養', '擋板模組', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4907, 'N2308', '月', 'DC/MC吸嘴', '過濾器濾芯【大】', 12);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4908, 'N2308', '月', 'DC/MC吸嘴吸取定位機構', 'SPX4A-DC4A PKG 定位片', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4909, 'N2308', '季度', '各絲桿滑塊保養', 'L-200油脂', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4910, 'N2308', '半年', 'DC/MC自淨器濾網更換', '自淨器粗效過濾網', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4911, 'N2308', '年', '回轉泵保養', '機械泵油R7', 3);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4912, 'N2308', '年', '回轉泵保養', '真空泵油 R4', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4913, 'N1296', '月', 'IONGUN系統保養', 'IG模組', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4914, 'N1296', '月', 'IONGUN系統保養', '擋板模組', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4915, 'N1296', '月', '機台內部清潔', '過濾器濾芯【大】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4916, 'N1296', '季度', '各絲桿滑塊保養', 'L-200油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4917, 'N1296', '半年', '冷卻水過濾器UF-61C-1冷卻水濾芯更換', 'UF-61C-1冷卻水濾芯', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4918, 'N1296', '年', '回轉泵保養', '機械泵油R7', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4919, 'N0719', '月', '更換IONGUN系統', 'IG模組', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4920, 'N0719', '月', '更換IONGUN系統', '鎢絲座模組', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4921, 'N0719', '月', '更換IONGUN系統', 'SFE-304TMW自動微調機 SHUTTER（新版）', 8);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4922, 'N0719', '月', '更換IONGUN系統', 'SFE-304TMW軌道防著板插片(改進)', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4923, 'N0719', '月', '更換IONGUN系統', 'SFE-304TMW軌道防著板(改進)', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4924, 'N0719', '月', 'LD/ULD吸嘴過濾器更換', '過濾器濾芯【微】', 8);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4925, 'N0719', '月', 'LD/ULD更換過濾器', '過濾器濾芯【大】', 3);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4926, 'N0719', '季度', '各絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4927, 'N0719', '半年', '冷卻水過濾器UF-61C-1冷卻水濾芯更換', 'UF-61C-1冷卻水濾芯', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4928, 'N0719', '年', '回轉泵保養', '機械泵油R7', 3);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4929, 'N0719', '年', '回轉泵保養', '真空泵油 R4', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4930, 'N2611', '月', 'IONGUN系統保養', 'IG模組', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4931, 'N2611', '月', 'IONGUN系統保養', '擋板模組', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4932, 'N2611', '月', '機台內部清潔', '過濾器濾芯【大】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4933, 'N2611', '季度', '各絲桿滑塊保養', 'L-200油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4934, 'N2611', '半年', '冷卻水過濾器UF-61C-1冷卻水濾芯更換', 'UF-61C-1冷卻水濾芯', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4935, 'N2611', '年', '回轉泵保養', '機械泵油R7', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4936, 'N0721', '月', '更換IONGUN系統', 'IG模組', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4937, 'N0721', '月', '更換IONGUN系統', '鎢絲座模組', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4938, 'N0721', '月', '更換IONGUN系統', 'SFE-304TMW自動微調機 SHUTTER（新版）', 8);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4939, 'N0721', '月', '更換IONGUN系統', 'SFE-304TMW軌道防著板插片(改進)', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4940, 'N0721', '月', '更換IONGUN系統', 'SFE-304TMW軌道防著板(改進)', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4941, 'N0721', '月', 'LD/ULD吸嘴過濾器更換', '過濾器濾芯【微】', 8);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4942, 'N0721', '月', 'LD/ULD更換過濾器', '過濾器濾芯【大】', 3);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4943, 'N0721', '季度', '各絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4944, 'N0721', '年', '回轉泵保養', '機械泵油R7', 3);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4945, 'N0721', '年', '回轉泵保養', '真空泵油 R4', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4946, 'N1555', '月', '更換IONGUN系統', 'IG模組', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4947, 'N1555', '月', '更換IONGUN系統', '鎢絲座模組', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4948, 'N1555', '月', '更換IONGUN系統', 'SFE-304TMW自動微調機 SHUTTER（新版）', 8);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4949, 'N1555', '月', '更換IONGUN系統', 'SFE-304TMW軌道防著板插片(改進)B', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4950, 'N1555', '月', '更換IONGUN系統', 'SFE-304TMW軌道防著板(新版)', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4951, 'N1555', '月', 'DC/MC吸嘴過濾器更換', '過濾器濾芯【微】', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4952, 'N1555', '月', 'DC/MC電清洗更換過濾器', '過濾器濾芯【大】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4953, 'N1555', '月', 'DC/MC翻轉吸嘴', '過濾器濾芯【小】', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4954, 'N1555', '季度', '各絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4955, 'N1555', '年', '回轉泵保養', '機械泵油R7', 3);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4956, 'N1555', '年', '回轉泵保養', '真空泵油 R4', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4957, 'N0947', '月', '更換IONGUN系統', 'IG模組', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4958, 'N0947', '月', '更換IONGUN系統', '鎢絲座模組', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4959, 'N0947', '月', '更換IONGUN系統', 'SFE-304TMW自動微調機 SHUTTER（新版）', 8);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4960, 'N0947', '月', '更換IONGUN系統', 'SFE-304TMW軌道防著板插片(改進)', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4961, 'N0947', '月', '更換IONGUN系統', 'SFE-304TMW軌道防著板(改進)', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4962, 'N0947', '月', 'LD/ULD吸嘴過濾器更換', '過濾器濾芯【微】', 8);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4963, 'N0947', '月', 'LD/ULD更換過濾器', '過濾器濾芯【大】', 3);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4964, 'N0947', '季度', '各絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4965, 'N0947', '半年', '冷卻水過濾器UF-61C-1冷卻水濾芯更換', 'UF-61C-1冷卻水濾芯', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4966, 'N0947', '年', '回轉泵保養', '機械泵油R7', 3);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4967, 'N0947', '年', '回轉泵保養', '真空泵油 R4', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4968, 'N1596', '月', '更換IONGUN系統', 'IG模組', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4969, 'N1596', '月', '更換IONGUN系統', '鎢絲座模組', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4970, 'N1596', '月', '更換IONGUN系統', 'SFE-304TMW自動微調機 SHUTTER（新版）', 8);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4971, 'N1596', '月', '更換IONGUN系統', 'SFE-304TMW軌道防著板插片(改進)B', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4972, 'N1596', '月', '更換IONGUN系統', 'SFE-304TMW軌道防著板(新版)', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4973, 'N1596', '月', 'DC/MC吸嘴過濾器更換', '過濾器濾芯【微】', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4974, 'N1596', '月', 'DC/MC電清洗更換過濾器', '過濾器濾芯【大】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4975, 'N1596', '月', 'DC/MC翻轉吸嘴', '過濾器濾芯【小】', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4976, 'N1596', '季度', '各絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4977, 'N1596', '半年', '冷卻水過濾器UF-61C-1冷卻水濾芯更換', 'UF-61C-1冷卻水濾芯', 3);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4978, 'N1596', '年', '回轉泵保養', '機械泵油R7', 3);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4979, 'N1596', '年', '回轉泵保養', '真空泵油 R4', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4980, 'N0949', '月', '更換IONGUN系統', 'IG模組', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4981, 'N0949', '月', '更換IONGUN系統', '鎢絲座模組', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4982, 'N0949', '月', '更換IONGUN系統', 'SFE-304TMW自動微調機 SHUTTER（新版）', 8);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4983, 'N0949', '月', '更換IONGUN系統', 'SFE-304TMW軌道防著板插片(改進)B', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4984, 'N0949', '月', '更換IONGUN系統', 'SFE-304TMW軌道防著板(新版)', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4985, 'N0949', '月', 'LD/ULD吸嘴過濾器更換', '過濾器濾芯【微】', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4986, 'N0949', '月', 'LD/ULD更換過濾器', '過濾器濾芯【大】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4987, 'N0949', '季度', '各絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4988, 'N0949', '半年', '冷卻水過濾器UF-61C-1冷卻水濾芯更換', 'UF-61C-1冷卻水濾芯', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4989, 'N0949', '年', '回轉泵保養', '機械泵油R7', 3);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4990, 'N0949', '年', '回轉泵保養', '真空泵油 R4', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4991, 'N1603', '月', '更換IONGUN系統', 'IG模組', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4992, 'N1603', '月', '更換IONGUN系統', '鎢絲座模組', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4993, 'N1603', '月', '更換IONGUN系統', 'SFE-304TMW自動微調機 SHUTTER（新版）', 8);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4994, 'N1603', '月', '更換IONGUN系統', 'SFE-304TMW軌道防著板插片(改進)B', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4995, 'N1603', '月', '更換IONGUN系統', 'SFE-304TMW軌道防著板(新版)', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4996, 'N1603', '月', 'DC/MC吸嘴過濾器更換', '過濾器濾芯【微】', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4997, 'N1603', '月', 'DC/MC電清洗更換過濾器', '過濾器濾芯【大】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4998, 'N1603', '月', 'DC/MC翻轉吸嘴', '過濾器濾芯【小】', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (4999, 'N1603', '季度', '各絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5000, 'N1603', '半年', '冷卻水過濾器UF-61C-1冷卻水濾芯更換', 'UF-61C-1冷卻水濾芯', 3);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5001, 'N1603', '年', '回轉泵保養', '機械泵油R7', 3);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5002, 'N1603', '年', '回轉泵保養', '真空泵油 R4', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5003, 'N1026', '月', '更換IONGUN系統', 'IG模組', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5004, 'N1026', '月', '更換IONGUN系統', '鎢絲座模組', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5005, 'N1026', '月', '更換IONGUN系統', 'SFE-304TMW自動微調機 SHUTTER（新版）', 8);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5006, 'N1026', '月', '更換IONGUN系統', 'SFE-304TMW軌道防著板插片(改進)B', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5007, 'N1026', '月', '更換IONGUN系統', 'SFE-304TMW軌道防著板(新版)', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5008, 'N1026', '月', 'LD/ULD吸嘴過濾器更換', '過濾器濾芯【微】', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5009, 'N1026', '月', 'LD/ULD更換過濾器', '過濾器濾芯【大】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5010, 'N1026', '季度', '各絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5011, 'N1026', '半年', '冷卻水過濾器UF-61C-1冷卻水濾芯更換', 'UF-61C-1冷卻水濾芯', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5012, 'N1026', '年', '回轉泵保養', '機械泵油R7', 3);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5013, 'N1026', '年', '回轉泵保養', '真空泵油 R4', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5014, 'N1721', '月', '更換IONGUN系統', 'IG模組', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5015, 'N1721', '月', '更換IONGUN系統', '鎢絲座模組', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5016, 'N1721', '月', '更換IONGUN系統', 'SFE-304TMW自動微調機 SHUTTER（新版）', 8);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5017, 'N1721', '月', '更換IONGUN系統', 'SFE-304TMW軌道防著板插片(改進)B', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5018, 'N1721', '月', '更換IONGUN系統', 'SFE-304TMW軌道防著板(新版)', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5019, 'N1721', '月', 'DC/MC吸嘴過濾器更換', '過濾器濾芯【微】', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5020, 'N1721', '月', 'DC/MC電清洗更換過濾器', '過濾器濾芯【大】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5021, 'N1721', '月', 'DC/MC翻轉吸嘴', '過濾器濾芯【小】', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5022, 'N1721', '季度', '各絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5023, 'N1721', '半年', '冷卻水過濾器UF-61C-1冷卻水濾芯更換', 'UF-61C-1冷卻水濾芯', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5024, 'N1721', '年', '回轉泵保養', '機械泵油R7', 3);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5025, 'N1721', '年', '回轉泵保養', '真空泵油 R4', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5026, 'N1028', '月', '更換IONGUN系統', 'IG模組', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5027, 'N1028', '月', '更換IONGUN系統', '鎢絲座模組', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5028, 'N1028', '月', '更換IONGUN系統', 'SFE-304TMW自動微調機 SHUTTER（新版）', 8);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5029, 'N1028', '月', '更換IONGUN系統', 'SFE-304TMW軌道防著板插片(改進)B', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5030, 'N1028', '月', '更換IONGUN系統', 'SFE-304TMW軌道防著板(新版)', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5031, 'N1028', '月', 'LD/ULD吸嘴過濾器更換', '過濾器濾芯【微】', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5032, 'N1028', '月', 'LD/ULD更換過濾器', '過濾器濾芯【大】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5033, 'N1028', '季度', '各絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5034, 'N1028', '半年', '冷卻水過濾器UF-61C-1冷卻水濾芯更換', 'UF-61C-1冷卻水濾芯', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5035, 'N1028', '年', '回轉泵保養', '機械泵油R7', 3);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5036, 'N1028', '年', '回轉泵保養', '真空泵油 R4', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5037, 'N1849', '月', 'IONGUN系統保養', 'IG模組', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5038, 'N1849', '月', 'IONGUN系統保養', '擋板模組', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5039, 'N1849', '月', 'DC/MC吸嘴', '過濾器濾芯【大】', 8);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5040, 'N1849', '月', 'DC/MC吸嘴吸取定位機構', 'SPX4A-DC4A PKG 定位片', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5041, 'N1849', '季度', '各絲桿滑塊保養', 'L-200油脂', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5042, 'N1849', '半年', 'DC/MC自淨器濾網更換', '自淨器粗效過濾網', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5043, 'N1849', '半年', '冷卻水過濾器UF-61C-1冷卻水濾芯更換', 'UF-61C-1冷卻水濾芯', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5044, 'N1849', '年', '回轉泵保養', '機械泵油R7', 3);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5045, 'N1849', '年', '回轉泵保養', '真空泵油 R4', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5046, 'N1560', '月', 'IONGUN系統保養', 'IG模組', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5047, 'N1560', '月', 'IONGUN系統保養', '擋板模組', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5048, 'N1560', '月', '機台內部清潔', '過濾器濾芯【大】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5049, 'N1560', '季度', '各絲桿滑塊保養', 'L-200油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5050, 'N1560', '半年', '冷卻水過濾器UF-61C-1冷卻水濾芯更換', 'UF-61C-1冷卻水濾芯', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5051, 'N1560', '年', '回轉泵保養', '機械泵油R7', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5052, 'N1030', '月', '更換IONGUN系統', 'IG模組', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5053, 'N1030', '月', '更換IONGUN系統', '鎢絲座模組', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5054, 'N1030', '月', '更換IONGUN系統', 'SFE-304TMW自動微調機 SHUTTER（新版）', 8);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5055, 'N1030', '月', '更換IONGUN系統', 'SFE-304TMW軌道防著板插片(改進)B', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5056, 'N1030', '月', '更換IONGUN系統', 'SFE-304TMW軌道防著板(新版)', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5057, 'N1030', '月', 'LD/ULD吸嘴過濾器更換', '過濾器濾芯【微】', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5058, 'N1030', '月', 'LD/ULD更換過濾器', '過濾器濾芯【大】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5059, 'N1030', '季度', '各絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5060, 'N1030', '半年', '冷卻水過濾器UF-61C-1冷卻水濾芯更換', 'UF-61C-1冷卻水濾芯', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5061, 'N1030', '年', '回轉泵保養', '機械泵油R7', 3);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5062, 'N1030', '年', '回轉泵保養', '真空泵油 R4', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5063, 'N1893', '月', 'IONGUN系統保養', 'IG模組', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5064, 'N1893', '月', 'IONGUN系統保養', '擋板模組', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5065, 'N1893', '月', 'DC/MC吸嘴', '過濾器濾芯【大】', 11);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5066, 'N1893', '月', 'DC/MC吸嘴吸取定位機構', 'SPX4A-DC4A PKG 定位片', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5067, 'N1893', '季度', '各絲桿滑塊保養', 'L-200油脂', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5068, 'N1893', '半年', 'DC/MC自淨器濾網更換', '自淨器粗效過濾網', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5069, 'N1893', '半年', '冷卻水過濾器UF-61C-1冷卻水濾芯更換', 'UF-61C-1冷卻水濾芯', 3);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5070, 'N1893', '年', '回轉泵保養', '機械泵油R7', 3);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5071, 'N1893', '年', '回轉泵保養', '真空泵油 R4', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5072, 'N1562', '月', 'IONGUN系統保養', 'IG模組', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5073, 'N1562', '月', 'IONGUN系統保養', '擋板模組', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5074, 'N1562', '月', '機台內部清潔', '過濾器濾芯【大】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5075, 'N1562', '季度', '各絲桿滑塊保養', 'L-200油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5076, 'N1562', '半年', '冷卻水過濾器UF-61C-1冷卻水濾芯更換', 'UF-61C-1冷卻水濾芯', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5077, 'N1562', '年', '回轉泵保養', '機械泵油R7', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5078, 'N1292', '月', '更換IONGUN系統', 'IG模組', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5079, 'N1292', '月', '更換IONGUN系統', '鎢絲座模組', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5080, 'N1292', '月', '更換IONGUN系統', 'SFE-304TMW自動微調機 SHUTTER（新版）', 8);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5081, 'N1292', '月', '更換IONGUN系統', 'SFE-304TMW軌道防著板插片(改進)B', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5082, 'N1292', '月', '更換IONGUN系統', 'SFE-304TMW軌道防著板(新版)', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5083, 'N1292', '月', 'LD/ULD吸嘴過濾器更換', '過濾器濾芯【微】', 4);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5084, 'N1292', '月', 'LD/ULD更換過濾器', '過濾器濾芯【大】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5085, 'N1292', '季度', '各絲桿和滑塊保養', 'THK油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5086, 'N1292', '半年', '冷卻水過濾器UF-61C-1冷卻水濾芯更換', 'UF-61C-1冷卻水濾芯', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5087, 'N1292', '年', '回轉泵保養', '機械泵油R7', 3);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5088, 'N1292', '年', '回轉泵保養', '真空泵油 R4', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5089, 'N2170', '月', '更換IONGUN系統', 'IG模組', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5090, 'N2170', '月', '更換IONGUN系統', '鎢絲座模組', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5091, 'N2170', '月', 'IONGUN系統保養', 'SHUTTER擋板', 8);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5092, 'N2170', '月', 'IONGUN系統保養', 'SFE-6830微調機IONGUN石墨擋片(768)', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5093, 'N2170', '季度', 'IONGUN系統保養', 'SFE-6830微調機石墨基座', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5094, 'N2170', '季度', '各絲桿滑塊保養', 'L-200油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5095, 'N2170', '年', '回轉泵保養', '機械泵油R7', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5096, 'N1986', '月', 'IONGUN系統保養', 'IG模組', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5097, 'N1986', '月', 'IONGUN系統保養', '擋板模組', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5098, 'N1986', '月', 'DC/MC吸嘴', '過濾器濾芯【大】', 12);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5099, 'N1986', '月', 'DC/MC吸嘴吸取定位機構', 'SPX4A-DC4A PKG 定位片', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5100, 'N1986', '季度', '各絲桿滑塊保養', 'L-200油脂', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5101, 'N1986', '半年', 'DC/MC自淨器濾網更換', '自淨器粗效過濾網', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5102, 'N1986', '年', '回轉泵保養', '機械泵油R7', 3);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5103, 'N1986', '年', '回轉泵保養', '真空泵油 R4', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5104, 'N1570', '月', 'IONGUN系統保養', 'IG模組', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5105, 'N1570', '月', 'IONGUN系統保養', '擋板模組', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5106, 'N1570', '月', '機台內部清潔', '過濾器濾芯【大】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5107, 'N1570', '季度', '各絲桿滑塊保養', 'L-200油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5108, 'N1570', '半年', '冷卻水過濾器UF-61C-1冷卻水濾芯更換', 'UF-61C-1冷卻水濾芯', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5109, 'N1570', '年', '回轉泵保養', '機械泵油R7', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5110, 'N2062', '月', 'IONGUN系統保養', 'IG模組', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5111, 'N2062', '月', 'IONGUN系統保養', '擋板模組', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5112, 'N2062', '月', 'DC/MC吸嘴', '過濾器濾芯【大】', 12);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5113, 'N2062', '月', 'DC/MC吸嘴吸取定位機構', 'SPX4A-DC4A PKG 定位片', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5114, 'N2062', '季度', '各絲桿滑塊保養', 'L-200油脂', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5115, 'N2062', '半年', 'DC/MC自淨器濾網更換', '自淨器粗效過濾網', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5116, 'N2062', '年', '回轉泵保養', '機械泵油R7', 3);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5117, 'N2062', '年', '回轉泵保養', '真空泵油 R4', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5118, 'N1572', '月', 'IONGUN系統保養', 'IG模組', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5119, 'N1572', '月', 'IONGUN系統保養', '擋板模組', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5120, 'N1572', '月', '機台內部清潔', '過濾器濾芯【大】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5121, 'N1572', '季度', '各絲桿滑塊保養', 'L-200油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5122, 'N1572', '半年', '冷卻水過濾器UF-61C-1冷卻水濾芯更換', 'UF-61C-1冷卻水濾芯', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5123, 'N1572', '年', '回轉泵保養', '機械泵油R7', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5124, 'N0703', '月', '更換IONGUN系統', 'IG模組', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5125, 'N0703', '月', '更換IONGUN系統', '鎢絲座模組', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5126, 'N0703', '月', 'IONGUN系統保養', 'SHUTTER擋板', 8);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5127, 'N0703', '月', 'IONGUN系統保養', 'SFE-6830微調機IONGUN石墨擋片(768)', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5128, 'N0703', '季度', 'IONGUN系統保養', 'SFE-6830微調機石墨基座', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5129, 'N0703', '季度', '各絲桿滑塊保養', 'L-200油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5130, 'N0703', '年', '回轉泵保養', '機械泵油R7', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5131, 'N2048', '月', 'IONGUN系統保養', 'IG模組', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5132, 'N2048', '月', 'IONGUN系統保養', '擋板模組', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5133, 'N2048', '月', 'DC/MC吸嘴', '過濾器濾芯【大】', 12);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5134, 'N2048', '月', 'DC/MC吸嘴吸取定位機構', 'SPX4A-DC4A PKG 定位片', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5135, 'N2048', '季度', '各絲桿滑塊保養', 'L-200油脂', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5136, 'N2048', '半年', 'DC/MC自淨器濾網更換', '自淨器粗效過濾網', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5137, 'N2048', '年', '回轉泵保養', '機械泵油R7', 3);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5138, 'N2048', '年', '回轉泵保養', '真空泵油 R4', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5139, 'N3424', '月', 'IONGUN系統保養', 'IG模組', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5140, 'N3424', '月', 'IONGUN系統保養', '擋板模組', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5141, 'N3424', '月', '機台內部清潔', '過濾器濾芯【大】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5142, 'N3424', '季度', '各絲桿滑塊保養', 'L-200油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5143, 'N3424', '半年', '冷卻水過濾器UF-61C-1冷卻水濾芯更換', 'UF-61C-1冷卻水濾芯', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5144, 'N3424', '年', '回轉泵保養', '機械泵油R7', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5145, 'N3422', '月', 'IONGUN系統保養', 'IG模組', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5146, 'N3422', '月', 'IONGUN系統保養', '擋板模組', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5147, 'N3422', '月', '機台內部清潔', '過濾器濾芯【大】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5148, 'N3422', '季度', '各絲桿滑塊保養', 'L-200油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5149, 'N3422', '半年', '冷卻水過濾器UF-61C-1冷卻水濾芯更換', 'UF-61C-1冷卻水濾芯', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5150, 'N3422', '年', '回轉泵保養', '機械泵油R7', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5151, 'N3387', '月', 'IONGUN系統保養', 'IG模組', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5152, 'N3387', '月', 'IONGUN系統保養', '擋板模組', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5153, 'N3387', '月', '機台內部清潔', '過濾器濾芯【大】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5154, 'N3387', '季度', '各絲桿滑塊保養', 'L-200油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5155, 'N3387', '半年', '冷卻水過濾器UF-61C-1冷卻水濾芯更換', 'UF-61C-1冷卻水濾芯', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5156, 'N3387', '年', '回轉泵保養', '機械泵油R7', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5157, 'N2719', '月', 'IONGUN系統保養', 'IG模組', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5158, 'N2719', '月', 'IONGUN系統保養', '擋板模組', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5159, 'N2719', '月', '機台內部清潔', '過濾器濾芯【大】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5160, 'N2719', '季度', '各絲桿滑塊保養', 'L-200油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5161, 'N2719', '半年', '冷卻水過濾器UF-61C-1冷卻水濾芯更換', 'UF-61C-1冷卻水濾芯', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5162, 'N2719', '年', '回轉泵保養', '機械泵油R7', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5163, 'N2904', '月', 'IONGUN系統保養', 'IG模組', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5164, 'N2904', '月', 'IONGUN系統保養', '擋板模組', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5165, 'N2904', '月', '機台內部清潔', '過濾器濾芯【大】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5166, 'N2904', '季度', '各絲桿滑塊保養', 'L-200油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5167, 'N2904', '半年', '冷卻水過濾器UF-61C-1冷卻水濾芯更換', 'UF-61C-1冷卻水濾芯', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5168, 'N2904', '年', '回轉泵保養', '機械泵油R7', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5169, 'N3556', '月', 'IONGUN系統保養', 'IG模組', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5170, 'N3556', '月', 'IONGUN系統保養', '擋板模組', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5171, 'N3556', '月', '機台內部清潔', '過濾器濾芯【大】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5172, 'N3556', '季度', '各絲桿滑塊保養', 'L-200油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5173, 'N3556', '半年', '冷卻水過濾器UF-61C-1冷卻水濾芯更換', 'UF-61C-1冷卻水濾芯', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5174, 'N3556', '年', '回轉泵保養', '機械泵油R7', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5175, 'N2903', '月', 'IONGUN系統保養', 'IG模組', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5176, 'N2903', '月', 'IONGUN系統保養', '擋板模組', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5177, 'N2903', '月', '機台內部清潔', '過濾器濾芯【大】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5178, 'N2903', '季度', '各絲桿滑塊保養', 'L-200油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5179, 'N2903', '半年', '冷卻水過濾器UF-61C-1冷卻水濾芯更換', 'UF-61C-1冷卻水濾芯', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5180, 'N2903', '年', '回轉泵保養', '機械泵油R7', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5181, 'N2090', '月', 'IONGUN系統保養', 'IG模組', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5182, 'N2090', '月', 'IONGUN系統保養', '擋板模組', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5183, 'N2090', '月', '機台內部清潔', '過濾器濾芯【大】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5184, 'N2090', '季度', '各絲桿滑塊保養', 'L-200油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5185, 'N2090', '半年', '冷卻水過濾器UF-61C-1冷卻水濾芯更換', 'UF-61C-1冷卻水濾芯', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5186, 'N2090', '年', '回轉泵保養', '機械泵油R7', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5187, 'N0768', '月', '更換IONGUN系統', 'IG模組', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5188, 'N0768', '月', '更換IONGUN系統', '鎢絲座模組', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5189, 'N0768', '月', 'IONGUN系統保養', 'SHUTTER擋板', 8);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5190, 'N0768', '月', 'IONGUN系統保養', 'SFE-6830微調機IONGUN石墨擋片(768)', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5191, 'N0768', '季度', 'IONGUN系統保養', 'SFE-6830微調機石墨基座', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5192, 'N0768', '季度', '各絲桿滑塊保養', 'L-200油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5193, 'N0768', '年', '回轉泵保養', '機械泵油R7', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5194, 'N3017', '月', 'IONGUN系統保養', 'IG模組', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5195, 'N3017', '月', 'IONGUN系統保養', '擋板模組', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5196, 'N3017', '月', 'DC/MC吸嘴', '過濾器濾芯【大】', 7);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5197, 'N3017', '季度', '各絲桿滑塊保養', 'L-200油脂', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5198, 'N3017', '半年', 'DC/MC自淨器濾網更換', '自淨器粗效過濾網', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5199, 'N3017', '年', '回轉泵保養', '機械泵油R7', 3);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5200, 'N3017', '年', '回轉泵保養', '真空泵油 R4', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5201, 'N3056', '月', 'IONGUN系統保養', 'IG模組', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5202, 'N3056', '月', 'IONGUN系統保養', '擋板模組', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5203, 'N3056', '月', 'DC/MC吸嘴', '過濾器濾芯【大】', 12);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5204, 'N3056', '月', 'DC/MC吸嘴吸取定位機構', 'SPX4A-DC4A PKG 定位片', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5205, 'N3056', '季度', '各絲桿滑塊保養', 'L-200油脂', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5206, 'N3056', '半年', 'DC/MC自淨器濾網更換', '自淨器粗效過濾網', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5207, 'N3056', '年', '回轉泵保養', '機械泵油R7', 3);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5208, 'N3056', '年', '回轉泵保養', '真空泵油 R4', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5209, 'N3064', '月', 'IONGUN系統保養', 'IG模組', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5210, 'N3064', '月', 'IONGUN系統保養', '擋板模組', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5211, 'N3064', '月', 'DC/MC吸嘴', '過濾器濾芯【大】', 13);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5212, 'N3064', '月', 'DC/MC吸嘴吸取定位機構', 'SPX4A-DC4A PKG 定位片', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5213, 'N3064', '季度', '各絲桿滑塊保養', 'L-200油脂', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5214, 'N3064', '半年', 'DC/MC自淨器濾網更換', '自淨器粗效過濾網', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5215, 'N3064', '年', '回轉泵保養', '機械泵油R7', 3);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5216, 'N3064', '年', '回轉泵保養', '真空泵油 R4', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5217, 'N3094', '月', 'IONGUN系統保養', 'IG模組', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5218, 'N3094', '月', 'IONGUN系統保養', '擋板模組', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5219, 'N3094', '月', 'DC/MC吸嘴', '過濾器濾芯【大】', 12);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5220, 'N3094', '月', 'DC/MC吸嘴吸取定位機構', 'SPX4A-DC4A PKG 定位片', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5221, 'N3094', '季度', '各絲桿滑塊保養', 'L-200油脂', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5222, 'N3094', '半年', 'DC/MC自淨器濾網更換', '自淨器粗效過濾網', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5223, 'N3094', '年', '回轉泵保養', '機械泵油R7', 3);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5224, 'N3094', '年', '回轉泵保養', '真空泵油 R4', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5225, 'N3107', '月', 'IONGUN系統保養', 'IG模組', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5226, 'N3107', '月', 'IONGUN系統保養', '擋板模組', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5227, 'N3107', '月', 'DC/MC吸嘴', '過濾器濾芯【大】', 12);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5228, 'N3107', '月', 'DC/MC吸嘴吸取定位機構', 'SPX4A-DC4A PKG 定位片', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5229, 'N3107', '季度', '各絲桿滑塊保養', 'L-200油脂', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5230, 'N3107', '半年', 'DC/MC自淨器濾網更換', '自淨器粗效過濾網', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5231, 'N3107', '年', '回轉泵保養', '機械泵油R7', 3);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5232, 'N3107', '年', '回轉泵保養', '真空泵油 R4', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5233, 'N2829', '月', 'IONGUN系統保養', 'IG模組', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5234, 'N2829', '月', 'IONGUN系統保養', '擋板模組', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5235, 'N2829', '月', 'DC/MC吸嘴', '過濾器濾芯【大】', 12);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5236, 'N2829', '月', 'DC/MC吸嘴吸取定位機構', 'SPX4A-DC4A PKG 定位片', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5237, 'N2829', '季度', '各絲桿滑塊保養', 'L-200油脂', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5238, 'N2829', '半年', 'DC/MC自淨器濾網更換', '自淨器粗效過濾網', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5239, 'N2829', '年', '回轉泵保養', '機械泵油R7', 3);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5240, 'N2829', '年', '回轉泵保養', '真空泵油 R4', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5241, 'N2625', '月', 'IONGUN系統保養', 'IG模組', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5242, 'N2625', '月', 'IONGUN系統保養', '擋板模組', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5243, 'N2625', '月', 'DC/MC吸嘴', '過濾器濾芯【大】', 12);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5244, 'N2625', '月', 'DC/MC吸嘴吸取定位機構', 'SPX4A-DC4A PKG 定位片', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5245, 'N2625', '季度', '各絲桿滑塊保養', 'L-200油脂', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5246, 'N2625', '半年', 'DC/MC自淨器濾網更換', '自淨器粗效過濾網', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5247, 'N2625', '年', '回轉泵保養', '機械泵油R7', 3);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5248, 'N2625', '年', '回轉泵保養', '真空泵油 R4', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5249, 'N2091', '月', 'IONGUN系統保養', 'IG模組', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5250, 'N2091', '月', 'IONGUN系統保養', '擋板模組', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5251, 'N2091', '月', '機台內部清潔', '過濾器濾芯【大】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5252, 'N2091', '季度', '各絲桿滑塊保養', 'L-200油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5253, 'N2091', '半年', '冷卻水過濾器UF-61C-1冷卻水濾芯更換', 'UF-61C-1冷卻水濾芯', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5254, 'N2091', '年', '回轉泵保養', '機械泵油R7', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5255, 'N3372', '月', 'IONGUN系統保養', 'IG模組', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5256, 'N3372', '月', 'IONGUN系統保養', '擋板模組', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5257, 'N3372', '季度', '各絲桿滑塊保養', 'L-200油脂', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5258, 'N3372', '年', '回轉泵保養', '機械泵油R7', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5259, 'N3372', '年', '回轉泵保養', '真空泵油 R4', 0);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5260, 'N3488', '月', 'IONGUN系統保養', 'IG模組', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5261, 'N3488', '月', 'IONGUN系統保養', '擋板模組', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5262, 'N3488', '季度', '各絲桿滑塊保養', 'L-200油脂', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5263, 'N3488', '年', '回轉泵保養', '機械泵油R7', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5264, 'N3516', '年', 'DC/MC吸嘴', '過濾器濾芯【大】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5265, 'N3516', '月', 'IONGUN系統保養', 'IG模組', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5266, 'N3516', '月', 'IONGUN系統保養', '擋板模組', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5267, 'N3516', '季度', '各絲桿滑塊保養', 'L-200油脂', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5268, 'N3516', '年', '回轉泵保養', '機械泵油R7', 3);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5269, 'N3529', '月', 'IONGUN系統保養', 'IG模組', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5270, 'N3529', '月', 'IONGUN系統保養', '擋板模組', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5271, 'N3529', '月', '機台內部清潔', '過濾器濾芯【大】', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5272, 'N3529', '季度', '各絲桿滑塊保養', 'L-200油脂', 2);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5273, 'N3529', '年', '回轉泵保養', '機械泵油R7', 3);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5274, 'N3684', '月', 'IONGUN系統保養', 'IG模組', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5275, 'N3684', '月', 'IONGUN系統保養', '擋板模組', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5276, 'N3684', '月', '機台內部清潔', '過濾器濾芯【大】', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5277, 'N3684', '季度', '各絲桿滑塊保養', 'L-200油脂', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5278, 'N3684', '半年', '冷卻水過濾器UF-61C-1冷卻水濾芯更換', 'UF-61C-1冷卻水濾芯', 1);
INSERT
INTO
    spare_parts_management.item_cost
    (id, device_number, maintenance_cycle, maintenance_item, spare_part_name, quantity)
VALUES
    (5279, 'N3684', '年', '回轉泵保養', '機械泵油R7', 2);

