-----QUERY 1----
SELECT COUNT(*) FROM Comments
JOIN Posts
ON
Comments.PostId=Posts.Id
GROUP BY Posts.Id

---QUERY 2----
CREATE VIEW GetFullInfo
AS
SELECT Peoples.Name, Peoples.Surname, Peoples.Age, 
Users.Login, Users.Mail, Users.Password, 
Comments.PostId, Comments.LikeCount as 'CommentLikeCount', Comments.IsDeleted as 'CommentIsDeleted', 
Posts.Content, Posts.LikeCount as 'PostLikeCount', Posts.PostedTime, Posts.IsDeleted as 'PostIsDeleted'
FROM Comments
JOIN Peoples 
ON Comments.UserId=Peoples.Id
JOIN Users
ON Comments.UserId=Users.Id
JOIN Posts
ON Comments.PostId=Posts.Id

SELECT * FROM GetFullInfo

----QUERY 3----
ALTER TRIGGER DeletedPost
ON Posts
INSTEAD OF DELETE
AS
DECLARE @Id int 
SELECT @Id=Id FROM deleted
UPDATE Posts SET IsDeleted = 1 Where Id=@Id

Delete Posts where Id=4


ALTER TRIGGER DeletedComment
ON Comments
INSTEAD OF DELETE
AS
DECLARE @Id int 
SELECT @Id=Id FROM deleted
UPDATE Comments SET IsDeleted = 1 Where Id=@Id

Delete Comments where Id=4