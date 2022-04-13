INSERT INTO Users
VALUES('iamzulfiyya','z12345','iamzulfiyya@gmail.com'),
('aysumammad','aysu2003','aysu@gmail.com'),
('aysha_ulukhanova','aysha123','aysha@gmail.com'),
('g.rasulova','gulerresul12','guler@gmail.com'),
('sabinanovruz','sabi123','sabina@gmail.com')

select * from Users

INSERT INTO Posts(Content,UserId,LikeCount,IsDeleted)
VALUES('hello:)',1,180,0),
('ASDF',2,213,0),
('GHJKL',3,165,0),
('QWERTY',4,98,0)

select * from Posts

INSERT INTO Comments
VALUES(1,1,15,0),
(2,2,10,0),
(3,3,12,0),
(4,4,18,0)

select * from Comments

INSERT INTO Peoples
VALUES('Zulfiyye','Huseynova',19),
('Aysu','Memmedova',19),
('Ayse','Uluxanova',20),
('Guler','Resulova',23),
('Sebine','Novruzova',21)

select * from Peoples