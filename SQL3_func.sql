CREATE TABLE `t_grade` (
	`id` INT ,
	`stuName` VARCHAR (60),
	`course` VARCHAR (60),
	`score` INT 
); 
INSERT INTO `t_grade` (`id`, `stuName`, `course`, `score`) VALUES('1','����','����','91');
INSERT INTO `t_grade` (`id`, `stuName`, `course`, `score`) VALUES('2','����','��ѧ','90');
INSERT INTO `t_grade` (`id`, `stuName`, `course`, `score`) VALUES('3','����','Ӣ��','87');
INSERT INTO `t_grade` (`id`, `stuName`, `course`, `score`) VALUES('4','����','����','79');
INSERT INTO `t_grade` (`id`, `stuName`, `course`, `score`) VALUES('5','����','��ѧ','95');
INSERT INTO `t_grade` (`id`, `stuName`, `course`, `score`) VALUES('6','����','Ӣ��','80');
INSERT INTO `t_grade` (`id`, `stuName`, `course`, `score`) VALUES('7','����','����','77');
INSERT INTO `t_grade` (`id`, `stuName`, `course`, `score`) VALUES('8','����','��ѧ','81');
INSERT INTO `t_grade` (`id`, `stuName`, `course`, `score`) VALUES('9','����','Ӣ��','89');

SELECT COUNT(*) AS total FROM t_grade;
SELECT stuName,COUNT(*) FROM t_grade GROUP BY stuName;
SELECT COUNT(course) AS course, COUNT(stuName) AS total FROM t_grade;

SELECT stuName, SUM(score) AS total FROM t_grade WHERE stuName = '����';
SELECT stuName, SUM(score) AS total FROM t_grade GROUP BY stuName;

SELECT stuName, AVG(score) AS total FROM t_grade WHERE stuName = '����';
SELECT stuName, AVG(score) AS total FROM t_grade GROUP BY stuName ORDER BY total ASC;

SELECT stuName,course,MAX(score) AS MAX FROM t_grade WHERE stuName = '����';
SELECT *,MAX(score) AS MAX FROM t_grade GROUP BY stuName;