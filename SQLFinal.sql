USE FinalDrill

CREATE TABLE library_branch (
	BranchId INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	BranchName VARCHAR(50) NOT NULL,
	BranchAddress VARCHAR(50) NOT NULL
);

CREATE TABLE book_copies (
	BookId VARCHAR(50) NOT NULL,
	BranchId VARCHAR(50) NOT NULL,
	number_of_copies VARCHAR(50) NOT NULL
);
DROP TABLE book_loans
CREATE TABLE book_loans (
	BookId VARCHAR(50) NOT NULL,
	BranchId VARCHAR(50) NOT NULL,
	CardNo VARCHAR(50) NOT NULL,
	DateOut VARCHAR(50) NOT NULL,
	DateDue DATETIME NOT NULL
);

CREATE TABLE borrower (
	CardNo INT PRIMARY KEY NOT NULL IDENTITY (100,1),
	BorrowerName VARCHAR(50) NOT NULL,
	BorrowerAddress VARCHAR(50) NOT NULL,
	BorrowerPhone VARCHAR(50) NOT NULL
);

CREATE TABLE publisher (
	PublisherName INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	PublisherAddress VARCHAR(50) NOT NULL,
	PublisherPhone VARCHAR(50) NOT NULL
);

CREATE TABLE books (
	BookID INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	BookTitle VARCHAR(50) NOT NULL,
	PublisherName VARCHAR(50) NOT NULL
);

CREATE TABLE book_authors (
	BookId VARCHAR(50) NOT NULL,
	AuthorName VARCHAR(50) NOT NULL
);

INSERT INTO library_branch
	(BranchName, BranchAddress)
	VALUES
	('Sharpstown', '123 party st'),
	('Central', '234 downer ave'),
	('Renhood', '344 rainier ave s'),
	('Kirkland', '455 lake washington blvd')
;

TRUNCATE TABLE book_copies
INSERT INTO book_copies
	(BookId, BranchId, number_of_copies)
	VALUES
	(1, 1, '5'),
	(4, 1, '3'),
	(11, 1, '2'),
	(21, 1, '3'),
	(18, 1, '5'),
	(14, 1, '2'),
	(12, 1, '5'),
	(10, 1, '3'),
	(7, 1, '2'),
	(6, 1, '4'),
	(5, 1, '3'),
	(1, 2, '2'),
	(2, 2, '5'),
	(3, 2, '5'),
	(4, 2, '4'),
	(5, 2, '3'),
	(6, 2, '3'),
	(7, 2, '2'),
	(8, 2, '3'),
	(9, 2, '4'),
	(14, 2, '3'),
	(11, 3, '2'),
	(12, 3, '5'),
	(13, 3, '3'),
	(14, 3, '4'),
	(15, 3, '2'),
	(16, 3, '3'),
	(17, 3, '5'),
	(18, 3, '3'),
	(19, 3, '2'),
	(20, 3, '4'),
	(21, 4, '5'),
	(19, 4, '4'),
	(18, 4, '3'),
	(17, 4, '2'),
	(16, 4, '3'),
	(15, 4, '4'),
	(14, 4, '5'),
	(13, 4, '4'),
	(12, 4, '3'),
	(11, 4, '2')
;

INSERT INTO book_loans
	(BookId, BranchId, CardNo, DateOut, DateDue)
	VALUES
	(1, 1, 105, '7/31/18', '8/31/18'),
	(4, 1, 103, '8/01/18', '9/01/18'),
	(11, 1, 102, '7/28/18', '8/28/18'),
	(21, 1, 103, '7/31/18', '8/31/18'),
	(18, 1, 105, '8/01/18', '9/01/18'),
	(14, 1, 102, '7/28/18', '8/28/18'),
	(12, 1, 105, '7/31/18', '8/31/18'),
	(10, 1, 103, '8/08/18', '9/08/18'),
	(7, 1, 102, '8/01/18', '9/01/18'),
	(6, 1, 104, '7/28/18', '8/28/18'),
	(5, 1, 103, '7/31/18', '8/31/18'),
	(1, 2, 102, '8/02/18', '9/02/18'),
	(2, 2, 105, '8/01/18', '9/01/18'),
	(3, 2, 105, '7/28/18', '8/28/18'),
	(4, 2, 104, '7/31/18', '8/31/18'),
	(5, 2, 103, '8/01/18', '9/01/18'),
	(6, 2, 103, '7/28/18', '8/28/18'),
	(7, 2, 100, '7/31/18', '8/31/18'),
	(8, 2, 100, '9/06/18', '10/06/18'),
	(9, 2, 100, '8/01/18', '9/01/18'),
	(14, 2, 100, '7/28/18', '8/28/18'),
	(11, 3, 100, '7/31/18', '8/31/18'),
	(12, 3, 101, '7/24/18', '8/24/18'),
	(13, 3, 101, '9/05/18', '10/05/18'),
	(14, 3, 101, '8/01/18', '9/01/18'),
	(15, 3, 101, '7/28/18', '8/28/18'),
	(16, 3, 109, '7/31/18', '8/31/18'),
	(17, 3, 109, '9/06/18', '10/06/18'),
	(18, 3, 109, '8/01/18', '9/01/18'),
	(19, 3, 109, '7/28/18', '8/28/18'),
	(20, 3, 101, '7/31/18', '8/31/18'),
	(21, 4, 101, '9/06/18', '10/06/18'),
	(19, 4, 109, '8/25/18', '9/25/18'),
	(18, 4, 108, '8/01/18', '9/01/18'),
	(17, 4, 108, '7/28/18', '8/28/18'),
	(16, 4, 108, '7/31/18', '8/31/18'),
	(15, 4, 108, '9/06/18', '10/06/18'),
	(14, 4, 108, '8/01/18', '9/01/18'),
	(13, 4, 107, '7/28/18', '8/28/18'),
	(12, 4, 107, '7/31/18', '8/31/18'),
	(1, 1, 105, '9/06/18', '10/06/18'),
	(4, 1, 107, '8/22/18', '9/22/18'),
	(11, 1, 109, '7/24/18', '8/24/18'),
	(21, 1, 108, '9/07/18', '10/07/18'),
	(18, 1, 105, '9/06/18', '10/06/18'),
	(14, 1, 102, '8/06/18', '9/06/18'),
	(12, 1, 105, '7/28/18', '8/28/18'),
	(10, 1, 103, '7/31/18', '8/31/18'),
	(7, 1, 102, '9/01/18', '10/01/18'),
	(6, 1, 104, '8/29/18', '9/29/18'),
	(5, 1, 103, '8/06/18', '9/06/18'),
	(1, 2, 102, '7/28/18', '8/28/18'),
	(2, 2, 105, '7/31/18', '8/31/18'),
	(3, 2, 105, '9/02/18', '10/02.18'),
	(4, 2, 104, '9/03/18', '10/03/18'),
	(5, 2, 103, '8/29/18', '9/29/18'),
	(6, 2, 103, '7/24/18', '8/24/18'),
	(7, 2, 102, '8/27/18', '9/27/18'),
	(8, 2, 100, '8/29/18', '9/29/18'),
	(9, 2, 106, '8/01/18', '9/01/18'),
	(14, 2, 108, '7/28/18', '8/28/18'),
	(11, 3, 108, '7/31/18', '8/31/18'),
	(12, 3, 105, '8/29/18', '9/29/18'),
	(13, 3, 103, '7/24/18', '8/24/18'),
	(14, 3, 109, '8/23/18', '9/23/18'),
	(15, 3, 102, '8/22/18', '9/22/18'),
	(16, 3, 103, '8/01/18', '9/01/18'),
	(17, 3, 105, '7/28/18', '8/28/18'),
	(18, 3, 102, '7/31/18', '8/31/18'),
	(19, 3, 101, '8/14/18', '9/14/18'),
	(20, 3, 100, '7/13/18', '8/13/18'),
	(21, 4, 105, '7/24/18', '8/24/18'),
	(19, 4, 104, '7/17/18', '9/17/18'),
	(18, 4, 107, '7/20/18', '8/20/18'),
	(17, 4, 107, '8/06/18', '9/06/18'),
	(16, 4, 106, '7/28/18', '8/28/18'),
	(15, 4, 106, '7/31/18', '8/31/18'),
	(14, 4, 106, '7/24/18', '8/24/18'),
	(13, 4, 106, '8/01/18', '9/01/18'),
	(12, 4, 106, '7/28/18', '8/28/18'),
	(11, 4, 106, '7/31/18', '8/31/18')
;

TRUNCATE TABLE borrower
INSERT INTO borrower
	(BorrowerName, BorrowerAddress, BorrowerPhone)
	VALUES
	('Jim Carrey', '123 River rd', '123-456-7890'),
	('Matt Damon', '234 state st', '234-567-8900'),
	('Tom Cruise', '345 Trump way', '345-678-9012'),
	('Chris Farley', '456 high st', '456-789-0123'),
	('Mike Myers', '567 Grant ave', '567-890-1234'),
	('Tom Seaver', '678 Free way', '678-901-2345'),
	('Russell Wilson', '789 Easy St', '789-012-3456'),
	('Bobby Wagner', '890 Delaware rd', '890-123-4567'),
	('Earl Thomas', '901 Chapato st', '901-234-5678'),
	('Duane Brown', '120 Brown blvd', '012-345-6789'),
	('Burt Reynolds', '230 Alice ave', '532-789-0430')
;

INSERT INTO publisher
	(PublisherAddress, PublisherPhone)
	VALUES
	('45 Sunset blvd', '876-555-1234'),
	('9 Wapato St', '425-555-7698'),
	('567 Wishkaw rd', '206-779-8090'),
	('444 happy st', '234-556-7889'),
	('78 gold rd', '555-999-6666'),
	('888 dino drive', '765-444-1988'),
	('77 royal hwy', '000-456-9877'),
	('875 better hurry lane', '487-908-0098'),
	('8 pizzeria ave', '888-654-7765'),
	('666 mike myers lane', '666-555-7777'),
	('P Sherman Wallaby Way', '599-876-4533'),
	('12 Kungfu way', '456-233-6456'),
	('777 Fore ave', '444-786-5645')
;

INSERT INTO books
	(BookTitle, PublisherName)
	VALUES
	('The Lost Tribe', 1),
	('It', 2),
	('Shawshank Redemption', 2),
	('Harry Potter & The Order of Tacos', 3),
	('Where''s Waldo', 4),
	('Princess Bride', 1),
	('Murder She Wrote', 5),
	('Laugh Inc', 4),
	('Jurassic Park', 6),
	('Da Vinci Code', 7),
	('World War Z', 8),
	('The Godfather', 9),
	('Rockstar', 2),
	('Pet Semetary', 10),
	('Elf', 11),
	('Christmas Story', 3),
	('Where the Red Fern Grows', 6),
	('Art of War', 12),
	('Yoga Pants', 4),
	('Tiger Woods', 13),
	('Rush', 1)
;

INSERT INTO book_authors
	(BookId, AuthorName)
	VALUES
	('1', 'Kobe Peaks'),
	('2', 'Stephen King'),
	('3', 'Stephen King'),
	('4', 'JK Rowling'),
	('5', 'Mr T.'),
	('6', 'S Morgenstern'),
	('7', 'Angela Lansbury'),
	('8', 'Mike Sullivan'),
	('9', 'Michael Crichton'),
	('10', 'Dan Brown'),
	('11', 'Brad Pitt'),
	('12', 'Mario Puzo'),
	('13', 'Mark Wahlberg'),
	('14', 'Stephen King'),
	('15', 'Will Ferrell'),
	('16', 'Charles Dickens'),
	('17', 'Forest Whittaker'),
	('18', 'Sun Tsu'),
	('19', 'Oprah Winfrey'),
	('20', 'Tiger Woods'),
	('21', 'Lance Armstrong')
;

SELECT * FROM library_branch;

SELECT * FROM book_copies;

SELECT * FROM book_loans;

SELECT * FROM borrower;

SELECT * FROM publisher;

SELECT * FROM books;

SELECT * FROM book_authors;

/* Procedure 1 */
GO
CREATE PROC usp_BookCount
(@bookcount VARCHAR(50)
, @branch VARCHAR(50)
) 
AS
/*
EXEC usp_BookCount 'The Lost Tribe', 'Sharpstown'
*/
SELECT SUM(CAST (Number_Of_Copies AS INT))
	, atitle.BookTitle
	, sbranch.BranchName
	FROM [FinalDrill].[dbo].[books] atitle
	JOIN [FinalDrill].[dbo].[book_copies] bcopies
	ON bcopies.BookId = atitle.BookID
	JOIN [FinalDrill].[dbo].[library_branch] sbranch
	ON bcopies.BranchId = sbranch.BranchID
	WHERE @bookcount = atitle.BookTitle AND @branch = sbranch.BranchName
	GROUP BY atitle.BookTitle
	, sbranch.BranchName
;

/* Procedure 2 */
DROP PROC usp_BookSearch
GO
CREATE PROC usp_BookSearch
(@booksearch VARCHAR(50)
--, @branchname VARCHAR(50)
)
AS
/*
EXEC usp_BookSearch 'THe Lost Tribe'
*/
SELECT SUM(CAST (Number_Of_Copies AS INT))
	, atitle.BookTitle
	, sbranch.BranchName
	FROM [FinalDrill].[dbo].[books] atitle
	JOIN [FinalDrill].[dbo].[book_copies] bcopies
	ON bcopies.BookId = atitle.BookID
	JOIN [FinalDrill].[dbo].[library_branch] sbranch
	ON bcopies.BranchId = sbranch.BranchID
	WHERE @booksearch = atitle.BookTitle-- @branchname = sbranch.BranchName
	GROUP BY atitle.BookTitle, sbranch.BranchName
;

/* Procedure 3 */
DROP PROC usp_noborrowerinfo
GO
CREATE PROC usp_noborrowerinfo
AS
/*-- EXEC usp_noborrowerinfo  --*/
	SELECT BorrowerName FROM borrower b
	WHERE NOT EXISTS 
	( SELECT 1 FROM book_loans bl
	WHERE b.CardNo = bl.CardNo)

/* Procedure 4 */
DROP PROC usp_checkedout
GO
CREATE PROC usp_checkedout
(@branchname VARCHAR(50))
AS
/* EXEC usp_checkedout 'Sharpstown' */
DECLARE @today INT = 20180906
	SELECT  cbooktitle.BookTitle
	, bborrower.BorrowerName
	, bborrower.BorrowerAddress
	FROM [FinalDrill].[dbo].[book_loans] adate
	JOIN [FinalDrill].[dbo].[library_branch] bbranch
	ON bbranch.BranchId = adate.BranchId
	JOIN [FinalDrill].[dbo].[books] cbooktitle
	ON cbooktitle.BookID = adate.BookId
	JOIN [FinalDrill].[dbo].[borrower] bborrower
	ON bborrower.CardNo = adate.CardNo
	WHERE @today = CAST(CONVERT(CHAR(8), adate.DateDue, 112) AS INT) AND @branchname = bbranch.BranchName


/* PROCEDURE 5 */

DROP PROC usp_libbookcount
GO
CREATE PROC usp_libbookcount
AS
SELECT COUNT(BookId)
	, abranch.BranchName
	FROM [FinalDrill].[dbo].[library_branch] abranch
	JOIN [FinalDrill].[dbo].[book_loans] bbookid
	ON bbookid.BranchId = abranch.BranchId
	GROUP BY BranchName

EXEC usp_libbookcount

/* PROCEDURE 6 */

SELECT COUNT(*)
	, aborrower.BorrowerName
	, aborrower.BorrowerAddress
	FROM [FinalDrill].[dbo].[book_loans] bcardno
	JOIN [FinalDrill].[dbo].[borrower] aborrower
	ON aborrower.CardNo = bcardno.CardNo
	GROUP BY BorrowerName, BorrowerAddress
	HAVING COUNT(bcardno.CardNo) > 5

/* PROCEDURE 7 */
DROP PROC usp_authorname
GO
CREATE PROC usp_authorname 
( @authorname VARCHAR(50) = 'Stephen King'
, @branchname VARCHAR(50) = 'Central')
AS
SELECT btitle.booktitle
	, ccopies.number_of_copies
	, dbranch.BranchName
	FROM [FinalDrill].[dbo].[book_authors] aauthor
	JOIN [FinalDrill].[dbo].[books] btitle
	ON btitle.BookID = aauthor.BookId
	JOIN [FinalDrill].[dbo].[book_copies] ccopies
	ON ccopies.BookId = btitle.BookID
	JOIN [FinalDrill].[dbo].[library_branch] dbranch
	ON dbranch.BranchId = ccopies.BranchId
	WHERE @authorname = aauthor.AuthorName AND @branchname = dbranch.BranchName

EXEC usp_authorname