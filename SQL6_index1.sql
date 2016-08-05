CREATE TABLE t_user(id INT PRIMARY KEY AUTO_INCREMENT,
		    userName VARCHAR(20),
		    PASSWORD VARCHAR(20),
		    INDEX (userName)
		    );

CREATE TABLE t_user1(id INT PRIMARY KEY AUTO_INCREMENT,
		    userName VARCHAR(20),
		    PASSWORD VARCHAR(20),
		    UNIQUE INDEX index_userName(userName)
		    );

#¶àÁÐË÷Òý
CREATE TABLE t_user2(id INT PRIMARY KEY AUTO_INCREMENT,
		    userName VARCHAR(20),
		    PASSWORD VARCHAR(20),
		    INDEX index_userName_password(userName)
		    );

CREATE TABLE t_user3(id INT PRIMARY KEY AUTO_INCREMENT,
		    userName VARCHAR(20),
		    PASSWORD VARCHAR(20)
		    );
CREATE INDEX index_userName ON t_user3(userName);
DROP INDEX index_userName ON t_user3;
CREATE UNIQUE INDEX index_userName ON t_user3(userName);
CREATE INDEX index_userName_password ON t_user3(userName,PASSWORD);

CREATE TABLE t_user4(id INT PRIMARY KEY AUTO_INCREMENT,
		    userName VARCHAR(20),
		    PASSWORD VARCHAR(20)
		    );
ALTER TABLE t_user4 ADD INDEX index_userName(userName);
ALTER TABLE t_user4 ADD INDEX index_userName_password(userName,PASSWORD);
