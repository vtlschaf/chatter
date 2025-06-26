--insert into usr (id, username, password, active)
--    values (1, 'admin', '123', true);
--
--insert into user_role (user_id, roles)
--    values (1, 'USER'), (1, 'ADMIN');

INSERT IGNORE INTO usr (id, username, password, active, email)
VALUES (1, 'admin', '123', TRUE, 'admin@example.com');

INSERT IGNORE INTO user_role (user_id, roles)
VALUES (1, 'USER'), (1, 'ADMIN');

--insert into user (username, password, active)
--    values('admin', 'admin', true);
--
--insert into user_role (user_id, roles)
--    values((select id from user where username='admin'), 'ADMIN'),
--          ((select id from user where username='admin'), 'USER');