

 CREATE TABLE SalesPeople(
Snum integer Primary key,
Sname TEXT(15)  NOT NULL,
City TEXT,
Comm integer    
 );
 INSERT INTO SalesPeople values(1001,'Peel','London',12),
 (1002,'Serres','Sanjose',13),
 (1004,'Motika','London',11),
 (1007,'Rifkin','Barcelona',15),
 (1003,'Axelrod','Newyork',10);

 CREATE TABLE Customers(
Cnum integer Primary key,
Cname Text,
City TEXT(15)  NOT NULL,
Snum integer,
FOREIGN KEY(Snum) REFERENCES  SalesPeople(Snum) 
 );
 
  INSERT INTO Customers values(2001,'Hoffman','London',1001),
  (2002,'Giovanni','Rome',1003),
  (2003,'Liu','Sanjose',1002),
  (2004,'Grass','Berlin',1002),
  (2006,'Clemens','London',1001),
  (2008,'Cisneros','Sanjose',1007),
  (2007,'Pereira','Rome',1004);

 CREATE TABLE Orders(
Onum integer Primary key,
Amt float,
Odate date,
Cnum integer,
Snum integer,
FOREIGN KEY(Cnum) REFERENCES  Customers(Cnum),
FOREIGN KEY(Snum) REFERENCES  SalesPeople(Snum)
);

INSERT INTO Orders values(3001,18.69,'1990-10-3',2002,1007),
(3003,767.19, '1990-10-3',2001,1001),
(3002 ,1900.10,'1990-10-3',2007, 1004),
(3005 ,5160.45,'1990-10-3',2003,1002),
(3006,1098.16,'1990-10-3',2008,1007),
(3009,1713.23,'1990-10-4',2002,1003),
(3007,75.7,'1990-10-4',2004,1002),
(3008,4273.00,'1990-10-5',2006,1001),
(3010,1309.95,'1990-10-6',2004,1002),
(3011,9891.88,'1990-10-6',2006,1001);

select count(*) from Salespeople where Sname like 'a%' or Sname like 'A%';

select s.Sname,o.Onum from Salespeople s join Orders o on s.Snum=o.Snum where o.Amt>2000;

select count(*) from Salespeople where City='Newyork';

select count(*) from Salespeople where City IN ('London','Paris');

select count(o.Onum),o.Odate from salespeople s join Orders o on s.Snum=o.Snum group by s.Sname;
















