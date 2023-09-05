/* 类型函数 */


/* 字符串函数 */

/*
 返回指定字符串的第一个字符的 ASCII 码
 */
SELECT ASCII('s333');


/*
 返回给定字符串所占的位数
 */
SELECT BIT_LENGTH('2'), BIT_LENGTH('你');


/*
 从一个字符的开头和结尾删除一个包含了
 由参数指定的所有字符（默认为空格）的最长的字符串
 */
SELECT BTRIM('xxyHello', 'xy');


/*
 返回一个字符串中的字符数
 */
SELECT CHAR_LENGTH('2333');


/*
 返回一个字符串中的字符数
 */
SELECT CHARACTER_LENGTH('2333');


/*
 返回给定代码表示的字符
 */
-- 输入 ASCII 码值或 Unicode 码值
SELECT CHR('65');


/*
 将所有参数拼接为一个字符串并返回结果
 */
SELECT CONCAT('Hello', ' ', 'World');


/*
 使用分隔符接为一个字符串并返回结果
 */
SELECT CONCAT_WS('-', 'Hello', 'World');

/*
 根据指定的格式字符串和参数返回一个格式化的字符串
 */
SELECT FORMAT('Hello %s', 'World');
-- 格式化由 % 开始,类型结束
-- 可选参数: position 指定选择第几个参数
-- 可选参数: flags 和宽度搭配,-号为左对齐,否则默认
-- 可选参数: width 设置此格式说明符输出的最少字符数,使用空格填充

/*
 字符串中的每个单词的首字母转为大写
 其他字母转为小写
 */
SELECT INITCAP('hello world');

/*
 在指定字符串中提取最左侧的指定数量的字符并返回
 */
SELECT LEFT('hello', 2);
-- 可以为负数,负数时从右侧除去指定数量并返回
SELECT LEFT('hello', -1);

/*
 返回指定的字符串的长度
 */
SELECT LENGTH('Hello');

/*
 根据数据库的区域设置规则将字符串转为小写并返回
 */
SELECT LOWER('HELLO');

/*
 在一个字符串的左侧填充指定的字符
 使其达到指定的长度
 */
-- 未超过指定的长度则填充
-- 超过则截断
SELECT LPAD('Hello', 10);
-- 指定填充
SELECT LPAD('Hello', 10, 'World');

/*
 从一个字符的左侧删除一个包含了由参数指定的
 所有字符（默认为空格）的最长的字符串
 */
SELECT LTRIM('abc', 'a');

/*
 计算一个指定的字符串的 md5 哈希值
 并返回计算结果的十六进制形式
 */
SELECT MD5('666');

/*
 将给定的字符串转换为指定的 Unicode 规范化形式
 */
SELECT NORMALIZE(U&'\0061\0308bc', NFC);
-- NFD：规范化分解
-- NFKD：兼容性分解
-- NFC：规范化分解后再规范化组合
-- NFKC：兼容性分解后再规范化组合

/*
 以字节(byte)为单位返回给定字符串的长度
 */
SELECT OCTET_LENGTH('你好!');

/*
 在一个字符串中使用指定的文本替换从指定位置开始的指定数量的字符
 */
SELECT OVERLAY('Hello Tim' PLACING 'Hi' FROM 1 FOR 5);
-- OVERLAY(待替换文本 PLACING 替换文本 FROM 起始点 FOR 替换数);

/*
 参数拆分成一个标识符的数组,同时删除单个标识符两端的引号
 如果启用了严格模式,最后一个标识符之后的其他字符将会导致一个错误
 如果未启用严格模式,将会忽略额外的字符
 */
SELECT PARSE_IDENT('"SomeSchema"."someTable"', TRUE);

/*
 返回当前客户端使用的编码
 */
SELECT PG_CLIENT_ENCODING();

/*
 返回一个指定的子字符串在一个字符串中的起始索引
 */
SELECT POSITION('world' IN 'hello world');

/*
 返回适当引用的给定字符串,以用作 SQL 语句字符串中的标识符
 如果参数是合格的标识符则不会自动添加双引号
 */
SELECT QUOTE_IDENT('hello world');

/*
 使用单引号引用给定的字符串
 以用作 SQL 语句字符串中的字符串字面量
 参数自动添加单引号
 */
SELECT QUOTE_LITERAL('abc');

/*
 使用单引号引用给定的字符串
 以用作 SQL 语句字符串中的字符串字面量
 非字符串类型的值会被当作字符串处理
 */
SELECT QUOTE_NULLABLE('abc');

/*
 从一个字符串中返回指定的正则表达式的第一个匹配的结果
 最后可添加匹配模式参数
 */
SELECT REGEXP_MATCH('Abc abC aBc', 'ab.', 'i');

/*
 从一个字符串中返回指定的正则表达式的第一次匹配的结果
 如果使用了 g 标识,则返回所有的匹配结果
 最后可添加匹配模式参数
 */
SELECT REGEXP_MATCHES('abc abC Abc', 'ab.', 'g');

/*
 一个给定字符串中用给定的内容替换给定的正则表达式的第一个匹配的子串
 如果使用了 g 标识,则替换所有的匹配结果
 最后可添加匹配模式参数
 */
SELECT REGEXP_REPLACE('aBc abc', 'ab.', 'xxx');

/*
 将一个指定的字符串按照通过 POSIX 正则表达式指定的分隔符拆分成数组并返回
 最后可添加匹配模式参数
 */
SELECT REGEXP_SPLIT_TO_ARRAY('a-b-c', '-');

/*
 将一个指定的字符串按照通过 POSIX 正则表达式指定的分隔符拆分成一个结果集并返回
 最后可添加匹配模式参数
 */
SELECT REGEXP_SPLIT_TO_TABLE('a-b-c', '-');

/*
 将指定的字符串重复指定的次数并返回
 */
SELECT REPEAT('Hello', 3);

/*
 将一个指定的字符串中出现的所有指定的子字符串替换为新的子字符串并返回结果
 */
SELECT REPLACE('Hello', 'H', 'h');

/*
 反转一个指定的字符串中的字符顺序并返回反转的字符串
 */
SELECT REVERSE('abc');

/*
 在指定字符串中提取最右侧的指定数量的字符并返回
 */
SELECT RIGHT('abc', 1);
-- 可以为负数,负数时从右侧除去指定数量并返回
SELECT RIGHT('abc', -2);

/*
 在一个字符串的右侧填充指定的字符
 使其达到指定的长度
 超过长度则截断
 */
SELECT RPAD('Hello', 10, '!');

/*
 从一个字符的右侧删除一个包含了由参数指定的所有字符（默认为空格）的最长的字符串
 */
SELECT RTRIM('abc', 'c');

/*
 将一个指定的字符串按照指定的分隔符拆分
 并返回指定的部分
 */
SELECT SPLIT_PART('a-b-c', '-', 2);

/*
 检查一个字符串是否以一个指定的前缀开头
 */
SELECT STARTS_WITH('abc', 'a');

/*
 将一个指定的字符串按照指定的分隔符拆分成数组并返回
 最后指定拆分后的数组中与它匹配的元素将被替换为 NULL
 */
SELECT STRING_TO_ARRAY('a-b-c-!', '-', '!');

/*
 将一个指定的字符串按照指定的分隔符拆分并将结果作为表返回
 最后指定拆分后的数组中与它匹配的元素将被替换为 NULL
 */
SELECT STRING_TO_TABLE('a-b-c-!', '-', '!');

/*
 返回一个指定的子字符串在一个字符串中的第一个起始索引
 */
SELECT STRPOS('abc', 'b');

/*
 从一个指定的字符串中根据指定的起始位置和长度提取子字符串并返回
 默认是提取到字符串的结尾
 */
SELECT SUBSTR('Hello', 2, 2);

/*
 从一个指定的字符串中根据指定的起始位置和长度提取子字符串
 或者根据正则表达式提取子字符串
 */
-- 根据指定起始和长度
SELECT SUBSTRING('abc' FROM 1 FOR 2);
-- 根据正则表达式
SELECT SUBSTRING('abc' FROM 'b.');

/*
 将指定的字符串从一个指定的编码转为 ASCII
 */
SELECT TO_ASCII('Hello', 'LATIN1');

/*
 根据指定的格式将时间戳值、间隔值、数字值转为字符串并返回结果
 模板格式详看附4
 */
SELECT TO_CHAR(TIMESTAMP '2022-05-17 17:31:12.112', 'YYYY/MM/DD HH12:MI:SS');
SELECT TO_CHAR(12345678.9, '999G999G999G999G999.900');

/*
 将指定的数字转换为十六进制表示并返回
 */
SELECT TO_HEX(233);

/*
 根据给定的格式将指定的字符串转为一个数字
 模板格式详看附4
 */
SELECT TO_NUMBER('123,456,789.012-', '999G999G999D999S');

/*
 根据指定的翻译关系来翻译一个指定的字符串
 翻译关系是两个字符串中的字符的一一对应关系
 */
SELECT TRANSLATE('hello judi', 'judi', 'tim');

/*
 从指定字符串的开头、结尾或者两端删除
 由指定字符组成的最长的字符串
 LEADING : 意味着要从字符串的开头删除字符
 RAILING : 意味着要从字符串的结尾删除字符
 BOTH : 意味着要从字符串的两端删除字符
 (删除方向选择 '指定字符' FROM '指定字符串')
 */
SELECT TRIM(TRAILING 'd' FROM 'Hello World');

/*
 将转义的 Unicode 字符转为普通字符串
 */
SELECT UNISTR('\0441\043B\043E\043D');

/*
 根据数据库的区域设置规则将字符串转为大写并返回
 */
SELECT UPPER('hello');


/* 数学函数 */

/*
 返回指定数字的绝对值
 */
SELECT ABS(-1.5);

/*
 弧度为单位返回指定数值的反余弦值
 */
SELECT ACOS(0.2);

/*
 以度为单位返回指定数值的反余弦值
 */
SELECT ACOSD(0.2);

/*
 返回指定数值的反双曲余弦
 */
SELECT ACOSH(2);

/*
 以弧度为单位返回指定数值的反正弦
 */
SELECT ASIN(0.2);

/*
 以度为单位返回指定数值的反正弦
 */
SELECT ASIND(0.2);

/*
 返回指定数值的反双曲正弦
 */
SELECT ASINH(2);

/*
 以弧度为单位返回指定数值的反正切
 */
SELECT ATAN(0.2);

/*
 以弧度为单位返回指定的两个数除法运算的结果的反正切
 (被除数,除数)
 */
SELECT ATAN2(1, 2);

/*
 以度为单位返回指定的两个数除法运算的结果的反正切
 (被除数,除数)
 */
SELECT ATAN2D(1, 2);

/*
 以度为单位返回指定数值的反正切
 */
SELECT ATAND(0.2);

/*
 指定数值的反双曲正切
 */
SELECT ATANH(0.5);

/*
 返回指定数字的立方根
 */
SELECT CBRT(125);

/*
 返回大于或等于由参数指定的数字的最小整数值
 */
SELECT CEIL(10.11);

/*
 返回大于或等于由参数指定的数字的最小整数值
 */
SELECT CEILING(10.11);

/*
 返回指定弧度的余弦值
 */
SELECT COS(0.2);

/*
 返回指定的以度为单位的数值的余弦值
 */
SELECT COSD(45);

/*
 返回指定数值的双曲余弦
 */
SELECT COSH(0.2);

/*
 返回指定弧度的余切
 */
SELECT COT(0.2);

/*
 返回指定的以度为单位的数值的余切
 */
SELECT COTD(35);

/*
 将指定的弧度值转为度数值并返回结果
 */
SELECT DEGREES(3.14);

/*
 将指定的两个数字做除法运算并返回整数商
 (被除数,除数)
 */
SELECT DIV(3, 2);

/*
 返回自然常数 e 的指定的次方
 */
SELECT EXP(2);

/*
 返回一个数字的阶乘
 */
SELECT FACTORIAL(5);

/*
 返回小于或等于由参数指定的数字的最大整数值
 */
SELECT FLOOR(10.11);

/*
 返回指定的两个数字的最大公约数
 (被除数,除数)
 */
SELECT GCD(3, 2);

/*
 返回指定的两个数字的最小公倍数
 (被除数,除数)
 */
SELECT LCM(3, 2);

/*
 返回由参数指定的数字的自然对数
 */
SELECT LN(3);

/*
 返回由参数指定的数字的指定的底的对数
 (底数,一个需要获取其对数的数字)
 */
SELECT LOG(10, 9);

/*
 返回由参数指定的数字的以 10 为底的对数
 */
SELECT LOG10(9);

/*
 返回精确表示给定的数字所需的最小的精度（小数位位数）
 */
SELECT MIN_SCALE(2.15);

/*
 返回指定的两个数字做除法运算后的余数
 (被除数,除数)
 */
SELECT MOD(2, 5);

/*
 返回圆周率 π 的近似值,精确到小数点后 15 位
 */
SELECT PI();

/*
 返回一个指定数字的指定的次方
 */
SELECT POWER(2, 5);

/*
 将指定的度数值转为弧度值并返回结果
 */
SELECT RADIANS(125);

/*
 返回一个 0 (包含) 和 1 (不包含) 之间的随机数
 */
SELECT RANDOM();

/*
 将指定的数字四舍五入后到指定的精度并返回结果
 */
SELECT ROUND(2.251, 2);

/*
 返回给定数字的小数位数
 */
SELECT SCALE(2.25);

/*
 为后续调用的 random() 函数设置种子
 以让 random() 函数产生一个可重复的随机序列
 */
SELECT SETSEED(0.1), RANDOM();

/*
 返回给定数字的符号
 负数返回-1,正数返回1,0返回0
 */
SELECT SIGN(-0.5);

/*
 返回指定弧度的正弦值
 */
SELECT SIN(0.2);

/*
 返回指定的以度为单位的数值的正弦值
 */
SELECT SIND(30);

/*
 返回指定数值的双曲正弦
 */
SELECT SINH(0.1);

/*
 返回给定数字的平方根
 */
SELECT SQRT(5);

/*
 返回指定弧度的正切
 */
SELECT TAN(2);

/*
 返回指定的以度为单位的数值的正切
 */
SELECT TAND(30);

/*
 返回指定数值的双曲正切
 */
SELECT TANH(0.2);

/*
 删除给定数字的小数部分结尾的 0 并返回结果
 */
SELECT TRIM_SCALE(0.21000);

/*
 将指定的数字截断到指定的精度并返回结果
 */
SELECT TRUNC(0.21111, 2);

/*
 返回一个指定的操作数位于一些指定的桶中的位置
 (操作数, 所有的桶的最小边界（包含）, 所有的桶的最大边界（不包含）, 桶的数量)
 (操作数, 所有的桶都通过此数组定义)
 */
SELECT WIDTH_BUCKET(6, 2, 8, 3);
SELECT WIDTH_BUCKET(6, ARRAY [2, 4, 6, 8]::INT[]);

/* 日期时间函数 */

/*
 根据指定的生日返回指定日期或现在的年龄
 (要计算年龄的日期,生日)
 */
SELECT AGE(TIMESTAMP '2001-01-01');
SELECT AGE(TIMESTAMP '2010-02-02', TIMESTAMP '2001-01-01');

/*
 返回此函数执行时的日期和时间
 */
SELECT CLOCK_TIMESTAMP();

/*
 函数返回当前的系统日期,格式为 YYYY-MM-DD
 */
SELECT CURRENT_DATE;

/*
 返回带有时区信息的系统时间,格式为 HH:MI:SS.ssssss{+|-}ZZ
 */
SELECT CURRENT_TIME;
-- 指定小数位
SELECT CURRENT_TIME(2);

/*
 返回当前的日期和时间（所属事务开始的时间）
 */
SELECT CURRENT_TIMESTAMP;
-- 指定小数位
SELECT CURRENT_TIMESTAMP(2);

/*
 将指定的时间戳截断到最近的指定的时间间隔的开始
 (时间间隔,要处理的时间,时间部分将会作为偏移量添加到结果时间上)
 */
SELECT DATE_BIN('10 minutes', TIMESTAMP '2022-05-16 12:41:13', TIMESTAMP '2001-01-01');

/*
 指定的时间戳或者时间间隔中抽取指定的部分并返回
 单位格式见 附4
 */
-- 抽取世纪
SELECT DATE_PART('century', TIMESTAMP '2022-05-16 12:41:13.662522');
-- 抽取星期几
SELECT DATE_PART('isodow', TIMESTAMP '2022-05-16 12:41:13.662522');

/*
 将一个指定的时间戳或间隔值截断到指定的部分并返回
 单位格式见 附4
 */
-- 截断到小时
SELECT DATE_TRUNC('hour', TIMESTAMP '2022-05-16 12:41:13.662522');
-- 截断到年
SELECT DATE_TRUNC('year', TIMESTAMP '2022-05-16 12:41:13.662522');

/*
 从指定的时间戳或者时间间隔中抽取指定的部分并返回
 单位格式见 附4
 */
-- 抽取世纪
SELECT EXTRACT(CENTURY FROM TIMESTAMP '2022-05-16 12:41:13.662522');
-- 抽取周
SELECT EXTRACT(WEEK FROM TIMESTAMP '2022-05-16 12:41:13.662522');

/*
 检测一个给定的日期、时间戳或间隔值是否是有限大的
 */
SELECT ISFINITE(TIMESTAMP '2022-05-16 12:41:13.662522');
SELECT ISFINITE(TIMESTAMP 'infinity');

/*
 转换时间间隔的表示方法,将超过 30 天的天数转为月数
 */
-- 32 天
SELECT JUSTIFY_DAYS(INTERVAL '32 days');

/*
 转换时间间隔的表示方法,将超过 24 小时的小时数转为天数
 */
-- 25 小时
SELECT JUSTIFY_HOURS(INTERVAL '25 hours');

/*
 转换时间间隔的表示方法
 将超过 24 小时的小时数转为天数
 并且将超过 30 天的天数转为月数
 */
-- 6000 小时
SELECT JUSTIFY_INTERVAL(INTERVAL '6000 hours');

/*
 返回当前的系统时间,格式为 HH:MM:SS.ssssss
 */
SELECT LOCALTIME;
-- 指定小数位
SELECT LOCALTIME(3);

/*
 返回所属的事务开始的系统日期和时间
 */
SELECT LOCALTIMESTAMP;
-- 指定小数位
SELECT LOCALTIMESTAMP(3);

/*
 从给定的年、月、日字段创建一个日期
 (年,月,日)
 */
SELECT MAKE_DATE(2022, 5, 16);
-- 公元前(BC 表示公元前)
SELECT MAKE_DATE(-2022, 5, 16);

/*
 从给定的年、月、日、时、分、秒字段创建一个间隔值
 (年,月,日,周,天,小时,分钟,秒)
 */
SELECT MAKE_INTERVAL(1, 2, 3, 4, 5, 6, 1.123);
-- 单独指定字段
SELECT MAKE_INTERVAL(years => 2);

/*
 从给定的时、分、秒字段创建一个时间
 (小时,分钟,秒)
 */
SELECT MAKE_TIME(20, 55, 25.1231);

/*
 从给定的年、月、日、时、分、秒字段创建一个时间戳值
 (年,月,日,时,分,秒)
 */
SELECT MAKE_TIMESTAMP(2022, 5, 16, 20, 55, 25.1231);
-- 公元前(BC 表示公元前)
SELECT MAKE_TIMESTAMP(-2022, 5, 16, 20, 55, 25.1231);

/*
 从给定的年、月、日、时、分、秒、时区字段创建一个带有时区信息的时间戳值
 (年,月,日,时,分,秒,时区)
 */
SELECT MAKE_TIMESTAMPTZ(2022, 5, 15, 20, 55, 25.517606, 'Asia/Shanghai');

/*
 返回所属的事务开始时的系统日期和时间
 */
SELECT NOW();

/*
将当前服务器进程的执行暂停（睡眠）指定的秒数
 */
SELECT NOW();
SELECT PG_SLEEP(1);
SELECT NOW();

/*
 接收一个间隔参数,将当前服务器进程的执行暂停（睡眠）指定的间隔
 */
SELECT NOW();
SELECT PG_SLEEP_FOR(INTERVAL '2 second');
SELECT NOW();

/*
 接收一个时间戳值,将当前服务器进程的执行暂停（睡眠）到这个指定的时刻
 */
SELECT NOW();
SELECT PG_SLEEP_UNTIL(NOW() + INTERVAL '5 second');
SELECT NOW();

/*
 函数返回所在的语句开始执行时的时间戳
 */
SELECT STATEMENT_TIMESTAMP();

/*
 返回一个表表示此函数执行时的时间戳的字符串
 同一个语句中的两次执行的返回值可能不同
 */
SELECT TIMEOFDAY();

/*
 根据给定的格式将指定的字符串转为一个日期值
 */
SELECT TO_DATE('05 Dec 2000', 'DD Mon YYYY');

/*
 将 Unix 纪元时间转为一个标准的带时区信息的时间戳
 或者根据给定的格式将指定的字符串转为时间戳
 */
SELECT TO_TIMESTAMP(10000000000);

/*
 返回所属的事务开始时的系统日期和时间
 */
SELECT TRANSACTION_TIMESTAMP();


/* JSON 函数 */

/*
 将一个 SQL 数组转为 JSON 数组并返回
 (转为 JSON 数组的 SQL 数组,是否增加在顶层元素间换行符以美化 JSON)
 */
SELECT ARRAY_TO_JSON('{1, 2, 3, 4}'::INT[]);
-- 美化
SELECT ARRAY_TO_JSON('{1, 2, 3, 4}'::INT[], TRUE);

/*
 将顶层 JSON 数组扩展为一个 JSON 值的集合
 */
SELECT
    JSON_ARRAY_ELEMENTS('[
      1,
      2,
      [
        3,
        4
      ]
    ]');

/*
 将顶层 JSON 数组扩展为一个文本值的集合
 */
SELECT
    JSON_ARRAY_ELEMENTS_TEXT('[
      1,
      2,
      [
        3,
        4
      ]
    ]');

/*
 返回一个指定的 JSON 数组的长度（数组中顶层元素的数量）
 */
SELECT
    JSON_ARRAY_LENGTH('[
      1,
      2,
      [
        3,
        4
      ]
    ]');

/*
 从可变的参数列表中创建一个可能是异构类型的 JSON 数组并返回
 */
SELECT JSON_BUILD_ARRAY(1, 'a', TRUE);

/*
 从可变的参数列表（由交替的交替的键和值组成）中创建 JSON 对象并返回
 */
SELECT JSON_BUILD_OBJECT(1, 'a', TRUE, ROW (2, 'b', FALSE));

/*
 将一个指定的 JSON 对象扩展为一个键值对（键是文本类型,值是 JSON 类型）的集合
 */
SELECT
    JSON_EACH('{
      "name": "Tom",
      "age": 20,
      "hobbies": [
        "sports",
        "cars"
      ]
    }');

/*
 将一个指定的 JSON 对象顶层成员扩展为一个键值对（键和值都是文本类型）的集合
 */
SELECT
    JSON_EACH_TEXT('{
      "name": "Tom",
      "age": 20,
      "hobbies": [
        "sports",
        "cars"
      ]
    }');

/*
 从一个指定的 JSON 值中提取指定的路径的值
 (要从中提取 JSON 值的 JSON 值,可变的参数列表)
 */
SELECT
    JSON_EXTRACT_PATH('{
      "a": 1,
      "b": {
        "x": 2,
        "y": 3
      }
    }', 'a');
-- 提取嵌套
SELECT
    JSON_EXTRACT_PATH('{
      "a": 1,
      "b": {
        "x": 2,
        "y": 3
      }
    }', 'b', 'y');

/*
 从一个指定的 JSON 值中提取指定的路径的值,并将结果作为文本返回
 (要从中提取 JSON 值的 JSON 值,可变的参数列表)
 */
SELECT
    JSON_EXTRACT_PATH_TEXT('[
      1,
      2,
      [
        3,
        4
      ]
    ]', '0');
-- 提取嵌套
SELECT
    JSON_EXTRACT_PATH_TEXT('{
      "a": 1,
      "b": {
        "x": 2,
        "y": 3
      }
    }', 'b', 'y');

/*
 从一个文本数组构建一个 JSON 对象,
 或者从两个分别作为键和值的数组构建一个 JSON 对象
 (一个文本数组)
 (一个包含了键的文本数组,一个包含了键的文本数组)
 */
SELECT JSON_OBJECT(ARRAY [1, 'a', TRUE, ROW (2, 'b', FALSE)]::TEXT[]);
-- 从一个二维数组构建一个 JSON 对象
SELECT JSON_OBJECT('{{1, 2}, {3, 4}, {a, 6}}');
-- 从两个一维数组构建一个 JSON 对象
SELECT JSON_OBJECT('{x, y}', '{1, 2}');

/*
 返回指定的 JSON 对象中的顶层键的集合
 */
SELECT
    JSON_OBJECT_KEYS('{
      "name": "Tom",
      "age": 20,
      "hobbies": [
        "sports",
        "cars"
      ]
    }');

/*
 将指定的最顶层的 JSON 对象转为一个自定义的 SQL 类型值
 (一个任何数据类型的值,一个任何数据类型的值)
 */
/*
 JSON 值转为 SQL 类型的值的规则
 1.JSON null 将被转为 SQL null。
 2.如果输出列的类型为 JSON 或者 JSONB,JSON 值将被精确的复制。
 3.如果输出列是组合类型,并且 JSON 值是对象,则通过递归应用这些规则,将对象的字段转换为输出行类型的列。
 4.如果输出列是数组类型并且 JSON 值是 JSON 数组,则通过递归应用这些规则,将 JSON 数组的元素转换为输出数组的元素。
 5.否则,如果 JSON 值是字符串,则将字符串的内容将被送到该列数据类型对应的输入转换函数。
 6.否则,JSON 值的普通文本表示将被送到该列数据类型的输入转换函数。
 */
-- 自定义SQL类型
CREATE TYPE ADDRESS AS
(
    country TEXT,
    city    TEXT
);
CREATE TYPE PERSON AS
(
    name    TEXT,
    age     INT,
    hobbies TEXT[],
    address ADDRESS
);
-- 转换
SELECT *
FROM
    JSON_POPULATE_RECORD(
            NULL::PERSON,
            '{
              "name": "Tom",
              "age": 20,
              "hobbies": [
                "sports",
                "cars"
              ],
              "address": {
                "country": "CN",
                "city": "BeiJing"
              }
            }'
        );

/*
 将指定的最顶层的 JSON 数组转为一个自定义的 SQL 类型值的集合
 (一个任何数据类型的值,要转的 JSON 数组)
 */
-- 自定义SQL类型
CREATE TYPE MY_TYPE AS
(
    x TEXT,
    y INT,
    z TEXT
);
-- 转换
SELECT *
FROM
    JSON_POPULATE_RECORDSET(
            NULL::MY_TYPE,
            '[
              {
                "x": "A",
                "y": 1
              },
              {
                "x": "B",
                "y": 2
              }
            ]'
        );
-- null时的默认值
SELECT *
FROM
    JSON_POPULATE_RECORDSET(
            ( 'x', 0, 'z' )::MY_TYPE,
            '[
              {
                "x": "A",
                "y": 1
              },
              {
                "x": "B",
                "y": 2
              }
            ]'
        );

/*
 递归地删除对象中的值为 null 的字段,非对象字段的 null 值不处理
 */
SELECT
    JSON_STRIP_NULLS('[
      1,
      null,
      3,
      {
        "x": 1,
        "y": null
      }
    ]');

/*
 将指定的最顶层的 JSON 对象扩展为一个在 AS 子句中定义的具有符合类型的行
 */
SELECT *
FROM
    JSON_TO_RECORD(
            '{
              "name": "Tom",
              "age": 20,
              "hobbies": [
                "sports",
                "cars"
              ]
            }'
        ) AS x( name TEXT, age INT, hobbies TEXT[] );

/*
 将指定的最顶层的 JSON 数组（元素为对象）扩展为一个在 AS 子句中定义的具有符合类型的行的集合
 */
SELECT *
FROM
    JSON_TO_RECORDSET(
            '[
              {
                "x": "A",
                "y": 1
              },
              {
                "x": "B",
                "y": 2
              }
            ]'
        ) AS x( x TEXT, y INT );

/*
 以字符串的形式返回指定的 JSON 值的类型
 */
SELECT
    JSON_TYPEOF('"abc"'),
    JSON_TYPEOF('123.45'),
    JSON_TYPEOF('true'),
    JSON_TYPEOF('[
      1,
      2,
      3
    ]'),
    JSON_TYPEOF('{
      "x": 1
    }'),
    JSON_TYPEOF('null');

/*
 将顶层 JSON 数组扩展为一个 JSONB 值的集合
 */
SELECT
    JSONB_ARRAY_ELEMENTS('[
      1,
      2,
      [
        3,
        4
      ]
    ]');

/*
 将顶层 JSONB 数组扩展为一个文本值的集合
 */
SELECT
    JSONB_ARRAY_ELEMENTS_TEXT('[
      1,
      2,
      [
        3,
        4
      ]
    ]');

/*
 返回一个指定的 JSONB 数组的长度（数组中顶层元素的数量）
 */
SELECT
    JSONB_ARRAY_LENGTH('[
      1,
      2,
      [
        3,
        4
      ]
    ]');

/*
 从可变的参数列表中创建一个可能是异构类型的 JSONB 数组并返回
 */
SELECT JSONB_BUILD_ARRAY(1, 'a', TRUE, ROW (2, 'b', FALSE));

/*
 从可变的参数列表（由交替的交替的键和值组成）中创建 JSONB 对象并返回
 */
SELECT JSONB_BUILD_OBJECT(1, 'a', TRUE, ROW (2, 'b', FALSE));

/*
 将一个指定的 JSONB 对象扩展为一个键值对（键是文本类型,值是 JSONB 类型）的集合
 */
SELECT
    JSONB_EACH('{
      "name": "Tom",
      "age": 20,
      "hobbies": [
        "sports",
        "cars"
      ]
    }');

/*
 将一个指定的 JSONB 对象顶层成员扩展为一个键值对（键和值都是文本类型）的集合
 */
SELECT
    JSONB_EACH_TEXT('{
      "name": "Tom",
      "age": 20,
      "hobbies": [
        "sports",
        "cars"
      ]
    }');

/*
 从一个指定的 JSONB 对象中根据指定的路径提取 JSONB 子对象
 */
SELECT
    JSONB_EXTRACT_PATH('[
      1,
      2,
      [
        3,
        4
      ]
    ]', '0');
-- 提取嵌套
SELECT
    JSONB_EXTRACT_PATH('{
      "a": 1,
      "b": {
        "x": 2,
        "y": 3
      }
    }', 'b', 'y');

/*
 从一个指定的 JSONB 对象中根据指定的路径提取 JSONB 子对象,并将结果作为文本返回
 (要从中提取 JSONB 值的 JSONB 值,可变的参数列表)
 */
SELECT
    JSONB_EXTRACT_PATH_TEXT('[
      1,
      2,
      [
        3,
        4
      ]
    ]', '0');
-- 提取嵌套
SELECT
    JSONB_EXTRACT_PATH_TEXT('{
      "a": 1,
      "b": {
        "x": 2,
        "y": 3
      }
    }', 'b', 'y');

/*
 将一个新值插入到一个给定的 JSONB 值中通过路径指定的位置
 (要插入新值的 JSONB 值,文本数组:指示了新值插入的位置,要插入的新值,是否插入到指定的位置之后)
 */
SELECT
    JSONB_INSERT('{
      "x": 1
    }', '{y}', '2');
SELECT
    JSONB_INSERT('{
      "x": 1,
      "y": [
        1,
        2
      ]
    }', '{y, 0}', '0', TRUE);

/*
 从一个文本数组构建一个 JSONB 对象,
 或者从两个分别作为键和值的数组构建一个 JSONB 对象
 (一个文本数组)
 (一个包含了键的文本数组,一个包含了键的文本数组)
 */
-- 一个一维数组构建一个 JSONB 对象
SELECT JSONB_OBJECT(ARRAY [1, 'a', TRUE, ROW (2, 'b', FALSE)]::TEXT[]);
-- 从一个二维数组构建一个 JSONB 对象
SELECT JSONB_OBJECT('{{1, 2}, {3, 4}, {a, 6}}');
-- 从两个一维数组构建一个 JSONB 对象
SELECT JSONB_OBJECT('{x, y}', '{1, 2}');

/*
 返回指定的 JSONB 对象中的顶层键的集合
 */
SELECT
    JSONB_OBJECT_KEYS('{
      "name": "Tom",
      "age": 20,
      "hobbies": [
        "sports",
        "cars"
      ]
    }');

/*
 在一个给定的 JSON 中检查一个指定的路径是否是否有返回值
 (要检查的 JSONB 值,要检查的 JSON 路径,路径中要用到的变量值)
 */
SELECT
    JSONB_PATH_EXISTS('[
      1,
      2,
      3
    ]', '$[*] ? (@ > 1)');

/*
 在一个给定的 JSON 中检查一个指定的路径是否是否有返回值
 提供了对带有时区的日期/时间的支持
 (要检查的 JSONB 值,要检查的 JSON 路径,路径中要用到的变量值)
 */
SELECT
    JSONB_PATH_EXISTS_TZ('[
      1,
      2,
      3
    ]', '$[*] ? (@ > 1)');
-- 时区
SELECT
    JSONB_PATH_EXISTS_TZ(
            '[
              "2015-08-01 12:00:00 +00"
            ]',
            '$[*] ? (@.datetime() < "2015-08-02".datetime())'
        );

/*
 返回一个 JSON 路径断言对一个指定的 JSON 值的执行结果
 (要检查的 JSONB 值,要执行的 JSON 路径断言,路径中要用到的变量值)
 */
SELECT
    JSONB_PATH_MATCH('[
      1,
      2,
      3
    ]', 'exists($[*] ? (@ > 1))');

/*
 返回一个 JSON 路径断言对一个指定的 JSON 值的执行结果
 提供了对带有时区的日期/时间的支持
 (要检查的 JSONB 值,要执行的 JSON 路径断言,路径中要用到的变量值)
 */
SELECT
    JSONB_PATH_MATCH_TZ('[
      1,
      2,
      3
    ]', 'exists($[*] ? (@ > 1))');
-- 时区
SELECT
    JSONB_PATH_MATCH_TZ(
            '[
              "2015-08-01 12:00:00 +00"
            ]',
            'exists($[*] ? (@.datetime() < "2015-08-02".datetime()))'
        );

/*
 在一个给定的 JSON 中根据指定的路径获取值,并将所有匹配的值作为一个集合返回
 (要检查的 JSONB 值,要检查的 JSON 路径,路径中要用到的变量值)
 */
SELECT
    JSONB_PATH_QUERY('[
      1,
      2,
      3
    ]', '$[*] ? (@ > 1)');

/*
 在一个给定的 JSON 中根据指定的路径获取值,并将所有匹配的值作为一个数组返回
 (要检查的 JSONB 值,要检查的 JSON 路径,路径中要用到的变量值)
 */
SELECT
    JSONB_PATH_QUERY_ARRAY('[
      1,
      2,
      3
    ]', '$[*] ? (@ > 1)');

/*
 在一个给定的 JSON 中根据指定的路径获取值,并将所有匹配的值作为一个数组返回
 提供了对带有时区的日期/时间的支持
 (要检查的 JSONB 值,要检查的 JSON 路径,路径中要用到的变量值)
 */
SELECT
    JSONB_PATH_QUERY_ARRAY_TZ('[
      1,
      2,
      3
    ]', '$[*] ? (@ > 1)');
-- 时区
SELECT
    JSONB_PATH_QUERY_ARRAY_TZ(
            '[
              "2015-08-01 12:00:00 +00"
            ]',
            '$[*] ? (@.datetime() < "2015-08-02".datetime())'
        );

/*
 在一个给定的 JSON 中根据指定的路径获取值,并返回第一个匹配的值
 (要检查的 JSONB 值,要检查的 JSON 路径,路径中要用到的变量值)
 */
SELECT
    JSONB_PATH_QUERY_FIRST('[
      1,
      2,
      3
    ]', '$[*] ? (@ > 1)');

/*
 在一个给定的 JSON 中根据指定的路径获取值,并返回第一个匹配的值
 提供了对带有时区的日期/时间的支持
 (要检查的 JSONB 值,要检查的 JSON 路径,路径中要用到的变量值)
 */
SELECT
    JSONB_PATH_QUERY_FIRST_TZ('[
      1,
      2,
      3
    ]', '$[*] ? (@ > 1)');
-- 时区
SELECT
    JSONB_PATH_QUERY_FIRST_TZ(
            '[
              "2015-08-01 12:00:00 +00"
            ]',
            '$[*] ? (@.datetime() < "2015-08-02".datetime())'
        );

/*
 在一个给定的 JSON 中根据指定的路径获取值,并将所有匹配的值作为一个集合返回
 提供了对带有时区的日期/时间的支持
 (要检查的 JSONB 值,要检查的 JSON 路径,路径中要用到的变量值)
 */
SELECT
    JSONB_PATH_QUERY_TZ('[
      1,
      2,
      3
    ]', '$[*] ? (@ > 1)');
-- 时区
SELECT
    JSONB_PATH_QUERY_TZ(
            '[
              "2015-08-01 12:00:00 +00",
              "2015-08-01 13:00:00 +00"
            ]',
            '$[*] ? (@.datetime() < "2015-08-02".datetime())'
        );

/*
 将指定的最顶层的 JSONB 对象转为一个自定义的 SQL 类型值
 (一个任何数据类型的值,要转的 JSONB 对象)
 转换规则见 JSON_POPULATE_RECORD
 */
SELECT *
FROM
    JSONB_POPULATE_RECORD(
            NULL::PERSON,
            '{
              "name": "Tom",
              "age": 20,
              "hobbies": [
                "sports",
                "cars"
              ],
              "address": {
                "country": "CN",
                "city": "BeiJing"
              }
            }'
        );

/*
 将指定的最顶层的 JSONB 数组转为一个自定义的 SQL 类型值的集合
 (一个任何数据类型的值,要转的 JSONB 数组)
 */
SELECT *
FROM
    JSONB_POPULATE_RECORDSET(
            NULL::MY_TYPE,
            '[
              {
                "x": "A",
                "y": 1
              },
              {
                "x": "B",
                "y": 2
              }
            ]'
        );
-- null时的默认值
SELECT *
FROM
    JSONB_POPULATE_RECORDSET(
            ( 'x', 0, 'z' )::MY_TYPE,
            '[
              {
                "x": "A",
                "y": 1
              },
              {
                "x": "B",
                "y": 2
              }
            ]'
        );

/*
 使用空格缩进和换行将给定的 JSONB 值转为格式化的、更易于阅读的文本
 */
SELECT
    JSONB_PRETTY('[
      1,
      2,
      3,
      [
        4,
        5
      ]
    ]');

/*
 替换指定的路径上的值或者在指定的路径上插入值
 (要插入新值的 JSONB 值,文本数组:新值插入的位置,要插入的新值,是否插入到指定的位置之后)
 */
SELECT
    JSONB_SET('[
      0,
      1,
      2
    ]', '{1}', '"x"');

/*
 替换指定的路径上的值或者在指定的路径上插入值
 此函数与 jsonb_set() 的不同之处是对 NULL 值的处理方式不同
 (要插入新值的 JSONB 值,文本数组:新值插入的位置,要插入的新值,是否插入到指定的位置之后,为 NULL 时的不同的处理方式)
 */
/*
 为 NULL 时的不同的处理方式
 'raise_exception': 当 new_value 为 NULL 时,给出一个错误。
 'use_json_null': 当 new_value 为 NULL 时,使用 JSON null 值。
 'delete_key': 当 new_value 为 NULL 时,删掉对应的键。
 'return_target': 当 new_value 为 NULL 时,返回原来的 JSON 值。
 */
SELECT
    JSONB_SET_LAX('[
      0,
      1,
      2
    ]', '{1}', '"x"');
-- NULL 处理
SELECT
    JSONB_SET_LAX('{
      "x": 1,
      "y": 2
    }', '{y}', NULL, TRUE, 'delete_key');

/*
 递归地删除对象中的值为 null 的字段,非对象字段的 null 值不处理
 */
SELECT
    JSONB_STRIP_NULLS('[
      1,
      null,
      3,
      {
        "x": 1,
        "y": null
      }
    ]');

/*
 将指定的最顶层的 JSONB 对象扩展为一个在 AS 子句中定义的具有符合类型的行
 */
SELECT *
FROM
    JSONB_TO_RECORD(
            '{
              "name": "Tom",
              "age": 20,
              "hobbies": [
                "sports",
                "cars"
              ]
            }'
        ) AS x( name TEXT, age INT, hobbies TEXT[] );

/*
 将指定的最顶层的 JSONB 数组（元素为对象）扩展为一个在 AS 子句中定义的具有符合类型的行的集合
 */
SELECT *
FROM
    JSONB_TO_RECORDSET(
            '[
              {
                "x": "A",
                "y": 1
              },
              {
                "x": "B",
                "y": 2
              }
            ]'
        ) AS x( x TEXT, y INT );

/*
 以字符串的形式返回指定的 JSONB 值的类型
 */
SELECT
    JSONB_TYPEOF('"abc"'),
    JSONB_TYPEOF('123.45'),
    JSONB_TYPEOF('true'),
    JSONB_TYPEOF('[
      1,
      2,
      3
    ]'),
    JSONB_TYPEOF('{
      "x": 1
    }'),
    JSONB_TYPEOF('null');

/*
 将一个 SQL 复合类型的值转为 JSON 对象并返回
 (要转为 JSON 对象的 SQL 复合类型的值)
 (要转为 JSON 对象的 SQL 复合类型的值,是否增加在顶层元素间换行符以美化 JSON)
 */
SELECT ROW_TO_JSON(ROW ('Tom', 20, 'He likes sports.'));
-- 美化
SELECT ROW_TO_JSON(ROW ('Tom', 20, 'He likes sports.'), TRUE);

/*
 将一个 SQL 值转为 JSON 值并返回
 */
SELECT
    TO_JSON(20),
    TO_JSON('x'::TEXT),
    TO_JSON(TRUE);

/*
 将一个 SQL 值转为 JSONB 值并返回
 */
SELECT
    TO_JSONB(20),
    TO_JSONB('x'::TEXT),
    TO_JSONB(TRUE);


/* 数组函数 */

/*
 将指定的元素追加到指定的数组的最后并返回修改后的数组
 (要追加元素的数组,要追加的元素)
 */
SELECT ARRAY_APPEND(ARRAY [0, 1, 2], 3);

/*
 将两个指定的数组连接为一个数组并返回连接后的数组
 (要连接的数组,要连接的数组)
 */
SELECT ARRAY_CAT(ARRAY [0, 1, 2], ARRAY [3, 4, 5]);

/*
 返回一个表示指定的数组的维度的文本
 */
SELECT ARRAY_DIMS(ARRAY [0, 1, 2]);

/*
 返回一个填充了指定的元素的数组
 (要填充的元素,返回一个填充了指定的元素的数组,开始填充数据的起始下标)
 */
SELECT ARRAY_FILL(1, ARRAY [5]);
-- 多维数组
SELECT ARRAY_FILL(1, ARRAY [3, 2]);

/*
 返回指定的数组中指定维度的长度
 (数组,数组的维度)
 */
SELECT ARRAY_LENGTH(ARRAY [0, 1, 2], 1);
-- 多维数组
SELECT ARRAY_LENGTH(ARRAY [[1,2], [3,4], [5,6]], 2);

/*
 返回指定的数组中指定维度的起始索引
 (数组,数组的维度)
 */
SELECT ARRAY_LOWER(ARRAY [0, 1, 2], 1);

SELECT ARRAY_LOWER('[3:7]={1,1,1,1,1}'::INTEGER[], 1);

/*
 返回指定的数组的维度数
 */
SELECT ARRAY_NDIMS(ARRAY [0,1,2]);
-- 多维数组
SELECT ARRAY_NDIMS(ARRAY [[1,2], [3,4], [5,6]]);

/*
 在一个指定的数组中查找指定的元素,并返回第一次出现的下标
 (要查找的数组,要查找的元素,开始查找的起始下标)
 */
SELECT ARRAY_POSITION(ARRAY [0, 1, 2], 1);
-- 指定起始下标
SELECT ARRAY_POSITION(ARRAY [0, 1, 2, 3, 5], 2, 2);

/*
 在一个指定的数组中查找指定的元素,
 并返回由所有出现的下标组成的数组
 (要查找的数组,要查找的元素)
 */
SELECT ARRAY_POSITIONS(ARRAY [0, 1, 2, 1], 1);

/*
 将指定的元素添加到指定的数组的开头并返回修改后的数组
 (要添加的元素,要添加元素的数组)
 */
SELECT ARRAY_PREPEND(0, ARRAY [1, 2, 3]);

/*
 从指定的数组中删除所有指定的元素并返回修改后的数组\
 (要删除元素的数组,要删除的元素)
 */
SELECT ARRAY_REMOVE(ARRAY [0, 1, 2, 1], 1);

/*
 在指定的数组中使用一个新元素替换指定的元素并返回修改后的数组
 (要替换元素的数组,要替换的元素,要替换的新元素)
 */
SELECT ARRAY_REPLACE(ARRAY [2, 1, 2, 1], 2, 1);

/*
 将数组中的所有元素使用分隔符连接起来并返回结果
 (要连接的数组,分隔符,NULL 值的替代文本)
 */
SELECT ARRAY_TO_STRING(ARRAY [1, 2, 3], ' - ');
-- NULL 值的替代文本
SELECT ARRAY_TO_STRING(ARRAY [1, 2, NULL, 3], ' - ', '!');

/*
 返回指定的数组中指定维度的最大索引
 (数组,数组的维度)
 */
SELECT ARRAY_UPPER(ARRAY [0, 1, 2], 1);
-- 多维数组
SELECT ARRAY_UPPER(ARRAY [[1,2], [3,4], [5,6]], 2);

/*
 返回数组中的所有的元素的总数
 */
SELECT CARDINALITY(ARRAY [1, 2, 3]);
-- 多维数组
SELECT CARDINALITY(ARRAY [[1,2], [3,4], [5,6]]);

/*
 从指定的数组的最后删除指定数量的元素并返回修改后的数组
 (要删除元素的数组,要删除的元素的数量)
 */
SELECT TRIM_ARRAY(ARRAY [0, 1, 2, 1], 1);

/*
 将指定的数组展开为一个行的集合
 */
SELECT UNNEST(ARRAY [1, 2, 3]);
-- 多维数组
SELECT UNNEST(ARRAY [[1,2], [3,4], [5,6]]);
-- 展开多个数组
SELECT *
FROM
    UNNEST(
            ARRAY [1, 2, 3, 4],
            ARRAY ['a', 'b', 'c'],
            ARRAY ['A', 'B', 'C', 'D']
        ) AS x( x, y, z );


/* 几何函数 */

/*
 计算指定形状的面积
 它适用于 box、path、circle
 */
-- 计算矩形的面积
SELECT AREA(BOX '((2,2),(0,0))');
-- 计算圆形的面积
SELECT AREA(CIRCLE '((0,0),2)');
-- 计算闭合路径的面积
SELECT AREA(PATH '((0,0),(1,1),(1,0),(0,0))');

/*
 返回两个指定矩形的边界矩形
 */
SELECT BOUND_BOX(BOX '(4,4),(3,3)', BOX '(1,1),(0,0)');

/*
 计算并返回一个指定的圆的内切的矩形
 */
SELECT BOX(CIRCLE '((0,0),2)');

/*
 将任意两个点转换为一个矩形并返回
 */
SELECT BOX(POINT '(1,1)', POINT '(2,2)');

/*
 将任意一个点转换为一个空的矩形
 */
SELECT BOX(POINT '(1,1)');

/*
 返回指定的多边形的边界矩形
 */
SELECT BOX(POLYGON '((0,0),(1,1),(2,0))');

/*
 计算指定形状的中心点,它适用于 box 和 circle
 */
-- 计算矩形的中心点
SELECT CENTER(BOX '(2,2),(0,0)');
-- 计算圆形的中心点
SELECT CENTER(CIRCLE '((0,0),2)');

/*
 通过圆心点和半径构造一个圆形
 */
-- 圆点 1,1 半径 1
SELECT CIRCLE(POINT '(1,1)', 1);

/*
 返回包围指定的矩形的最小的圆形
 */
SELECT CIRCLE(BOX '(1,1),(0,0)');

/*
 将指定的多边形转为圆形,
 圆的中心是多边形点位置的平均值,
 半径是多边形点到该中心的平均距离
 */
SELECT CIRCLE(POLYGON '((0,0),(1,3),(2,0))');

/*
 提取指定矩形的对角线并将其作为线段返回
 */
SELECT DIAGONAL(BOX '(1,1),(-1,-1)');

/*
 提取指定圆形的直径
 */
SELECT DIAMETER(CIRCLE '<(0,0),2>');

/*
 返回指定矩形的垂直高度
 */
SELECT HEIGHT(BOX '(1,1),(-1,-1)');

/*
 检查一个给定的路径是否是闭合的
 */
SELECT ISCLOSED(PATH '((0,0),(1,1),(2,0))');

SELECT ISCLOSED(PATH '[(0,0),(1,1),(2,0)]');

/*
 检查一个给定的路径是否是开放的
 */
SELECT ISOPEN(PATH '((0,0),(1,1),(2,0))');

SELECT ISOPEN(PATH '[(0,0),(1,1),(2,0)]');

/*
 计算指定的线段或路径的总长度并返回
 */
SELECT LENGTH(PATH '[(2,0),(0,0)]');
-- 计算闭合路径的长度
SELECT LENGTH(PATH '((2,0),(0,0))');

/*
 返回穿过两个指定的点的直线
 */
SELECT LINE(POINT '(4,4)', POINT '(0,0)');

/*
 提取指定矩形的对角线并作为线段返回
 */
SELECT LSEG(BOX '(1,1),(0,0)');

/*
 根据两个指定的点构造一个线段并返回
 */
SELECT LSEG(POINT '(4,4)', POINT '(0,0)');

/*
 计算指定的路径或多边形上的点的数量并返回
 */
SELECT NPOINTS(PATH '[(2,0),(0,0)]');

/*
 将指定的多边形转为具有相同点列表的闭合路径,
 该函数返回的闭合路径和参数中指定的多边形是同一个图形
 */
SELECT PATH(POLYGON '((0,1),(2,2),(5,3),(6,0))');

/*
 将指定的路径转换为闭合的路径
 */
SELECT PCLOSE(PATH '[(0,0),(1,1),(2,0)]');

/*
 根据参数指定的坐标构造一个点并返回
 (一个点的横坐标,一个点的纵坐标)
 */
SELECT POINT(0, 0);

/*
 计算指定的矩形的中心点并返回
 */
SELECT POINT(BOX '(1,1),(-1,-1)');

/*
 计算指定的圆形的中心点并返回
 */
SELECT POINT(CIRCLE '<(0,0),2>');

/*
 计算指定的线段的中心点并返回
 */
SELECT POINT(LSEG '[(1,1),(-1,-1)]');

/*
 计算指定的多边形的中心点并返回,
 它是多边形的多有的点位置的平均值
 */
SELECT POINT(POLYGON '((0,0),(1,1),(2,0))');

/*
 将一个矩形转成一个由四个点表示的多边形并返回
 */
SELECT POLYGON(BOX '(1,1),(-1,-1)');

/*
 将一个圆形转成一个由十二个点表示的多边形并返回
 */
SELECT POLYGON(CIRCLE '<(0,0),2>');

/*
 将一个圆形转成一个由指定数量的点表示的多边形并返回
 (指定的点的数量,圆形)
 */
SELECT POLYGON(3, CIRCLE '<(0,0),2>');

/*
 将一个闭合的路径转成一个具有相同点数的多边形并返回
 */
SELECT POLYGON(PATH '((1,1),(-1,1),(0,-1))');

/*
 将指定的路径转换为开放的路径
 */
SELECT POPEN(PATH '((0,0),(1,1),(2,0))');

/*
 提取指定圆形的半径
 */
SELECT RADIUS(CIRCLE '<(0,0),2>');

/*
 计算穿过两个指定的点的直线的斜率并返回
 */
SELECT SLOPE(POINT '(4,4)', POINT '(0,0)');

/*
 返回指定矩形的横向宽度
 */
SELECT WIDTH(BOX '(1,1),(-1,-1)');


/* 序列操作函数 */

/*
 将指定的序列前进到它的下一个值并返回那个值,
 此操作是一个原子操作
 */
-- 创建序列生成器
CREATE SEQUENCE seq START 100;

-- 前进到下一个值
SELECT NEXTVAL('seq');
DROP SEQUENCE seq;

/*
 返回当前会话中最近一次 NEXTVAL() 函数的调用结果,
 如果当前会话没有调用过 NEXTVAL() 函数,将会发生一个错误
 */
-- 创建序列生成器
CREATE SEQUENCE seq START 100;

-- 前进到下一个值
SELECT NEXTVAL('seq');

-- 查询当前会话中最近一次 NEXTVAL() 函数的调用结果
SELECT LASTVAL();
DROP SEQUENCE seq;

/*
 返回当前会话中指定序列的当前值,
 如果当前会话没有调用过 NEXTVAL() 函数,将会发生一个错误
 */
-- 创建序列生成器
CREATE SEQUENCE seq START 100;

-- 前进到下一个值
SELECT NEXTVAL('seq');

-- 查询当前会话中指定序列的当前值
SELECT CURRVAL('seq');
DROP SEQUENCE seq;

/*
 重置指定序列的当前值,并返回指定的值
 (要重置的序列,要重置的值,是否调用指定的当前值)
 */
-- 创建序列生成器
CREATE SEQUENCE seq START 100;

-- 前进到下一个值
SELECT NEXTVAL('seq');

-- 重置指定序列的当前值
SELECT SETVAL('seq', 1);

-- 查询当前会话中指定序列的当前值
SELECT CURRVAL('seq');
DROP SEQUENCE seq;

/* 枚举类型函数 */

-- 操作用枚举类型的值
CREATE TYPE WEEK AS ENUM ('Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday');

/*
 返回由参数指定的枚举类型的第一个枚举值
 */
SELECT ENUM_FIRST(NULL::WEEK);

/*
 返回由参数指定的枚举类型的最后一个枚举值
 */
SELECT ENUM_LAST(NULL::WEEK);

/*
 返回由参数指定的枚举类型的所有枚举值,或者指定的范围内的枚举值
 (一个枚举值)
 (枚举范围的起始值,枚举范围的结束值)
 */
-- 返回所有
SELECT ENUM_RANGE(NULL::WEEK);
-- 返回指定范围
SELECT ENUM_RANGE('Monday'::WEEK, 'Wednesday'::WEEK);

/* 返回集合的函数 */

/*
 根据指定的开始值、结束值和步长返回一个基于系列的集合
 (起始值,结束值,步长)
 */
-- 步长默认为1
SELECT GENERATE_SERIES(1, 5);
-- 指定步长
SELECT GENERATE_SERIES(1, 10, 1.5);

/*
 根据指定的数组和维度返回由数组下标组成的集合
 (任意类型的数组,数组的维度,是否逆序)
 */
SELECT GENERATE_SUBSCRIPTS('{3, 4, 5, 7}'::INT[], 1);
-- 逆序
SELECT GENERATE_SUBSCRIPTS('{3, 4, 5, 7}'::INT[], 1, TRUE);
-- 多维数组
SELECT GENERATE_SUBSCRIPTS('{{1,2}, {3,4}}'::INT[][], 2);


/* 范围函数 */

/*
 检查一个给定的范围值是否为空
 (范围值)
 (多值范围值)
 */
-- 空范围
SELECT ISEMPTY('(1, 1)'::INT4RANGE);
-- 非空范围
SELECT ISEMPTY('(1, 2]'::INT4RANGE);

/*
 检查一个给定范围的下限是否是包含在内的
 (范围值)
 (多值范围值)
 */
-- 非空范围
SELECT LOWER_INC('[1, 4]'::INT4RANGE);
-- 空范围
SELECT LOWER_INC('(1, 1)'::INT4RANGE);

/*
 检查一个给定范围的下限是否是无穷小
 (范围值)
 (多值范围值)
 */
SELECT LOWER_INF('(, 5)'::INT4RANGE);

/*
 返回一个给定范围或者多值范围的下限值
 (范围值)
 (多值范围值)
 */
SELECT LOWER('[1, 4]'::INT4RANGE);
SELECT LOWER('(1, 4]'::INT4RANGE);

/*
 返回一个包含了给定范围的多值范围
 */
SELECT MULTIRANGE('(1, 3)'::INT4RANGE);

/*
 计算包含了所有范围或者整个多值范围的最小范围
 (范围值)
 (多值范围值)
 */
SELECT RANGE_MERGE('(1, 3)'::INT4RANGE, '(4, 7)'::INT4RANGE);

/*
 将一个多值范围值展开为范围值的集合
 */
SELECT UNNEST('{(1, 3), [10, 20], [5,7]}'::INT4MULTIRANGE);

/*
 检查一个给定范围的上限是否是包含在内的
 (范围值)
 (多值范围值)
 */
SELECT UPPER_INC('[1, 4]'::INT4RANGE);

/*
 检查一个给定范围的上限是否是无穷大
 (范围值)
 (多值范围值)
 */
SELECT UPPER_INF('(1,)'::INT4RANGE);

/*
 返回一个给定范围或者多值范围的上限
 (范围值)
 (多值范围值)
 */
SELECT UPPER('[1, 3]'::INT4RANGE);
-- 空范围返回NULL
SELECT UPPER('(1, 1)'::INT4RANGE);


/* 窗口函数 */
-- 窗口函数操作表
-- 学生表
CREATE TABLE student_grade
(
    id      SERIAL PRIMARY KEY,
    -- 学生姓名
    name    VARCHAR(50) NOT NULL,
    -- 班级
    class   CHAR(1)     NOT NULL,
    -- 科目
    subject VARCHAR(20) NOT NULL,
    -- 成绩
    grade   INT         NOT NULL
);
INSERT
INTO
    student_grade
    (name, class, subject, grade)
VALUES
    ('Tim', 'A', 'Math', 9),
    ('Tom', 'A', 'Math', 7),
    ('Jim', 'A', 'Math', 8),
    ('Tim', 'A', 'English', 7),
    ('Tom', 'A', 'English', 8),
    ('Jim', 'A', 'English', 7),
    ('Lucy', 'B', 'Math', 8),
    ('Jody', 'B', 'Math', 6),
    ('Susy', 'B', 'Math', 9),
    ('Lucy', 'B', 'English', 6),
    ('Jody', 'B', 'English', 7),
    ('Susy', 'B', 'English', 8);
-- 查询所有
SELECT *
FROM
    student_grade;
-- 税收表
CREATE TABLE tax_revenue
(
    id      SERIAL PRIMARY KEY,
    -- 年份
    year    CHAR(4) NOT NULL,
    -- 季度
    quarter CHAR(1) NOT NULL,
    -- 税收
    revenue INT     NOT NULL
);
INSERT
INTO
    tax_revenue
    (year, quarter, revenue)
VALUES
    ('2020', '1', 3515),
    ('2020', '2', 3678),
    ('2020', '3', 4203),
    ('2020', '4', 3924),
    ('2021', '1', 3102),
    ('2021', '2', 3293),
    ('2021', '3', 3602),
    ('2021', '4', 2901);
-- 查询所有
SELECT *
FROM
    tax_revenue;


/*
 返回当前行的累积分布,
 即从第一行到与当前行值相同的最后一行的行数在分区内的总行数中的占比
 (参与分区的列的列表,参与排序的列的列表)
 返回值:(当前行之前的行数 + 与当前行值相同的行数) / 分区内的总行数
 */
-- 按科目分组计算每个学生的成绩在每组中的累积分布
SELECT *,
       CUME_DIST() OVER (
           PARTITION BY subject
           ORDER BY grade
           )
FROM
    student_grade;

/*
 返回当前行所在的分区内的排名,
 从 1 开始,但没有间隔
 相同的值具有相同的排名,但是下一个不同的值的排名按顺序增加 1
 (参与分区的列的列表,参与排序的列的列表)
 */
-- 按照科目查看每个学生的成绩排名
SELECT *,
       DENSE_RANK() OVER (
           PARTITION BY subject
           ORDER BY grade DESC
           )
FROM
    student_grade;
-- 按照班级查看每个学生的总成绩排名
SELECT
    t.*,
    DENSE_RANK() OVER (
        PARTITION BY class
        ORDER BY t.sum_grade DESC
        )
FROM
    (
        SELECT
            class,
            name,
            SUM(grade) sum_grade
        FROM
            student_grade
        GROUP BY
            class,
            name
    ) t;

/*
 从当前行关联的窗口框架的第一行中返回评估的值
 (一个列名或者表达式,参与分区的列的列表,参与排序的列的列表)
 */
-- 查看在每个科目中每个学生按照成绩从高到低的排序号和每个科目中的最好成绩
SELECT *,
       FIRST_VALUE(grade) OVER (
           PARTITION BY subject
           ORDER BY grade DESC
           )
FROM
    student_grade;

/*
 返回来自当前行所在的分区内当前行之前的指定行之内的行的值
 (一个列名或者表达式,相对于当前行的偏移的行数,一个列名或者表达式,参与排序的列的列表,指定的行数)
 */
-- 和上一季度的收益比较
SELECT *,
       LAG(revenue, 1) OVER (
           PARTITION BY year
           ORDER BY quarter
           ) next_quarter_revenue
FROM
    tax_revenue;

/*
 从当前行关联的窗口框架的最后一行中返回评估的值
 (一个列名或者表达式,参与分区的列的列表,参与排序的列的列表)
 */
-- 查看在每个科目中每个学生按照成绩从高到低的排序号和每个科目中的最差成绩
SELECT *,
       LAST_VALUE(grade) OVER (
           PARTITION BY subject
           ORDER BY grade DESC
           RANGE BETWEEN
               UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
           ) last_grade
FROM
    student_grade;

/*
 返回来自当前行所在的分区内当前行之后的指定行之内的值
 (一个列名或者表达式,相对于当前行的偏移的行数,一个列名或者表达式,参与排序的列的列表,指定的行数)
 */
-- 和下一季度的收益比较
SELECT *,
       LEAD(revenue, 1) OVER (
           PARTITION BY year
           ORDER BY quarter
           ) last_quarter_revenue
FROM
    tax_revenue;

/*
 从当前行关联的窗口框架的指定的一行中返回评估的值
 (一个列名或者表达式,指定行的编号,参与分区的列的列表,参与排序的列的列表)
 */
-- 查看在每个科目中每个学生按照成绩从高到低的排序号和每个科目中的最好成绩
SELECT *,
       NTH_VALUE(grade, 1) OVER (
           PARTITION BY subject
           ORDER BY grade DESC
           RANGE BETWEEN
               UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
           ) first_grade
FROM
    student_grade;

/*
 将当前行所在的分区内的所有行尽可能平均的分成指定数量的区间,
 并返回当前行所在的区间编号
 每个区间,PostgreSQL 称之为一个排名桶,
 根据指定排序为每个桶指设定排名
 (桶的数量,参与分区的列的列表,参与排序的列的列表)
 */
-- 将 1 到 9 分成 3 个桶
SELECT
    x,
    NTILE(3) OVER (
        ORDER BY x
        )
FROM
    GENERATE_SERIES(1, 9) x;
-- 将每年的收益按照升序分成 2 桶
SELECT *,
       NTILE(2) OVER (
           PARTITION BY year
           ORDER BY revenue
           )
FROM
    tax_revenue;

/*
 返回当前行所在的分区内的排名，从 1 开始,但有间隔
 相同的值具有相同的排名，但是下一个不同的值的排名采用下一个整数
 (参与分区的列的列表,参与排序的列的列表)
 */
SELECT *,
       RANK() OVER (
           PARTITION BY subject
           ORDER BY grade DESC
           )
FROM
    student_grade;

/*
 返回当前行所在的分区内的序号,从 1 开始
 (参与分区的列的列表,参与排序的列的列表)
 */
SELECT *,
       ROW_NUMBER() OVER (
           PARTITION BY subject
           ORDER BY grade DESC
           )
FROM
    student_grade;

/*
 返回当前行所在的分区内的相对排名,
 也就是 (rank() - 1) / (分区总行数 - 1)
 (参与分区的列的列表,参与排序的列的列表)
 */
SELECT *,
       PERCENT_RANK() OVER (
           PARTITION BY subject
           ORDER BY grade DESC
           )
FROM
    student_grade;


/* 会话信息函数 */

/*
 返回当前数据库的名称
 */
SELECT CURRENT_CATALOG;

/*
 返回当前数据库的名称
 */
SELECT CURRENT_DATABASE();

/*
 返回由当前客户端提交的正在执行的一个或多个语句
 */
SELECT CURRENT_QUERY();

/*
 返回当前模式的名称
 即当前查询架构
 */
SELECT CURRENT_SCHEMA();

/*
 按照优先级顺序返回当前有效搜索路径上的所有的架构名称
 (是否包含隐式的系统模式)
 */
SELECT CURRENT_SCHEMAS(FALSE);

/*
 返回当前用户(当前执行上下文的用户)的名称
 */
SELECT CURRENT_USER;

/*
 返回当前客户端的 IP 地址,
 如果当前连接通过 Unix 套接字连接,
 则返回 NULL
 */
SELECT INET_CLIENT_ADDR();

/*
 返回当前客户端的 IP 端口号
 */
SELECT INET_CLIENT_PORT();

/*
 返回接受当前连接的服务器的 IP 地址,
 如果当前连接通过 Unix 套接字连接,则返回 NULL
 */
SELECT INET_SERVER_ADDR();

/*
 返回接受当前连接的服务器的端口号
 */
SELECT INET_SERVER_PORT();

/*
 返回当前会话连接的服务端进程的进程 ID
 */
SELECT PG_BACKEND_PID();

/*
 返回阻止指定的会话获取锁的会话的进程 ID 列表
 */
SELECT PG_BLOCKING_PIDS(20448);

/*
 返回上次加载服务器配置文件的时间（带有时区信息）
 */
SELECT PG_CONF_LOAD_TIME();

/*
 返回当前使用的日志文件路径
 (日期的格式 stderr 和 csvlog)
 */
SELECT PG_CURRENT_LOGFILE();

/*
 检查指定的 OID 是否是另一个会话的临时模式（Schema）的 OID
 (待检查的 OID)
 */
-- 创建临时表
CREATE TEMPORARY TABLE test
(
    id INT
);

SELECT PG_MY_TEMP_SCHEMA();

DROP TABLE test;

/*
 检测 JIT 编译器扩展是否可用
 （只有在 JIT 编译器扩展可用且 jit 参数配置为 true 时，该函数才返回 true）
 */
SELECT PG_JIT_AVAILABLE();

/*
 返回当前会话正在侦听的异步通知通道的名称
 */
SELECT PG_LISTENING_CHANNELS();

/*
 返回当前会话的临时模式（Schema）的 OID
 */
SELECT PG_MY_TEMP_SCHEMA();

/*
 返回异步通知队列当前未处理的通知所占用的最大大小部分
 */
SELECT PG_NOTIFICATION_QUEUE_USAGE();

/*
 返回服务器启动的时间
 */
SELECT PG_POSTMASTER_START_TIME();

/*
 返回触发器的当前嵌套级别
 */
SELECT PG_TRIGGER_DEPTH();

/*
 返回当前当前会话的用户名
 */
SELECT SESSION_USER;

/*
 返回当前用户(当前执行上下文的用户)的名称
 */
SELECT USER;

/*
 返回当前 PostgreSQL 服务器的版本信息
 */
SELECT VERSION();


/* 聚合函数 */
-- 聚合函数操作表
CREATE TABLE student_information
(
    id       SERIAL PRIMARY KEY,
    -- 学生姓名
    name     VARCHAR(50) NOT NULL,
    -- 班级
    class    CHAR(1)     NOT NULL,
    -- 籍贯
    hometown VARCHAR(20) NOT NULL,
    -- 年龄
    age      INT         NOT NULL
);
INSERT
INTO
    student_information
    (name, class, hometown, age)
VALUES
    ('Tim', 'A', 'Beijing', 18),
    ('Tom', 'A', 'Shanghai', 19),
    ('Jim', 'A', 'Guangzhou', 20),
    ('Lucy', 'B', 'Beijing', 18),
    ('Jody', 'B', 'Shanghai', 19),
    ('Susy', 'B', 'Guangzhou', 20);

/*
 返回一个包含了一个分组中的所有的值的组成的数组
 */
-- 按照籍贯分组而来的学生姓名数组
SELECT
    hometown,
    ARRAY_AGG(name)
FROM
    student_information
GROUP BY
    hometown;

/*
 计算一个分组中的所有指定的值的平均值并返回
 */
-- 平均年龄
SELECT
    AVG(age)
FROM
    student_information;

/*
 对所有的非 null 输入值执行"按位与"运算
 */
SELECT
    BIT_AND(age)
FROM
    student_information;

/*
 对所有的非 null 输入值执行"按位或"运算
 */
SELECT
    BIT_OR(age)
FROM
    student_information;

/*
 对所有的非 null 输入值执行"按位异或"运算
 */
SELECT
    BIT_XOR(age)
FROM
    student_information;

/*
 返回一个分组中的所有指定的非 null 的布尔值"逻辑与"运算后的结果
 */
SELECT
    BOOL_AND(age > 18)
FROM
    student_information;

/*
 返回一个分组中的所有指定的非 null 的布尔值"逻辑或"运算后的结果
 */
SELECT
    BOOL_OR(age > 18)
FROM
    student_information;

/*
 统计一个分组中的所有指定的值的数量并返回
 */
-- 统计学生的数量
SELECT
    COUNT(*)
FROM
    student_information;

/*
 返回一个分组中的所有指定的非 null 的布尔值"逻辑与"运算后的结果
 */
SELECT
    EVERY(age > 18)
FROM
    student_information;

/*
 返回一个包含了一个分组中的所有的值的组成的 JSON 数组
 */
SELECT
    hometown,
    JSON_AGG(name)
FROM
    student_information
GROUP BY
    hometown;

/*
 返回一个由一组键值对组成的 JSON 对象
 */
SELECT
    JSON_BUILD_OBJECT('name', name, 'age', age)
FROM
    student_information;

/*
 返回一个包含了一个分组中的所有的值的组成的 JSON 数组
 */
SELECT
    hometown,
    JSON_OBJECT_AGG(name, age)
FROM
    student_information
GROUP BY
    hometown;

/*
 返回一个由一组键值对组成的 JSON 对象
 */
SELECT
    JSONB_OBJECT_AGG(hometown, age)
FROM
    student_information;

/*
 返回一个分组中的所有指定的值中的最大值
 */
SELECT
    MAX(age)
FROM
    student_information;

/*
 返回一个分组中的所有指定的值中的最小值
 */
SELECT
    MIN(age)
FROM
    student_information;

/*
 返回一个分组中所有非 NULL 输入范围值的合集
 */
SELECT
    t.name,
    RANGE_AGG(t.range_value) range_agg
FROM
    (
        SELECT
            'Tim'              name,
            '[3,7)'::INT4RANGE range_value
        UNION
        SELECT
            'Tim'               name,
            '[8,10]'::INT4RANGE range_value
        UNION
        SELECT
            'Tom'              name,
            '(3,7)'::INT4RANGE range_value
        UNION
        SELECT
            'Tom'              name,
            '[4,9)'::INT4RANGE range_value
    ) t
GROUP BY
    t.name;

/*
 返回一个分组中所有非 NULL 输入范围值的交集
 */
SELECT
    t.name,
    RANGE_INTERSECT_AGG(t.range_value) range_intersect_agg
FROM
    (
        SELECT
            'Tim'              name,
            '[3,7)'::INT4RANGE range_value
        UNION
        SELECT
            'Tim'               name,
            '[8,10]'::INT4RANGE range_value
        UNION
        SELECT
            'Tom'              name,
            '(3,7)'::INT4RANGE range_value
        UNION
        SELECT
            'Tom'              name,
            '[4,9)'::INT4RANGE range_value
    ) t
GROUP BY
    t.name;

/*
 计算所有非 null 输入值的样本标准差
 */
SELECT
    STDDEV(age)
FROM
    student_information;

/*
 计算所有非 null 输入值的总体标准差
 */
SELECT
    STDDEV_POP(age)
FROM
    student_information;

/*
 计算所有非 null 输入值的样本标准差
 */
SELECT
    STDDEV_SAMP(age)
FROM
    student_information;

/*
 返回一个包含了一个分组中的所有的指定的值组成的字符串
 */
SELECT
    hometown,
    STRING_AGG(name, ',')
FROM
    student_information
GROUP BY
    hometown;

/*
 计算一个分组中的所有指定的值的总和并返回
 */
SELECT
    SUM(age)
FROM
    student_information;

/*
 计算所有非 null 输入值的总体方差（总体标准差的平方）
 */
SELECT
    VAR_POP(age)
FROM
    student_information;

/*
 计算所有非 null 输入值的样本方差（样本标准差的平方）
 */
SELECT
    VAR_SAMP(age)
FROM
    student_information;

/*
 计算所有非 null 输入值的样本方差（样本标准差的平方）
 */
SELECT
    VARIANCE(age)
FROM
    student_information;

/*
 连接非空 XML 输入值
 */
SELECT
    XMLAGG(
            XMLELEMENT(
                    NAME "student",
                    XMLFOREST(
                            name,
                            age
                        )
                )
        )
FROM
    student_information;


/* 二进制字符串函数及位进制字符串函数 */

/*
 从二进制字符串中提取指定的位并返回
 */
SELECT GET_BIT('10101010'::BYTEA, 2);

/*
 从二进制字符串中提取指定的字节
 */
SELECT GET_BYTE('10101010'::BYTEA, 2);

/*
 将二进制字符串中的指定为更新
 */
SELECT SET_BIT('10101010'::BYTEA, 2, 1);

/*
 将二进制字符串中的指定字节更新
 */
SELECT SET_BYTE('10101010'::BYTEA, 2, 1);

/*
 计算二进制字符串的 SHA-224 哈希
 */
SELECT SHA224('abc'::BYTEA);

/*
 计算二进制字符串的 SHA-256 哈希
 */
SELECT SHA256('abc'::BYTEA);

/*
 计算二进制字符串的 SHA-384 哈希
 */
SELECT SHA384('abc'::BYTEA);

/*
 计算二进制字符串的 SHA-512 哈希
 */
SELECT SHA512('abc'::BYTEA);


/* 网络地址函数 */

/*
 创建文本形式的缩写显示格式
 */
SELECT ABBREV('10.1.0.0/16'::INET);
-- CIDR 缩写
SELECT ABBREV('10.1.0.0/16'::CIDR);

/*
 计算地址网络的广播地址
 */
SELECT BROADCAST('192.168.1.5/24'::INET);

/*
 返回地址的族
 */
SELECT FAMILY('::1'::INET);


/*
 以文本形式返回 IP 地址,忽略网络掩码
 */
SELECT HOST('192.168.1.5/24'::INET);

/*
 计算地址网络的主机掩码
 */
SELECT HOSTMASK('192.168.1.5/24'::INET);

/*
 计算包含两个给定网络的最小网络
 */
SELECT INET_MERGE('198.168.1.5/24'::INET, '192.168.2.5/24'::INET);

/*
 测试地址是否属于同一 IP 系列
 */
SELECT INET_SAME_FAMILY('192.168.1.5/24'::INET, '::1'::INET);

/*
 返回网络掩码长度（以位为单位）
 */
SELECT MASKLEN('192.168.1.5/24'::INET);

/*
 计算地址网络的网络掩码
 */
SELECT NETMASK('192.168.1.5/24'::INET);

/*
 返回地址的网络部分,将网络掩码右侧的任何内容清零
 */
SELECT NETWORK('192.168.1.5/24'::INET);

/*
 设置值的网络掩码长度
 地址部分不会更改
 */
SELECT SET_MASKLEN('192.168.1.5/24'::INET, 16);
SELECT SET_MASKLEN('192.168.1.0/24'::CIDR, 16);

/*
 以文本形式返回未缩写的 IP 地址和网络掩码长度
 */
SELECT TEXT('192.168.1.5'::INET);

/*
 MAC 地址
 将地址的最后 3 个字节设置为零
 */
SELECT TRUNC('12:23:23:23:23:23'::MACADDR);


/* 文本搜索函数 */

/*
 将文本字符串数组转换为原样用作词素
 */
SELECT ARRAY_TO_TSVECTOR('{a,b,c}'::TEXT[]);

/*
 返回当前默认文本搜索配置的 OID
 */
SELECT GET_CURRENT_TS_CONFIG();

/*
 返回词素加运算符数
 */
SELECT NUMNODE('(fat & rat) | cat'::TSQUERY);

/*
 将文本转换为根据指定或默认配置规范化单词
 */
SELECT PLAINTO_TSQUERY('english', 'The Fat Rats');

/*
 将文本转换为根据指定或默认配置规范化单词
 */
SELECT WEBSEARCH_TO_TSQUERY('english', '"fat rat" or cat dog');

/*
 生成的可索引部分的表示形式
 结果为空或仅指示不可索引的查询
 */
SELECT QUERYTREE('fat & ! rat'::TSQUERY);

/*
 为矢量的每个元素分配指定的权重
 */
SELECT SETWEIGHT('fat:2,4 cat:3 rat:5B'::TSVECTOR, 'A');

/*
 删除位置和权重
 */
SELECT STRIP('fat:2,4 cat:3 rat:5B'::TSVECTOR);

/*
 将文本转换为根据指定或默认配置规范化单词
 */
SELECT TO_TSVECTOR('english', 'The Fat Rats');
-- 将json转换为根据指定或默认配置规范化单词
SELECT
    TO_TSVECTOR('english', '{
      "aa": "The Fat Rats",
      "b": "dog"
    }'::JSON);

/*
 选择 JSON 文档中筛选器请求的每个项目,并将每个项目转换根据指定的或默认配置规范化单词
 */
SELECT
    JSON_TO_TSVECTOR('english', '{
      "a": "The Fat Rats",
      "b": 123
    }'::JSON, '["string", "numeric"]');

/*
 从向量中删除给定词素的任何匹配项
 */
SELECT TS_DELETE('fat:2,4 cat:3 rat:5A'::TSVECTOR, 'fat');

/*
 从向量中选择具有给定权重的元素
 */
SELECT TS_FILTER('fat:2,4 cat:3b,7c rat:5A'::TSVECTOR, '{a,b}');

/*
 以缩写形式显示文档中查询的匹配项,该匹配项必须是原始文本
 而不是文档中的单词在与查询匹配之前根据指定的或默认配置进行规范化
 */
SELECT TS_HEADLINE('The fat cat ate the rat.', 'cat');

/*
 计算显示向量与查询匹配程度的分数
 */
SELECT TS_RANK('fat:2,4 cat:3 rat:5A'::TSVECTOR, 'cat');

/*
 使用覆盖密度算法计算显示矢量与查询匹配程度的分数
 */
SELECT TS_RANK_CD('fat:2,4 cat:3 rat:5A'::TSVECTOR, 'cat');

/*
 将查询中出现的目标替换为替换
 */
SELECT TS_REWRITE('a & b'::TSQUERY, 'a'::TSQUERY, 'foo|bar'::TSQUERY);

/*
 构造一个短语查询
 该查询在连续的词素（与运算符相同）中搜索查询 1 和查询 2 的匹配项
 */
SELECT TSQUERY_PHRASE(TO_TSQUERY('fat'), TO_TSQUERY('cat'));

/*
 转换为词素数组
 */
SELECT TSVECTOR_TO_ARRAY('fat:2,4 cat:3 rat:5A'::TSVECTOR);

/* 文本搜索调试函数 */

/*
 根据指定的或默认的文本搜索配置从文档中提取和规范化令牌,
 并返回有关如何处理每个标记的信息
 */
SELECT TS_DEBUG('english', 'The Brightest supernovaes');

/*
 如果字典知道输入标记,则返回替换词素数组
 如果字典知道该标记但它是一个停用词,则返回一个空数组
 如果它不是已知单词,则返回 NULL
 */
SELECT TS_LEXIZE('english_stem', 'stars');

/*
 使用命名分析器从文档中提取令牌
 */
SELECT TS_PARSE('default', 'foo - bar');

/*
 返回一个表,该表描述命名分析程序可以识别的每种类型的标记
 */
SELECT TS_TOKEN_TYPE('default');
-- 指定 OID
SELECT TS_TOKEN_TYPE(3722);

/*
 执行 sqlquery（必须返回单个列）,
 并返回有关数据中包含的每个不同词法的统计信息
 */
-- 创建测试表
CREATE TABLE test_sqlquery
(
    id   INTEGER,
    info TSVECTOR
);
-- 插入测试数据
INSERT
INTO
    test_sqlquery
    (id, info)
VALUES
    (1, TO_TSVECTOR('The Fat Rats')),
    (2, TO_TSVECTOR('The Fat Rats')),
    (3, TO_TSVECTOR('The Fat Rats')),
    (4, TO_TSVECTOR('The Fat Rats')),
    (5, TO_TSVECTOR('The Fat Rats'));
-- 执行sqlquery
SELECT TS_STAT('SELECT info FROM test_sqlquery');


/* XML 函数 */

/*
 将字符串转换为 XML 值
 */
SELECT XMLPARSE(DOCUMENT '<?xml version="1.1"?><content>abc</content>');


/*
 创建一个 XML 值,其中包含以指定文本作为内容的 XML 注释
 */
SELECT XMLCOMMENT('This is a comment');

/*
 连接单个 XML 值的列表,以创建包含 XML 内容片段的单个值
 */
SELECT
    XMLCONCAT('
              <abc/>', '
              <bar>foo</bar>');

/*
 生成具有给定名称、属性和内容的 XML 元素
 */
SELECT XMLELEMENT(NAME "foo", XMLATTRIBUTES('bar' AS "baz"), 'abc');

/*
 使用给定的名称和内容生成元素的 XML 林（序列）
 */
SELECT XMLFOREST('abc' AS foo, 123 AS bar);

/*
 创建一个 XML 处理指令
 */
SELECT XMLPI(NAME "php", 'echo "Hello World"');

/*
 更改 XML 值的根节点的属性
 */
SELECT
    XMLROOT(XMLPARSE(DOCUMENT '<?xml version="1.1"?><content>abc</content>'),
            VERSION '1.0', STANDALONE YES);

/*
 检查字符串是否表示格式正确的 XML,并返回布尔结果
 */
SELECT XML_IS_WELL_FORMED('<?xml version="1.1"?><content>abc</content>');

/*
 检查字符串是否表示格式正确的 XML 文档,并返回布尔结果
 */
SELECT XML_IS_WELL_FORMED_DOCUMENT('<?xml version="1.1"?><content>abc</content>');

/*
 检查字符串是否表示格式正确的 XML 内容片段,并返回布尔结果
 */
SELECT XML_IS_WELL_FORMED_CONTENT('<?xml version="1.1"?><content>abc</content>');

/*
 根据 XML 值 xml 计算 XPath 1.0 表达式 xpath（以文本形式给出）
 */
SELECT
    XPATH('/my:a/text()', '
    <my:a xmlns:my="http://example.com">test</my:a>',
          ARRAY [ARRAY ['my', 'http://example.com']]);

/*
 指示查询是否满足
 */
SELECT
    XPATH_EXISTS('/my:a/text()', '
    <my:a xmlns:my="http://example.com">test</my:a>',
                 ARRAY [ARRAY ['my', 'http://example.com']]);

/*
 生成基于 XML 值的表、用于提取行的 XPath 筛选器和一组列定义
 */
-- 创建测试表
CREATE TABLE test_xmltable
AS
SELECT
    XML $$
    <ROWS>
        <ROW id="1">
            <COUNTRY_ID>AU</COUNTRY_ID>
            <COUNTRY_NAME>Australia</COUNTRY_NAME>
        </ROW>
        <ROW id="5">
            <COUNTRY_ID>JP</COUNTRY_ID>
            <COUNTRY_NAME>Japan</COUNTRY_NAME>
            <PREMIER_NAME>Shinzo Abe</PREMIER_NAME>
            <SIZE unit="sq_mi">145935</SIZE>
        </ROW>
        <ROW id="6">
            <COUNTRY_ID>SG</COUNTRY_ID>
            <COUNTRY_NAME>Singapore</COUNTRY_NAME>
            <SIZE unit="sq_km">697</SIZE>
        </ROW>
    </ROWS>
    $$ AS data;
-- 查询
SELECT *
FROM
    test_xmltable,
    XMLTABLE(
            '/ROWS/ROW'
            PASSING data
            COLUMNS
                id INT PATH '@id',
                country_id CHAR(2) PATH 'COUNTRY_ID',
                country_name VARCHAR(20) PATH 'COUNTRY_NAME',
                premier_name VARCHAR(20) PATH 'PREMIER_NAME',
                size INT PATH 'SIZE',
                size_unit CHAR(5) PATH 'SIZE/@unit'
        ) AS t;

/*
 将表映射到 XML 值
 (表名,是否包含空值,是否包含 XML 声明,XML 声明的版本号)
 */
SELECT TABLE_TO_XML('test_xmltable', TRUE, FALSE, '');

/*
 将查询映射到 XML 值
 (查询,是否包含空值,是否包含 XML 声明,XML 声明的版本号)
 */
SELECT QUERY_TO_XML('SELECT * FROM test_xmltable', TRUE, FALSE, '');
