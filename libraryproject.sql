CREATE DATABASE library2

/*created all tables below*/

CREATE TABLE tbl_book (
	bookid int PRIMARY KEY,
	title varchar(50) NOT NULL,
	publishername varchar(50) NOT NULL
);

CREATE TABLE tbl_book_authors (
	bookid int NOT NULL,
	authorname varchar(50) NOT NULL
);

CREATE TABLE tbl_publisher (
	name varchar(50) PRIMARY KEY NOT NULL,
	address_publisher varchar(50) NOT NULL,
	phone varchar(50) NOT NULL
);

CREATE TABLE tbl_book_copies (
	bookid int NOT NULL,
	branchid int NOT NULL,
	no_of_copies int NULL
	CONSTRAINT pk_bookcopyid PRIMARY KEY (bookid, branchid)
);

CREATE TABLE tbl_book_loans (
	bookid int NOT NULL,
	branchid int NOT NULL,
	cardno int NOT NULL,
	dateout varchar(50) NOT NULL,
	duedate varchar(50) NOT NULL
	CONSTRAINT pk_bookloanid PRIMARY KEY (bookid, branchid, cardno)
);

CREATE TABLE tbl_library_branch (
	branchid int PRIMARY KEY,
	branchname varchar(50) NOT NULL,
	address_branch varchar(50) NOT NULL
);

CREATE TABLE tbl_borrower (
	cardno int PRIMARY KEY NOT NULL,
	name varchar(50) NOT NULL,
	address_borrower varchar(50) NOT NULL,
	phone varchar(50) NOT NULL
);

/*inserted all data into tables below*/

INSERT INTO tbl_book
(bookid, title, publishername)
VALUES 
(1, 'The Lost Tribe', 'Publishers R Us'),
(2, 'The Mist', 'BookHaus'),
(3, 'The Shining', 'Stuff On Paper'),
(4, 'To Kill A Mockingbird', 'PaperBack'),
(5, 'Pride and Prejudice', 'Company Co'),
(6, 'Moby Dick', 'Publishers R Us'),
(7, 'Dracula', 'BookHaus'),
(8, 'Little Women', 'Stuff On Paper'),
(9, 'Frankenstein', 'PaperBack'),
(10, 'The Great Gatsby', 'Company Co'),
(11, 'The Catcher in the Rye', 'Publishers R Us'),
(12, 'Animal Farm', 'BookHaus'),
(13, 'Lord of the Flies', 'Stuff On Paper'),
(14, 'It','PaperBack'),
(15, 'A Christmas Carol', 'Company Co'),
(16, 'Of Mice and Men', 'Publishers R Us'),
(17, 'Treasure Island', 'BookHaus'),
(18, 'The Hobbit', 'Stuff On Paper'),
(19, 'Les Miserables', 'PaperBack'),
(20, 'The Secret Garden', 'Company Co')
;

INSERT INTO tbl_book_authors
(bookid, authorname)
VALUES 
('1', 'Arthur B. Author'),
('2', 'Stephen King'),
('3', 'Stephen King'),
('4', 'Ernest A. Rollins'),
('5', 'Amanda Fry'),
('6', 'Jan Smith'),
('7', 'JR McCloud'),
('8', 'Sean Forest'),
('9', 'Jeremy Harrington'),
('10', 'Marge Kirkland'),
('11', 'Janice Van'),
('12', 'Jim James'),
('13', 'Elliot King'),
('14', 'Billy Writer'),
('15', 'William James'),
('16', 'Bird Crowson'),
('17', 'Mr. Man'),
('18', 'Mrs. Lady'),
('19', 'Fake Author'),
('20', 'I.P. Freely')
;

INSERT INTO tbl_library_branch
(branchid, branchname, address_branch)
VALUES 
(1, 'Sharpstown', '3311 Sharp Drive'),
(2, 'Central', '5333 Central Ave'),
(3, 'Downtown', '123 Main St'),
(4, 'Woodland', '9919 Woodland Way')
;

INSERT INTO tbl_publisher
(name, address_publisher, phone)
VALUES 
('BookHaus', '123 Street Rd, Portland, OR', '503-555-2222'),
('Publishers R Us', '5333 Road St, Portland, OR', '503-555-4444'),
('Stuff on Paper', '988 Paper Ln, Los Angeles, CA', '800-111-2222'),
('Paperback', '321 Lane St, New York, NY', '801-888-4455'),
('Comapny Co', '2233 Pants Ln, Los Angeles, CA', '900-789-6543')
;

INSERT INTO tbl_book_copies
(bookid, branchid, no_of_copies)
VALUES 
(1, 1, 4),
(1, 2, 2),
(1, 3, 3),
(2, 4, 4),
(2, 5, 7),
(2, 1, 8),
(3, 3, 4),
(3, 2, 2),
(4, 5, 7),
(4, 1, 2),
(4, 2, 6),
(5, 3, 5),
(5, 4, 2),
(5, 5, 3),
(6, 1, 5),
(6, 2, 3),
(6, 3, 4),
(7, 4, 3),
(7, 5, 2),
(7, 1, 6),
(8, 2, 4),
(8, 3, 3),
(8, 4, 3),
(9, 5, 2),
(9, 1, 4),
(9, 2, 3),
(10, 3, 4),
(10, 4, 2),
(10, 5, 5),
(11, 1, 3),
(11, 2, 5),
(12, 3, 3),
(12, 4, 2),
(13, 5, 2),
(13, 1, 2),
(14, 2, 4),
(14, 3, 6),
(15, 4, 3),
(15, 5, 6),
(16, 1, 7),
(16, 2, 4),
(17, 3, 3),
(17, 2, 7),
(18, 5, 2),
(18, 1, 3),
(18, 2, 2),
(19, 3, 2),
(19, 4, 4),
(20, 5, 4),
(20, 1, 3)
;

INSERT INTO tbl_borrower
(cardno, name, address_borrower, phone)
VALUES 
(26787894, 'Bob Hope', '321 Peacock Ln', '503-555-1234'),
(26787895, 'Jay Joe', '64 Over Way', '503-555-3455'),
(26787896, 'Jeremy Smith', '7485 Fake St', '503-555-8765'),
(26787897, 'Amy Flynn', '123 Park Pl', '503-555-0987'),
(26787898, 'Jan Ortiz', '6789 Malden St', '503-555-5432'),
(26787899, 'Sara Jane', '155 Street Rd', '503-555-7658'),
(26787900, 'Homer Simpson', '900 Drive Dr', '503-555-4555'),
(26787901, 'Diana Ross', '8009 Mail St', '503-555-0899'),
(26787902, 'Albert Brianson', '4632 Tea St', '503-555-4422'),
(26787903, 'Hillary Howards', '6754 Engine Rd', '503-555-4958')
;

INSERT INTO tbl_book_loans
(bookid, branchid, cardno, dateout, duedate)
VALUES 
(1, 3, 26787894, '1/16/2018', '1/20/2018'),
(2, 1, 26787895, '1/06/2018', '1/17/2018'),
(3, 4, 26787894, '1/04/2018', '1/13/2018'),
(4, 2, 26787901, '1/01/2018', '1/20/2018'),
(5, 2, 26787896, '1/06/2018', '1/27/2018'),
(6, 1, 26787894, '1/01/2018', '1/20/2018'),
(7, 3, 26787899, '1/01/2018', '1/20/2018'),
(8, 1, 26787896, '1/04/2018', '1/13/2018'),
(9, 2, 26787900, '1/01/2018', '1/10/2018'),
(10, 5, 26787894, '1/06/2018', '1/17/2018'),
(11, 4, 26787899, '1/09/2018', '1/20/2018'),
(12, 2, 26787901, '1/14/2018', '1/23/2018'),
(13, 1, 26787895, '1/06/2018', '1/17/2018'),
(14, 1, 26787894, '1/11/2018', '1/20/2018'),
(15, 4, 26787900, '1/06/2018', '1/17/2018'),
(16, 5, 26787896, '1/14/2018', '1/23/2018'),
(17, 1, 26787896, '1/11/2018', '1/20/2018'),
(18, 3, 26787897, '1/11/2018', '1/20/2018'),
(19, 4, 26787899, '1/14/2018', '1/23/2018'),
(20, 4, 26787896, '1/11/2018', '1/20/2018'),
(1, 3, 26787901, '1/11/2018', '1/20/2018'),
(2, 1, 26787894, '1/14/2018', '1/23/2018'),
(3, 5, 26787894, '1/16/2018', '1/27/2018'),
(4, 5, 26787897, '1/11/2018', '1/20/2018'),
(5, 4, 26787897, '1/14/2018', '1/23/2018'),
(6, 3, 26787900, '1/09/2018', '1/20/2018'),
(7, 3, 26787900, '1/09/2018', '1/20/2018'),
(8, 1, 26787901, '1/11/2018', '1/22/2018'),
(9, 1, 26787901, '1/11/2018', '1/21/2018'),
(10, 2, 26787898, '1/14/2018', '1/23/2018'),
(11, 2, 26787897, '1/11/2018', '1/21/2018'),
(12, 5, 26787897, '1/16/2018', '1/22/2018'),
(13, 5, 26787899, '1/11/2018', '1/21/2018'),
(14, 2, 26787897, '1/09/2018', '1/30/2018'),
(15, 2, 26787898, '1/11/2018', '1/20/2018'),
(16, 3, 26787900, '1/19/2018', '1/30/2018'),
(17, 4, 26787897, '1/16/2018', '1/27/2018'),
(18, 1, 26787898, '1/14/2018', '1/23/2018'),
(19, 1, 26787897, '1/11/2018', '1/20/2018'),
(20, 2, 26787899, '1/06/2018', '1/27/2018'),
(11, 2, 26787896, '1/09/2018', '1/29/2018'),
(12, 4, 26787895, '1/11/2018', '1/20/2018'),
(13, 4, 26787900, '1/09/2018', '1/30/2018'),
(14, 5, 26787899, '1/11/2018', '1/20/2018'),
(15, 4, 26787897, '1/14/2018', '1/21/2018'),
(16, 4, 26787896, '1/11/2018', '1/20/2018'),
(17, 2, 26787895, '1/09/2018', '1/30/2018'),
(18, 1, 26787895, '1/14/2018', '1/28/2018'),
(19, 1, 26787894, '1/06/2018', '1/27/2018'),
(20, 4, 26787894, '1/11/2018', '1/20/2018')
;

CREATE PROCEDURE dbo.procedure1
AS
SELECT B.title, BC.no_of_copies, LB.branchname
FROM tbl_book AS B INNER JOIN tbl_book_copies AS BC
ON B.bookid = BC.bookid
INNER JOIN tbl_library_branch AS LB
ON BC.branchid = LB.branchid
WHERE B.title = 'The Lost Tribe' AND LB.branchname = 'Sharpstown'
;

CREATE PROCEDURE dbo.procedure2
AS
SELECT LB.branchname, B.title, BC.no_of_copies
FROM tbl_library_branch AS LB INNER JOIN tbl_book_copies AS BC
ON LB.branchid = BC.branchid
INNER JOIN tbl_book AS B
ON BC.bookid = B.bookid
WHERE B.title = 'The Lost Tribe'
;

CREATE PROCEDURE dbo.procedure3
AS
SELECT * 
FROM tbl_borrower AS BO LEFT JOIN tbl_book_loans AS BL
ON BO.cardno = BL.cardno
WHERE BL.bookid IS NULL
;

CREATE PROCEDURE dbo.procedure4
AS
SELECT B.title, BO.name, BO.address_borrower
FROM tbl_book_loans AS BL 
INNER JOIN tbl_borrower AS BO
ON BL.cardno = BO.cardno
INNER JOIN tbl_book AS B
ON BL.bookid = B.bookid
WHERE BL.branchid = 1 AND BL.duedate = '1/20/2018'
;

CREATE PROCEDURE dbo.procedure5
AS
SELECT DISTINCT LB.branchname, COUNT(BL.branchid) AS qty
FROM tbl_library_branch AS LB 
INNER JOIN tbl_book_loans AS BL
ON LB.branchid = BL.branchid
GROUP BY LB.branchname, BL.branchid
;

CREATE PROCEDURE dbo.procedure6
AS
SELECT BO.name, BO.address_borrower, COUNT(BL.cardno) AS qty
FROM tbl_borrower AS BO 
INNER JOIN tbl_book_loans AS BL
ON BO.cardno = BL.cardno
GROUP BY BO.name, BO.address_borrower
HAVING COUNT(BL.cardno) > 5
;

CREATE PROCEDURE dbo.procedure7
AS
SELECT B.title, LB.branchname, BC.no_of_copies
FROM tbl_book AS B 
INNER JOIN tbl_book_authors AS BA
ON B.bookid = BA.bookid
INNER JOIN tbl_book_copies AS BC
ON B.bookid = BC.bookid
INNER JOIN tbl_library_branch AS LB
ON BC.branchid = LB.branchid
WHERE BA.authorname = 'Stephen King' AND LB.branchname = 'Central'
;