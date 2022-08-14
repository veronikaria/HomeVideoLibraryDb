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
(N'Нисон', N'Лиам', NULL, N'ірландський та англійський актор'),
(N'Файнз', N'Рейф', NULL, N'англійський актор, представник впливової родини промисловців, посланець доброї волі юнісеф'),
(N'Іванір', N'Марк', NULL, N'актор театру, кіно і телебачення, володар призу «Срібний ведмідь»'),
(N'Маховиков', N'Сергій', N'Анатолійович', N'радянський і російський актор театру, кіно і озвучування'),
(N'Березовський', N'Євген', N'Олександрович', N'російський актор театру і кіно'),
(N'Зюркалова', N'Анастасія', N'Дмитрівна', N'українська акторка кіно та театру'),
(N'Робертс', N'Ерік', NULL, N'американський актор'),
(N'Меськова', N'Анастасія', N'Валеріївна', N'російська акторка театру і кіно')



INSERT INTO Director
(LastName, FirstName, MiddleName, "Description")
VALUES
(N'Буров', N'Сергій', N'Валерійович', N'режисер, сценарист, продюсер'),
(N'Спілберг', N'Стівен', NULL, N'американський кінорежисер, сценарист, продюсер і монтажер'),
(N'Маршалл', N'Роб', NULL, N'американський театральний і кінорежисер і хореограф'),
(N'Фінчер', N'Девід', NULL, N'американський кінорежисер, режисер музичних відео'),
(N'Скорсезе', N'Мартін', NULL, N'автор декількох найбільш памятних фільмів в історії кіно'),
(N'Агранович', N'Олексій', N'Михайлович', N'російський режисер, продюсер, художній керівник «Гоголь-центру»'),
(N'Авілов', N'Віктор', N'Васильович', N'російський режисер, заслужений артист Росії '),
(N'Лисенко', N'Юрій', N'Семенович', N'український режисер, сценарист, продюсер')





INSERT INTO Film
(DirectorId, "Name", Raiting, DateRelease, "Description")
VALUES
(1, N'Список Шиндлера', 4.5, '1993-01-22', N'Німецький фабрикант та член нацистської партії Оскар Шіндлер використовує працю євреїв, щоб побудувати свою нову фабрику у Польщі під час Другої світової війни.'),
(2, N'Імперія сонця', 4.7, '1998-02-15', N'Події фільму розгортаються у 1941 році у Китаї, під час Другої світової війни. Юний англієць Джим Грехем разом зі своїми багатими батьками живе в Китаї.'),
(5, N'Піаніст', 4.8, '2002-05-25', N'У центрі сюжету життя Владислава Шпільмана, одного з найкращих польських піаністів. До початку Другої світової війни Шпільман жив щасливим життям і був повністю занурений у мистецтво. '),
(3, N'Врятувати рядового Раяна', 4.5, '1995-11-18', N'Сюжет фільму "Врятувати рядового Райана": капітан Джон Міллер отримає важке завдання. Міллер повинен разом з маленьким загоном, що складається всього з восьми людей, вирушити на пошуки рядового Джеймса Райана в тил ворога'),
(4, N'Аврора', 4.8, '2017-05-12', N'художній фільм, у якому йдеться про маленьку дівчинку на імя Аврора, що стала жертвою аварії на Чорнобильській АЕС. Знімання проходили в Києві, Донецьку, Краматорську, Чорнобильській зоні і Лос-Анджелесі.'),
(2, N'Атака на Перл-Харбор', 4, '1993-01-22', N'Напад японської авіації на Перл-Харбор, де були розташовані американські військово-морські бази, послужило головною причиною вступу Сполучених Штатів до Другої світової війни'),
(8, N'12 років рабства', 4.1, '2013-12-11', N'Сюжет фільму заснований на реальних подіях і розповідає про людину на імя Соломон Нортап, яка проживає з сімєю в Нью-Йорку в першій половині девятнадцятого століття'),
(1, N'Чорний ворон', 5, '2019-08-22', N'Стрічка розповідає історію життя та кохання Івана на прізвисько Ворон, якому випала доля стати учасником повстанського руху часів Холодноярської республіки. Одвічна жага українців до волі не дає головному герою залишатись осторонь важливих подій, які розгортаються у його селі. '),
(2, N'Король Данило', 5, '2018-07-22', N'У 1238 році Данило разом зі своїм братом Васильком атакував прикордонний замок одного ордену. Вони взяли в полон їхнього магістра, і той від імені ордена запропонував союз проти загрози, що хвилею йде зі сходу.'),
(7, N'Золотий вересень.Хроніка Галичини 1939', 4.1, '2010-06-22', N'Фільм допомагає глядачам пригадати західну Україну, яка до 1939 року входила до складу Польщі, але з початком війни внаслідок "пакту Молотова — Ріббентропа" 17 вересня зазначає наступу радянських військ, які встановлюють там свою владу за допомогою репресій. '),
(2, N'Поводир, або Квіти мають очі', 4.5, '1993-06-25', N'В основі сюжету стрічки – життя 10-річного Пітера, який утікає від радянських агентів, що вбили його батька, американського інженера. Хлопцеві вдається вижити завдяки сліпому бандуристу Івану Кочерзі'),
(6, N'Століття Якова', 4.7, '2016-11-12', N'Цей 4-серійний фільм був знятий на основі однойменного роману Володимира Лиса. У центрі сюжету – столітнє життя волинянина Яків, яке було насичене карколомними і мінливими подіями, як особистими, так і бурхливими суспільними змінами ХХ ст.'),
(1, N'Син Саула', 5, '1993-09-15', N'Саул — угорський член зондеркоманди — групи єврейських вязнів, що перебували поза табором та були змушені допомагати нацистам у масовому винищенні. Працюючи в одному з крематоріїв, Саул знаходить тіло хлопчика, якого вважає своїм сином.')




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



SELECT * FROM FindFilmByName(N'Чорний ворон')
SELECT * FROM FindFilmByName(N'ра')


CREATE FUNCTION FindFilmByDirector (@surname nvarchar(50))
RETURNS TABLE
AS
RETURN
SELECT f.Name, f.DateRelease, d.LastName AS Director, f.Description 
FROM Film f
JOIN Director d ON d.DirectorId=f.DirectorId
WHERE 
d.LastName LIKE '%'+@surname+'%'


SELECT * FROM FindFilmByDirector(N'Буров')
SELECT * FROM FindFilmByDirector(N'Фінчер')
SELECT * FROM FindFilmByDirector(N'Спілберг')



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



SELECT * FROM FindFilmByActor(N'Нисон')
SELECT * FROM FindFilmByActor(N'Іванір')
SELECT * FROM FindFilmByActor(N'Березовський')
SELECT * FROM FindFilmByActor(N'Робертс')





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
VALUES (N'Нисон'), (N'Маховиков'), (N'Меськова')
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




SELECT * FROM FilmographyActor(N'Маховиков')
ORDER BY  Raiting DESC


SELECT * FROM FilmographyActor(N'Березовський')
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


