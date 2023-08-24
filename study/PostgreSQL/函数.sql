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
SELECT BTRIM('xxyHello','xy');


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
SELECT CONCAT('Hello',' ','World');


/*
 使用分隔符接为一个字符串并返回结果
 */
SELECT CONCAT_WS('-','Hello','World');

/*
 根据指定的格式字符串和参数返回一个格式化的字符串
 */
SELECT FORMAT('Hello %s','World');
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
SELECT LEFT('hello',2);
-- 可以为负数,负数时从右侧除去指定数量并返回
SELECT LEFT('hello',-1);

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
SELECT LPAD('Hello',10);
-- 指定填充
SELECT LPAD('Hello',10,'World');

/*
 从一个字符的左侧删除一个包含了由参数指定的
 所有字符（默认为空格）的最长的字符串
 */
SELECT LTRIM('abc','a');

/*
 计算一个指定的字符串的 md5 哈希值
 并返回计算结果的十六进制形式
 */
SELECT MD5('666');

/*
 将给定的字符串转换为指定的 Unicode 规范化形式
 */
SELECT NORMALIZE(U&'\0061\0308bc',NFC);
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
SELECT PARSE_IDENT('"SomeSchema"."someTable"',TRUE);

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
SELECT REGEXP_MATCH('Abc abC aBc','ab.','i');

/*
 从一个字符串中返回指定的正则表达式的第一次匹配的结果
 如果使用了 g 标识,则返回所有的匹配结果
 最后可添加匹配模式参数
 */
SELECT REGEXP_MATCHES('abc abC Abc','ab.','g');

/*
 一个给定字符串中用给定的内容替换给定的正则表达式的第一个匹配的子串
 如果使用了 g 标识,则替换所有的匹配结果
 最后可添加匹配模式参数
 */
SELECT REGEXP_REPLACE('aBc abc','ab.','xxx');

/*
 将一个指定的字符串按照通过 POSIX 正则表达式指定的分隔符拆分成数组并返回
 最后可添加匹配模式参数
 */
SELECT REGEXP_SPLIT_TO_ARRAY('a-b-c','-');

/*
 将一个指定的字符串按照通过 POSIX 正则表达式指定的分隔符拆分成一个结果集并返回
 最后可添加匹配模式参数
 */
SELECT REGEXP_SPLIT_TO_TABLE('a-b-c','-');

/*
 将指定的字符串重复指定的次数并返回
 */
SELECT REPEAT('Hello',3);

/*
 将一个指定的字符串中出现的所有指定的子字符串替换为新的子字符串并返回结果
 */
SELECT REPLACE('Hello','H','h');

/*
 反转一个指定的字符串中的字符顺序并返回反转的字符串
 */
SELECT REVERSE('abc');

/*
 在指定字符串中提取最右侧的指定数量的字符并返回
 */
SELECT RIGHT('abc',1);
-- 可以为负数,负数时从右侧除去指定数量并返回
SELECT RIGHT('abc',-2);

/*
 在一个字符串的右侧填充指定的字符
 使其达到指定的长度
 超过长度则截断
 */
SELECT RPAD('Hello',10,'!');

/*
 从一个字符的右侧删除一个包含了由参数指定的所有字符（默认为空格）的最长的字符串
 */
SELECT RTRIM('abc','c');

/*
 将一个指定的字符串按照指定的分隔符拆分
 并返回指定的部分
 */
SELECT SPLIT_PART('a-b-c','-',2);

/*
 检查一个字符串是否以一个指定的前缀开头
 */
SELECT STARTS_WITH('abc','a');

/*
 将一个指定的字符串按照指定的分隔符拆分成数组并返回
 最后指定拆分后的数组中与它匹配的元素将被替换为 NULL
 */
SELECT STRING_TO_ARRAY('a-b-c-!','-','!');

/*
 将一个指定的字符串按照指定的分隔符拆分并将结果作为表返回
 最后指定拆分后的数组中与它匹配的元素将被替换为 NULL
 */
SELECT STRING_TO_TABLE('a-b-c-!','-','!');

/*
 返回一个指定的子字符串在一个字符串中的第一个起始索引
 */
SELECT STRPOS('abc','b');

/*
 从一个指定的字符串中根据指定的起始位置和长度提取子字符串并返回
 默认是提取到字符串的结尾
 */
SELECT SUBSTR('Hello',2,2);

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
SELECT TO_ASCII('Hello','LATIN1');

/*
 根据指定的格式将时间戳值、间隔值、数字值转为字符串并返回结果
 模板格式详看附4
 */
SELECT TO_CHAR(TIMESTAMP '2022-05-17 17:31:12.112','YYYY/MM/DD HH12:MI:SS');
SELECT TO_CHAR(12345678.9,'999G999G999G999G999.900');

/*
 将指定的数字转换为十六进制表示并返回
 */
SELECT TO_HEX(233);

/*
 根据给定的格式将指定的字符串转为一个数字
 模板格式详看附4
 */
SELECT TO_NUMBER('123,456,789.012-','999G999G999D999S');

/*
 根据指定的翻译关系来翻译一个指定的字符串
 翻译关系是两个字符串中的字符的一一对应关系
 */
SELECT TRANSLATE('hello judi','judi','tim');

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
SELECT ATAN2(1,2);

/*
 以度为单位返回指定的两个数除法运算的结果的反正切
 (被除数,除数)
 */
SELECT ATAN2D(1,2);

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
SELECT DIV(3,2);

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
SELECT GCD(3,2);

/*
 返回指定的两个数字的最小公倍数
 (被除数,除数)
 */
SELECT LCM(3,2);

/*
 返回由参数指定的数字的自然对数
 */
SELECT LN(3);

/*
 返回由参数指定的数字的指定的底的对数
 (底数,一个需要获取其对数的数字)
 */
SELECT LOG(10,9);

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
SELECT MOD(2,5);

/*
 返回圆周率 π 的近似值，精确到小数点后 15 位
 */
SELECT PI();

/*
 返回一个指定数字的指定的次方
 */
SELECT POWER(2,5);

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
SELECT ROUND(2.251,2);

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
SELECT TRUNC(0.21111,2);

/*
 返回一个指定的操作数位于一些指定的桶中的位置
 (操作数, 所有的桶的最小边界（包含）, 所有的桶的最大边界（不包含）, 桶的数量)
 (操作数, 所有的桶都通过此数组定义)
 */
SELECT WIDTH_BUCKET(6,2,8,3);
SELECT WIDTH_BUCKET(6,ARRAY [2, 4, 6, 8]::INT[]);

/* 日期时间函数 */

/*
 根据指定的生日返回指定日期或现在的年龄
 (要计算年龄的日期,生日)
 */
SELECT AGE(TIMESTAMP '2001-01-01');
SELECT AGE(TIMESTAMP '2010-02-02',TIMESTAMP '2001-01-01');

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
SELECT DATE_BIN('10 minutes',TIMESTAMP '2022-05-16 12:41:13',TIMESTAMP '2001-01-01');

/*
 指定的时间戳或者时间间隔中抽取指定的部分并返回
 单位格式见 附4
 */
-- 抽取世纪
SELECT DATE_PART('century',TIMESTAMP '2022-05-16 12:41:13.662522');
-- 抽取星期几
SELECT DATE_PART('isodow',TIMESTAMP '2022-05-16 12:41:13.662522');

/*
 将一个指定的时间戳或间隔值截断到指定的部分并返回
 单位格式见 附4
 */
-- 截断到小时
SELECT DATE_TRUNC('hour',TIMESTAMP '2022-05-16 12:41:13.662522');
-- 截断到年
SELECT DATE_TRUNC('year',TIMESTAMP '2022-05-16 12:41:13.662522');

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
 转换时间间隔的表示方法，将超过 30 天的天数转为月数
 */
-- 32 天
SELECT JUSTIFY_DAYS(INTERVAL '32 days');

/*
 转换时间间隔的表示方法，将超过 24 小时的小时数转为天数
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
SELECT MAKE_DATE(2022,5,16);
-- 公元前(BC 表示公元前)
SELECT MAKE_DATE(-2022,5,16);

/*
 从给定的年、月、日、时、分、秒字段创建一个间隔值
 (年,月,日,周,天,小时,分钟,秒)
 */
SELECT MAKE_INTERVAL(1,2,3,4,5,6,1.123);
-- 单独指定字段
SELECT MAKE_INTERVAL(years => 2);

/*
 从给定的时、分、秒字段创建一个时间
 (小时,分钟,秒)
 */
SELECT MAKE_TIME(20,55,25.1231);

/*
 从给定的年、月、日、时、分、秒字段创建一个时间戳值
 (年,月,日,时,分,秒)
 */
SELECT MAKE_TIMESTAMP(2022,5,16,20,55,25.1231);
-- 公元前(BC 表示公元前)
SELECT MAKE_TIMESTAMP(-2022,5,16,20,55,25.1231);

/*
 从给定的年、月、日、时、分、秒、时区字段创建一个带有时区信息的时间戳值
 (年,月,日,时,分,秒,时区)
 */
SELECT MAKE_TIMESTAMP(2022,5,16,20,55,25.1231);
-- 指定时区
SELECT MAKE_TIMESTAMPTZ(2022,5,15,20,55,25.517606,'Asia/Shanghai');

/*
 返回所属的事务开始时的系统日期和时间
 */
SELECT NOW();

SHOW TIMEZONE;

SET TIME ZONE 'UTC-8';