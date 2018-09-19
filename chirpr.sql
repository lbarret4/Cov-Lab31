CREATE TABLE users (
    id INT NOT NULL auto_increment PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(254) NOT NULL,
    password TEXT NULL,
    _created DATETIME DEFAULT CURRENT_TIMESTAMP

);

CREATE TABLE Chirps (
    id INT NOT NULL auto_increment PRIMARY KEY,
    userid INT NOT NULL,
    text TEXT NULL,
    location VARCHAR(50) NOT NULL,
    _created DATETIME DEFAULT CURRENT_TIMESTAMP
);

ALTER TABLE chirps 
ADD CONSTRAINT fk_userid
FOREIGN KEY (userid)
REFERENCES users(id);

INSERT INTO users (name,email,password)
values( 'Charles','test@email.com','LdWedugh'), ('Jemma','test1@email.com','easTErIO'),( 'Kim','test2@email.com','berJoIDN'), ('Amanda','test3@email.com','XYrItIma'),
 ('Kenji','test4@email.com','iNAPAUSt'), ('John','test5@email.com','RANAugAD'), ('Candice','test6@email.com','ieWREBap'), 
 ('Robert','test7@email.com','abLeABow'), ('Tina','test8@email.com','hiETRumV'), ('Patricia','test9@email.com','ndBoLiaB');

 INSERT INTO chirps (userid, text, location)
 values (1,"Hickory, dickory, dock.",'Birmingham'),
(2,"The mouse ran up the clock.",'Montgomery '),
(8,"The clock struck one,",'Columbus'),
(6,"The mouse ran down,",'Mobile'),
(5,"Hickory, dickory, dock",'Huntsville'),
(2,"The mouse ran up the clock.",'Montgomery '),
(7,"The clock struck one,",'Columbus'),
(6,"The mouse ran down,",'Mobile'),
(5,"Hickory, dickory, dock",'Huntsville'),
(3,"Hickory, dickory, dock.",'Birmingham'),
(8,"The clock struck one,",'Columbus'),
(10,"The mouse ran down,",'Mobile'),
(4,"Hickory, dickory, dock",'Huntsville'),
(10,"The mouse ran up the clock.",'Montgomery '),
(9,"Hickory, dickory, dock.",'Birmingham'),
(6,"The clock struck one,",'Columbus'),
(6,"The mouse ran down,",'Mobile'),
(5,"Hickory, dickory, dock",'Huntsville'),
(9,"Hickory, dickory, dock.",'Birmingham'),
(9,"The clock struck one,",'Columbus'),
(1,"Hickory, dickory, dock.",'Birmingham'),
(3,"The mouse ran up the clock.",'Montgomery '),
(5,"The clock struck one,",'Columbus'),
(6,"The mouse ran down,",'Mobile'),
(1,"Hickory, dickory, dock",'Huntsville'),
(4,"The mouse ran up the clock.",'Montgomery '),
(3,"The clock struck one,",'Columbus'),
(9,"The mouse ran down,",'Mobile'),
(1,"Hickory, dickory, dock",'Huntsville'),
(5,"Hickory, dickory, dock.",'Birmingham'),
(6,"The clock struck one,",'Columbus'),
(8,"The mouse ran down,",'Mobile'),
(7,"Hickory, dickory, dock",'Huntsville'),
(7,"The mouse ran up the clock.",'Montgomery '),
(2,"Hickory, dickory, dock.",'Birmingham'),
(6,"The clock struck one,",'Columbus'),
(4,"The mouse ran down,",'Mobile'),
(9,"Hickory, dickory, dock",'Huntsville'),
(3,"Hickory, dickory, dock.",'Birmingham'),
(2,"The clock struck one,",'Columbus'),
(4,"Hickory, dickory, dock.",'Birmingham'),
(7,"The mouse ran up the clock.",'Montgomery '),
(3,"The clock struck one,",'Columbus'),
(1,"The mouse ran down,",'Mobile'),
(7,"Hickory, dickory, dock",'Huntsville'),
(3,"The mouse ran up the clock.",'Montgomery '),
(1,"The clock struck one,",'Columbus'),
(7,"The mouse ran down,",'Mobile'),
(10,"Hickory, dickory, dock",'Huntsville'),
(2,"Hickory, dickory, dock.",'Birmingham'),
(5,"The clock struck one,",'Columbus'),
(5,"The mouse ran down,",'Mobile'),
(8,"Hickory, dickory, dock",'Huntsville'),
(2,"The mouse ran up the clock.",'Montgomery '),
(10,"Hickory, dickory, dock.",'Birmingham'),
(4,"The clock struck one,",'Columbus'),
(9,"The mouse ran down,",'Mobile'),
(9,"Hickory, dickory, dock",'Huntsville'),
(10,"Hickory, dickory, dock.",'Birmingham'),
(1,"The clock struck one,",'Columbus'),
(5,"Hickory, dickory, dock.",'Birmingham'),
(6,"The mouse ran up the clock.",'Montgomery '),
(4,"The clock struck one,",'Columbus'),
(4,"The mouse ran down,",'Mobile'),
(3,"Hickory, dickory, dock",'Huntsville'),
(10,"The mouse ran up the clock.",'Montgomery '),
(4,"The clock struck one,",'Columbus'),
(2,"The mouse ran down,",'Mobile'),
(4,"Hickory, dickory, dock",'Huntsville'),
(7,"Hickory, dickory, dock.",'Birmingham'),
(3,"The clock struck one,",'Columbus'),
(1,"The mouse ran down,",'Mobile'),
(7,"Hickory, dickory, dock",'Huntsville'),
(10,"The mouse ran up the clock.",'Montgomery '),
(2,"Hickory, dickory, dock.",'Birmingham'),
(5,"The clock struck one,",'Columbus'),
(5,"The mouse ran down,",'Mobile'),
(8,"Hickory, dickory, dock",'Huntsville'),
(2,"Hickory, dickory, dock.",'Birmingham'),
(10,"The clock struck one,",'Columbus'),
(4,"Hickory, dickory, dock.",'Birmingham'),
(9,"The mouse ran up the clock.",'Montgomery '),
(5,"The clock struck one,",'Columbus'),
(9,"The mouse ran down,",'Mobile'),
(9,"Hickory, dickory, dock",'Huntsville'),
(10,"The mouse ran up the clock.",'Montgomery '),
(1,"The clock struck one,",'Columbus'),
(5,"The mouse ran down,",'Mobile'),
(6,"Hickory, dickory, dock",'Huntsville'),
(4,"Hickory, dickory, dock.",'Birmingham'),
(2,"The clock struck one,",'Columbus'),
(3,"The mouse ran down,",'Mobile'),
(8,"Hickory, dickory, dock",'Huntsville'),
(3,"The mouse ran up the clock.",'Montgomery '),
(8,"Hickory, dickory, dock.",'Birmingham'),
(1,"The clock struck one,",'Columbus'),
(6,"The mouse ran down,",'Mobile'),
(5,"Hickory, dickory, dock",'Huntsville'),
(7,"Hickory, dickory, dock.",'Birmingham'),
(2,"The clock struck one,",'Columbus');

SELECT * FROM chirps;
SELECT id,userid FROM chirps;
SELECT * FROM users;
SELECT * FROM chirps RIGHT JOIN users ON chirps.userid =users.id WHERE userid = 4 ;

CREATE TABLE mentions (
	userid INT NOT NULL,
    chirpid INT NOT NULL, 
    PRIMARY KEY (userid,chirpid)
    );

ALTER TABLE mentions 
ADD CONSTRAINT fk_mentions_chirpid
FOREIGN KEY (chirpid)
REFERENCES chirps(id);

ALTER TABLE mentions 
ADD CONSTRAINT fk_mentions_userid 
FOREIGN KEY (userid)
REFERENCES users(id);