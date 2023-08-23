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
 以度为单位返回指定数值的反正弦
 */
SELECT ASINH(2);

/*
 以弧度为单位返回指定数值的反正切
 */
SELECT ATAN(0.2);



