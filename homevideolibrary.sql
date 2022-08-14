CREATE DATABASE HomeVideoLibraryDb

USE HomeVideoLibraryDb

CREATE TABLE Actor
(
	ActorId INT NOT NULL PRIMARY KEY IDENTITY (1, 1),
	LastName NVARCHAR(50) NOT NULL,
	FirstName NVARCHAR(50) NOT NULL,
	MiddleName NVARCHAR(50) NULL,
	"Description" NVARCHAR(100) NULL
)


CREATE TABLE Director
(
	DirectorId INT NOT NULL PRIMARY KEY IDENTITY (1, 1),
	LastName NVARCHAR(50) NOT NULL,
	FirstName NVARCHAR(50) NOT NULL,
	MiddleName NVARCHAR(50) NULL,
	"Description" NVARCHAR(100) NULL
)

CREATE TABLE Film
(
	FilmId INT NOT NULL PRIMARY KEY IDENTITY (1, 1),
	DirectorId INT NOT NULL FOREIGN KEY REFERENCES Director(DirectorId),
	"Name" NVARCHAR(100) NOT NULL,
	Raiting NUMERIC(8,2) NOT NULL,
	DateRelease DATE NULL,
	"Description" NVARCHAR(1000) NULL,
)

CREATE TABLE FilmActor
(
	FilmId INT NOT NULL,
	ActorId INT NOT NULL,
	PRIMARY KEY (FilmId, ActorId),
	FOREIGN KEY (FilmId) REFERENCES Film (FilmId),
	FOREIGN KEY (ActorId) REFERENCES Actor (ActorId)
)



INSERT INTO Actor
(LastName,	FirstName, MiddleName, "Description")
VALUES
(N'�����', N'����', NULL, N'����������� �� ���������� �����'),
(N'�����', N'����', NULL, N'���������� �����, ����������� �������� ������ ������������, ��������� ����� ��� �����'),
(N'�����', N'����', NULL, N'����� ������, ��� � �����������, ������� ����� ������� �������'),
(N'���������', N'�����', N'�����������', N'���������� � ��������� ����� ������, ��� � �����������'),
(N'������������', N'�����', N'�������������', N'��������� ����� ������ � ���'),
(N'���������', N'��������', N'��������', N'��������� ������� ��� �� ������'),
(N'�������', N'���', NULL, N'������������� �����'),
(N'��������', N'��������', N'��������', N'�������� ������� ������ � ���')



INSERT INTO Director
(LastName, FirstName, MiddleName, "Description")
VALUES
(N'�����', N'�����', N'����������', N'�������, ���������, ��������'),
(N'�������', N'�����', NULL, N'������������� ����������, ���������, �������� � ��������'),
(N'�������', N'���', NULL, N'������������� ����������� � ���������� � ���������'),
(N'Գ����', N'����', NULL, N'������������� ����������, ������� �������� ����'),
(N'��������', N'�����', NULL, N'����� �������� ������� �������� ������ � ����� ���'),
(N'���������', N'������', N'����������', N'��������� �������, ��������, ������� ������� �������-������'),
(N'�����', N'³����', N'����������', N'��������� �������, ���������� ������ ��� '),
(N'�������', N'���', N'���������', N'���������� �������, ���������, ��������')





INSERT INTO Film
(DirectorId, "Name", Raiting, DateRelease, "Description")
VALUES
(1, N'������ ��������', 4.5, '1993-01-22', N'ͳ������� ��������� �� ���� ���������� ���� ����� س����� ����������� ����� �����, ��� ���������� ���� ���� ������� � ������ �� ��� ����� ������ ����.'),
(2, N'������ �����', 4.7, '1998-02-15', N'��䳿 ������ ������������� � 1941 ���� � ����, �� ��� ����� ������ ����. ���� ���볺�� ���� ������ ����� � ����� �������� �������� ���� � ����.'),
(5, N'ϳ����', 4.8, '2002-05-25', N'� ����� ������ ����� ���������� ��������, ������ � ��������� ��������� ������. �� ������� ����� ������ ���� ������� ��� �������� ������ � ��� ������� ��������� � ���������. '),
(3, N'��������� �������� �����', 4.5, '1995-11-18', N'����� ������ "��������� �������� ������": ������ ���� ̳���� ������ ����� ��������. ̳���� ������� ����� � ��������� �������, �� ���������� ������ � ������ �����, �������� �� ������ �������� ������� ������ � ��� ������'),
(4, N'������', 4.8, '2017-05-12', N'������� �����, � ����� ������� ��� �������� ������� �� ��� ������, �� ����� ������� ���� �� ������������� ���. ������� ��������� � ���, ��������, ������������, ������������� ��� � ���-��������.'),
(2, N'����� �� ����-������', 4, '1993-01-22', N'����� �������� ������ �� ����-������, �� ���� ���������� ����������� ��������-������ ����, ��������� �������� �������� ������ ���������� ����� �� ����� ������ ����'),
(8, N'12 ���� �������', 4.1, '2013-12-11', N'����� ������ ���������� �� �������� ����� � �������� ��� ������ �� ��� ������� ������, ��� ������� � ��� � ���-����� � ������ ������� �������������� �������'),
(1, N'������ �����', 5, '2019-08-22', N'������ �������� ������ ����� �� ������� ����� �� ��������� �����, ����� ������ ���� ����� ��������� ������������� ���� ���� ������������� ���������. ������ ���� �������� �� ��� �� �� ��������� ����� ���������� �������� �������� ����, �� ������������� � ���� ���. '),
(2, N'������ ������', 5, '2018-07-22', N'� 1238 ���� ������ ����� � ���� ������ ��������� �������� ������������ ����� ������ ������. ���� ����� � ����� ������� �������, � ��� �� ���� ������ ������������ ���� ����� �������, �� ������ ��� � �����.'),
(7, N'������� ��������.������ �������� 1939', 4.1, '2010-06-22', N'Գ��� �������� �������� ��������� ������� ������, ��� �� 1939 ���� ������� �� ������ ������, ��� � �������� ���� �������� "����� �������� � г���������" 17 ������� ������� ������� ���������� �����, �� ������������ ��� ���� ����� �� ��������� �������. '),
(2, N'�������, ��� ���� ����� ���', 4.5, '1993-06-25', N'� ����� ������ ������ � ����� 10-������ ϳ����, ���� ���� �� ���������� ������, �� ����� ���� ������, �������������� ��������. ������� ������� ������ ������� ������ ���������� ����� ������'),
(6, N'������� �����', 4.7, '2016-11-12', N'��� 4-������� ����� ��� ������ �� ����� ������������ ������ ���������� ����. � ����� ������ � ������ ����� ���������� ���, ��� ���� �������� ������������ � �������� ������, �� ����������, ��� � ���������� ���������� ������ �� ��.'),
(1, N'��� �����', 5, '1993-09-15', N'���� � ��������� ���� ������������� � ����� ���������� �����, �� ���������� ���� ������� �� ���� ������ ���������� �������� � �������� ��������. �������� � ������ � ���������, ���� ��������� ��� ��������, ����� ����� ���� �����.')




INSERT INTO FilmActor
(FilmId, ActorId)
VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 2),
(2, 8),
(2, 6),
(3, 1),
(3, 5),
(3, 6),
(3, 7),
(4, 1),
(4, 2),
(5, 1),
(5, 4),
(6, 7),
(6, 8),
(6, 5),
(7, 1),
(7, 2),
(7, 5),
(8, 8),
(8, 7),
(9, 8),
(9, 4),
(10, 7),
(10, 5),
(10, 8),
(11, 7),
(11, 4),
(11, 8),
(12, 6),
(12, 7),
(13, 7),
(13, 8)






SELECT * FROM Director
SELECT * FROM Actor
SELECT * FROM Film
SELECT * FROM FilmActor




CREATE FUNCTION FindFilmByName(@name nvarchar(100))
RETURNS TABLE
AS
RETURN
SELECT * FROM Film
WHERE "Name" LIKE '%'+@name+'%'



SELECT * FROM FindFilmByName(N'������ �����')
SELECT * FROM FindFilmByName(N'��')


CREATE FUNCTION FindFilmByDirector (@surname nvarchar(50))
RETURNS TABLE
AS
RETURN
SELECT f.Name, f.DateRelease, d.LastName AS Director, f.Description 
FROM Film f
JOIN Director d ON d.DirectorId=f.DirectorId
WHERE 
d.LastName LIKE '%'+@surname+'%'


SELECT * FROM FindFilmByDirector(N'�����')
SELECT * FROM FindFilmByDirector(N'Գ����')
SELECT * FROM FindFilmByDirector(N'�������')



CREATE FUNCTION FindFilmByActor(@surname nvarchar(50))
RETURNS TABLE
AS
RETURN
SELECT f.Name, f.DateRelease, a.LastName AS Actor, f.Description 
FROM Film f
JOIN FilmActor fa ON fa.FilmId=f.FilmId
JOIN Actor a ON a.ActorId=fa.ActorId 
WHERE 
a.LastName LIKE '%'+@surname+'%'



SELECT * FROM FindFilmByActor(N'�����')
SELECT * FROM FindFilmByActor(N'�����')
SELECT * FROM FindFilmByActor(N'������������')
SELECT * FROM FindFilmByActor(N'�������')





CREATE TYPE dbo.ActorList AS TABLE(
    "Name" NVARCHAR(50)
)


CREATE FUNCTION FindFilmByActors(@surnames dbo.ActorList READONLY)
RETURNS TABLE
AS
RETURN
SELECT f.Name, f.DateRelease, a.LastName AS Actor, f.Description 
FROM Film f
JOIN FilmActor fa ON fa.FilmId=f.FilmId
JOIN Actor a ON a.ActorId=fa.ActorId 
WHERE 
a.LastName IN (SELECT "Name" FROM @surnames)


DECLARE @ActorListType AS ActorList
INSERT INTO  @ActorListType
VALUES (N'�����'), (N'���������'), (N'��������')
SELECT * FROM FindFilmByActors(@ActorListType)






CREATE FUNCTION FilmographyActor(@surname NVARCHAR(50))
RETURNS TABLE
AS
RETURN
(SELECT f.Name, f.DateRelease, f.Raiting
FROM Film f
JOIN FilmActor fa ON fa.FilmId=f.FilmId
JOIN Actor a ON a.ActorId=fa.ActorId 
WHERE a.LastName LIKE '%' + @surname + '%')




SELECT * FROM FilmographyActor(N'���������')
ORDER BY  Raiting DESC


SELECT * FROM FilmographyActor(N'������������')
ORDER BY  Raiting DESC



CREATE FUNCTION AllFilmsByRaiting(@raiting DECIMAL(8,2))
RETURNS TABLE
AS
RETURN
SELECT * FROM Film
WHERE Raiting = @raiting



SELECT * FROM AllFilmsByRaiting(5)
SELECT * FROM AllFilmsByRaiting(4.5)


CREATE FUNCTION BestFilms()
RETURNS TABLE
AS RETURN
SELECT * FROM Film
WHERE Raiting = (SELECT MAX(Raiting) FROM Film)



SELECT * FROM BestFilms()


CREATE FUNCTION WorstFilms()
RETURNS TABLE
AS RETURN
SELECT * FROM Film
WHERE Raiting = (SELECT MIN(Raiting) FROM Film)



SELECT * FROM WorstFilms()


