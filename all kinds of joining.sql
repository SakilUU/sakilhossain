CREATE DATABASE information ;
USE information;
CREATE TABLE student (NAME VARCHAR (30),id INT (30) NOT NULL AUTO_INCREMENT ,cgpa FLOAT (20),phone VARCHAR (20),
address VARCHAR (20),PRIMARY KEY(id));
INSERT INTO student (NAME ,cgpa, phone , address) VALUES ('Sakil',3.89,'01788948329','Kuril'),('Rakib',3.45,'01789382938','bashundhara'),
('Karim',3.5,'01310101010','Uttara'),('Hashem',4.00,'01410102039','Tongi');
SELECT * FROM student;

CREATE TABLE student1 (NAME VARCHAR (30),st_id INT (30) NOT NULL AUTO_INCREMENT ,
cgpa FLOAT (20),phone VARCHAR (20),
address VARCHAR (20),PRIMARY KEY(st_id),  FOREIGN KEY (st_id) REFERENCES student(id));

INSERT INTO student1 (NAME ,cgpa, phone , address) VALUES ('Bashir',3.90,'01318191719','Banani'),
('Sakib',3.45,'01518687897','Gulshan'),
('Hbibur',3.5,'01310101010','Uttara_6'),('Anshari',4.00,'0197771723','Tongi');
SELECT * FROM student1;

//NATURAL JOIN//

SELECT * FROM student AS tb1, student1 AS tb2 WHERE tb1.id = tb2.st_id;

INNER JOIN//
SELECT *  FROM  student INNER JOIN student1 ON student.id = student1.st_id;
 LEFT JOIN //
 SELECT * FROM student LEFT JOIN student1 ON student.id = student1.st_id ;
 
 RIGHT JOIN//
 SELECT * FROM student RIGHT JOIN student1 ON student.id = student1.st_id;
 
 CROSS JOIN//
  SELECT * FROM student CROSS JOIN student1 ;






