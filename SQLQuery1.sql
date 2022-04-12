--CREATE DATABASE Company
USE Company

CREATE TABLE Isci(
	Id int identity(1,1) PRIMARY KEY,
	Adi nvarchar (50),
	Soyadi nvarchar (60),
	Ata_Adi nvarchar (50),
	VezifeId int references Vezife(Id),
	Maas float
	
)

INSERT INTO Isci 
	VALUES ('Inci','Kerimova','Taleh',1,940),
	 ('Senan','Agababayev','Murad',2,1780),
	 ('Eziz','Memmedli','Musa',3,2360),
	 ('Aysel','Hesenova','Rauf',4,760)
	 

--SELECT * FROM Isci

CREATE TABLE Vezife(
	Id int identity(1,1) PRIMARY KEY,
	Ad nvarchar	(50),
	
)


INSERT INTO Vezife
	VALUES('Satis Meneceri'),
	      ('Kassir'),
		  ('Satici'),
		  ('Anbardar')
	

CREATE TABLE Filial (
	Id int identity(1,1) PRIMARY KEY,
	Ad nvarchar	(50)
)
--SELECT * FROM Satis

INSERT INTO Filial
VALUES('Araz market, Zaqatala filiali')


CREATE TABLE Mehsul(
	Id int identity(1,1) PRIMARY KEY,
	Ad nvarchar (50),
	Alis_Qiymeti DECIMAL(3,2),
	Satis_Qiymeti DECIMAL(3,2)
)

INSERT INTO Mehsul
VALUES('Fairy',1.90,2.40),
      ('Pantene',3.10,6.40),
      ('Palmolive',0.95,2.10),
      ('Domestos',1.60,3.25)

      

CREATE TABLE Satis(
	Id int identity(1,1) PRIMARY KEY,
	MehsulId int references Mehsul(Id),
	IsciId int references Isci(Id),
	SatisTarixi DATE
)

INSERT INTO Satis
VALUES(1,1,'2022-04-12'),
	  (2,2,'2022-01-25'),
	  (3,3,'2021-06-01'),
	  (4,4,'2021-02-16')

