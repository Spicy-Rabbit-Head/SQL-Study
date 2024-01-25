-- 清除测试用户数据
TRUNCATE TABLE user_management.user_data;

-- 添加用户数据
INSERT
INTO
    user_management.user_data
    (username, password, name, belong)
VALUES
    ('N01260', '$2a$10$jA7HB7UEwmmq81Sty3frAegQHbbsuHH.JFzqMi8M1Ry96TWjXgE6i', '赵麒麟', 'LEADER'),
    ('N01933', '$2a$10$jA7HB7UEwmmq81Sty3frAegQHbbsuHH.JFzqMi8M1Ry96TWjXgE6i', '王立虎', 'MAINTENANCE'),
    ('N03656', '$2a$10$jA7HB7UEwmmq81Sty3frAegQHbbsuHH.JFzqMi8M1Ry96TWjXgE6i', '任炳', 'CHANGE_TARGET'),
    ('N03978', '$2a$10$jA7HB7UEwmmq81Sty3frAegQHbbsuHH.JFzqMi8M1Ry96TWjXgE6i', '王永学', 'LEADER'),
    ('N04553', '$2a$10$jA7HB7UEwmmq81Sty3frAegQHbbsuHH.JFzqMi8M1Ry96TWjXgE6i', '李浩勇', 'MAINTENANCE'),
    ('N05511', '$2a$10$jA7HB7UEwmmq81Sty3frAegQHbbsuHH.JFzqMi8M1Ry96TWjXgE6i', '王斌', 'MAINTENANCE'),
    ('N06099', '$2a$10$jA7HB7UEwmmq81Sty3frAegQHbbsuHH.JFzqMi8M1Ry96TWjXgE6i', '熊杰', 'CHANGE_TARGET'),
    ('N06779', '$2a$10$jA7HB7UEwmmq81Sty3frAegQHbbsuHH.JFzqMi8M1Ry96TWjXgE6i', '刘克运', 'CHANGE_TARGET'),
    ('N07405', '$2a$10$jA7HB7UEwmmq81Sty3frAegQHbbsuHH.JFzqMi8M1Ry96TWjXgE6i', '郁华', 'MAINTENANCE'),
    ('N08564', '$2a$10$jA7HB7UEwmmq81Sty3frAegQHbbsuHH.JFzqMi8M1Ry96TWjXgE6i', '孙楠', 'MAINTENANCE'),
    ('N09182', '$2a$10$jA7HB7UEwmmq81Sty3frAegQHbbsuHH.JFzqMi8M1Ry96TWjXgE6i', '王璇', 'MAINTENANCE'),
    ('N09766', '$2a$10$jA7HB7UEwmmq81Sty3frAegQHbbsuHH.JFzqMi8M1Ry96TWjXgE6i', '刘佳辉', 'MAINTENANCE'),
    ('N11003', '$2a$10$jA7HB7UEwmmq81Sty3frAegQHbbsuHH.JFzqMi8M1Ry96TWjXgE6i', '伍英贤', 'MAINTENANCE'),
    ('N11411', '$2a$10$jA7HB7UEwmmq81Sty3frAegQHbbsuHH.JFzqMi8M1Ry96TWjXgE6i', '赵子奎', 'MAINTENANCE'),
    ('Nxxxxx', '$2a$10$jA7HB7UEwmmq81Sty3frAegQHbbsuHH.JFzqMi8M1Ry96TWjXgE6i', '邹忠', 'MAINTENANCE');


