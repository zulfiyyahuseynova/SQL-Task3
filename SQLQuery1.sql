CREATE DATABASE SQL_Task3

use SQL_Task3

CREATE TABLE Users
(
	Id int identity(1,1) PRIMARY KEY,
	[Login] nvarchar(100),
	[Password] varchar(50),
	Mail varchar(255) UNIQUE
)

CREATE TABLE Posts
(
	Id int identity(1,1) PRIMARY KEY,
	Content nvarchar(255),
	PostedTime date default getdate(),
	UserId int references Users(Id),
	LikeCount int,
	IsDeleted bit
)

CREATE TABLE Comments
(
	Id int identity(1,1) PRIMARY KEY,
	UserId int references Users(Id),
	PostId int references Posts(Id),
	LikeCount int,
	IsDeleted bit
)

CREATE TABLE Peoples
(
	Id int identity(1,1) PRIMARY KEY,
	Name nvarchar(50),
	Surname nvarchar(50),
	Age int
)