CREATE TABLE `t_grade` (
	`id` INT ,
	`stuName` VARCHAR (60),
	`course` VARCHAR (60),
	`score` INT 
); 
INSERT INTO `t_grade` (`id`, `stuName`, `course`, `score`) VALUES('1','张三','语文','91');
INSERT INTO `t_grade` (`id`, `stuName`, `course`, `score`) VALUES('2','张三','数学','90');
INSERT INTO `t_grade` (`id`, `stuName`, `course`, `score`) VALUES('3','张三','英语','87');
INSERT INTO `t_grade` (`id`, `stuName`, `course`, `score`) VALUES('4','李四','语文','79');
INSERT INTO `t_grade` (`id`, `stuName`, `course`, `score`) VALUES('5','李四','数学','95');
INSERT INTO `t_grade` (`id`, `stuName`, `course`, `score`) VALUES('6','李四','英语','80');
INSERT INTO `t_grade` (`id`, `stuName`, `course`, `score`) VALUES('7','王五','语文','77');
INSERT INTO `t_grade` (`id`, `stuName`, `course`, `score`) VALUES('8','王五','数学','81');
INSERT INTO `t_grade` (`id`, `stuName`, `course`, `score`) VALUES('9','王五','英语','89');

SELECT COUNT(*) AS total FROM t_grade;
SELECT stuName,COUNT(*) FROM t_grade GROUP BY stuName;
SELECT COUNT(course) AS course, COUNT(stuName) AS total FROM t_grade;

SELECT stuName, SUM(score) AS total FROM t_grade WHERE stuName = '张三';
SELECT stuName, SUM(score) AS total FROM t_grade GROUP BY stuName;

SELECT stuName, AVG(score) AS total FROM t_grade WHERE stuName = '张三';
SELECT stuName, AVG(score) AS total FROM t_grade GROUP BY stuName ORDER BY total ASC;

SELECT stuName,course,MAX(score) AS MAX FROM t_grade WHERE stuName = '张三';
SELECT *,MAX(score) AS MAX FROM t_grade GROUP BY stuName;