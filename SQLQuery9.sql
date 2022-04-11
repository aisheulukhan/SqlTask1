--CREATE DATABASE AP205
--USE AP205
CREATE TABLE Students(
	Id int identity(1,1) PRIMARY KEY, 
	Name nvarchar(50) NOT NULL,
	Surname nvarchar(60) DEFAULT 'XXX',
	Age int CHECK (Age >= 18),
	AvgPoint float
)

INSERT INTO Students(Name, Age, AvgPoint)
VALUES ('Ayse',20,60)
INSERT INTO Students(Name, Age, AvgPoint)
VALUES ('Aysu',19,90)
INSERT INTO Students(Name, Age, AvgPoint)
VALUES ('Zulfiyye',18,95)
INSERT INTO Students(Name, Age, AvgPoint)
VALUES ('Guler',24,87)
INSERT INTO Students(Name, Age, AvgPoint)
VALUES ('Sebine',21,74)
INSERT INTO Students(Name, Age, AvgPoint)
VALUES ('Ali',25,45)
INSERT INTO Students(Name, Age, AvgPoint)
VALUES ('Emine',25,50)
INSERT INTO Students(Name, Age, AvgPoint)
VALUES ('Sadiq',23,92)



--SELECT * FROM Students

--SELECT AvgPoint FROM Students WHERE AvgPoint > 51
--SELECT Name, AvgPoint FROM Students WHERE AvgPoint > 51 and AvgPoint < 90
--SELECT Name FROM Students WHERE Name like 'a%' and Name like '%i'
--SELECT Name FROM Students WHERE Name like '%i_'
