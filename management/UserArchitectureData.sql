-- 清除测试用户数据
TRUNCATE TABLE user_management.user_data;

-- 添加用户数据
INSERT
INTO
    user_management.user_data
    (username, password, name, belong)
VALUES
    ('N01260', '$2a$10$jA7HB7UEwmmq81Sty3frAegQHbbsuHH.JFzqMi8M1Ry96TWjXgE6i', '赵麒麟', '领导'),
    ('N01933', '$2a$10$jA7HB7UEwmmq81Sty3frAegQHbbsuHH.JFzqMi8M1Ry96TWjXgE6i', '王立虎', '保养'),
    ('N03656', '$2a$10$jA7HB7UEwmmq81Sty3frAegQHbbsuHH.JFzqMi8M1Ry96TWjXgE6i', '任炳', '换靶'),
    ('N03978', '$2a$10$jA7HB7UEwmmq81Sty3frAegQHbbsuHH.JFzqMi8M1Ry96TWjXgE6i', '王永学', '领导'),
    ('N04553', '$2a$10$jA7HB7UEwmmq81Sty3frAegQHbbsuHH.JFzqMi8M1Ry96TWjXgE6i', '李浩勇', '保养'),
    ('N05511', '$2a$10$jA7HB7UEwmmq81Sty3frAegQHbbsuHH.JFzqMi8M1Ry96TWjXgE6i', '王斌', '保养'),
    ('N06099', '$2a$10$jA7HB7UEwmmq81Sty3frAegQHbbsuHH.JFzqMi8M1Ry96TWjXgE6i', '熊杰', '换靶'),
    ('N06779', '$2a$10$jA7HB7UEwmmq81Sty3frAegQHbbsuHH.JFzqMi8M1Ry96TWjXgE6i', '刘克运', '换靶'),
    ('N07405', '$2a$10$jA7HB7UEwmmq81Sty3frAegQHbbsuHH.JFzqMi8M1Ry96TWjXgE6i', '郁华', '保养'),
    ('N08564', '$2a$10$jA7HB7UEwmmq81Sty3frAegQHbbsuHH.JFzqMi8M1Ry96TWjXgE6i', '孙楠', '保养'),
    ('N09182', '$2a$10$jA7HB7UEwmmq81Sty3frAegQHbbsuHH.JFzqMi8M1Ry96TWjXgE6i', '王璇', '保养'),
    ('N09766', '$2a$10$jA7HB7UEwmmq81Sty3frAegQHbbsuHH.JFzqMi8M1Ry96TWjXgE6i', '刘佳辉', '保养'),
    ('N11003', '$2a$10$jA7HB7UEwmmq81Sty3frAegQHbbsuHH.JFzqMi8M1Ry96TWjXgE6i', '伍英贤', '保养'),
    ('N11411', '$2a$10$jA7HB7UEwmmq81Sty3frAegQHbbsuHH.JFzqMi8M1Ry96TWjXgE6i', '赵子奎', '保养'),
    ('Nxxxxx', '$2a$10$jA7HB7UEwmmq81Sty3frAegQHbbsuHH.JFzqMi8M1Ry96TWjXgE6i', '邹忠', '保养');


