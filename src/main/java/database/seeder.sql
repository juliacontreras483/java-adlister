
USE adlister_db;

TRUNCATE users;
TRUNCATE ads;

insert into users (username, email, password) values ('alex', 'alex@gmail.com', 'K3WVc2HJ');
insert into users (username, email, password) values ('julia', 'julia@hotmail.com', 'hjkx1gS');
insert into users (username, email, password) values ('genesis', 'gena@yahoo.com', 'RKTiKY6c0');
insert into users (username, email, password) values ('brookeline', 'brooke@live.com', 'We3xW8ZBg');
insert into users (username, email, password) values ('peter', 'peter@att.net', '8r6rZF30Lr');

INSERT INTO ads (user_id, title, description) values (1, 'a great ad 1', 'this is the section for a description');
INSERT INTO ads (user_id, title, description) values (2, 'a great ad 2', 'this is the section for a description');
INSERT INTO ads (user_id, title, description) values (3, 'a great ad 3', 'this is the section for a description');
INSERT INTO ads (user_id, title, description) values (4, 'a great ad 4', 'this is the section for a description');
INSERT INTO ads (user_id, title, description) values (5, 'a great ad 5', 'this is the section for a description');


select * from users;