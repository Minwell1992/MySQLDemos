CREATE VIEW v1 AS SELECT * FROM t_book;

CREATE VIEW v2 AS SELECT bookName,price FROM t_book;

CREATE VIEW v3(b,p) AS SELECT bookName,price FROM t_book;


SELECT * FROM v1;

SELECT * FROM v2;

SELECT * FROM v3;

CREATE VIEW v4 AS SELECT bookName,bookTypeName FROM t_book,t_booktype WHERE t_book.bookTypeId=t_booktype.id;

CREATE VIEW v5 AS SELECT tb.bookName,tby.bookTypeName FROM t_book tb,t_booktype tby WHERE tb.bookTypeId=tby.id;

SELECT * FROM v4;

SELECT * FROM v5;

DESC v5;

SHOW TABLE STATUS LIKE 'v5';

SHOW TABLE STATUS LIKE 't_book';

SHOW CREATE VIEW v5;




SELECT  * FROM v1;

CREATE OR REPLACE VIEW v1(bookName,price) AS SELECT bookName,price FROM t_book;

ALTER VIEW v1 AS SELECT * FROM t_book;

INSERT INTO v1 VALUES(NULL,'java good',120,'feng',1);

UPDATE v1 SET bookName='java very good',price=200 WHERE id=5;

DELETE FROM v1 WHERE id=5;


DROP VIEW IF EXISTS v4;