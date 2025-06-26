--create sequence hibernate_sequence start 1 increment 1;
--insert into hibernate_sequence values ( 2 );

--последний рабочий вариант {
--create table message (
--    id bigint not null auto_increment,
--    user_id bigint,
--    filename varchar(255),
--    tag varchar(255),
--    text varchar(2048) not null,
--    primary key (id)
--    ) engine=MyISAM;
--
--create table user_role (
--    user_id bigint not null,
----    roles varchar(255)
--    roles enum ('USER','ADMIN')
--    ) engine=MyISAM;
--
--create table usr (
--    active bit not null,
--    id bigint not null auto_increment,
--    activation_code varchar(255),
--    email varchar(255),
--    password varchar(255) not null,
--    username varchar(255) not null,
--    primary key (id)
--    ) engine=MyISAM;
--
--
--alter table message
--    add constraint message_user_fk
--        foreign key (user_id) references usr;
--
--alter table user_role
--    add constraint user_rol_user_fk
--        foreign key (user_id) references usr;

-- }__________________________________________


CREATE TABLE message (
id bigint not null auto_increment,
filename varchar(255),
tag varchar(255),
text varchar(2048) not null,
user_id bigint,
primary key (id)
) ENGINE=InnoDB;

CREATE TABLE user_role (
user_id bigint not null,
roles varchar(255)
) ENGINE=InnoDB;

CREATE TABLE usr (
id bigint not null auto_increment,
activation_code varchar(255),
active bit not null,
email varchar(255),
password varchar(255) not null,
username varchar(255) not null,
primary key (id)
) ENGINE=InnoDB;

ALTER TABLE message ADD CONSTRAINT FK70bv6o4exfe3fbrho7nuotopf FOREIGN KEY (user_id) REFERENCES usr (id);
ALTER TABLE user_role ADD CONSTRAINT FKfpm8swft53ulq2hl11yplpr5 FOREIGN KEY (user_id) REFERENCES usr (id);





--alter table if exists message
--    add constraint message_user_fk
--    foreign key (user_id) references usr;
--
--alter table if exists user_role
--    add constraint user_role_user_fk
--    foreign key (user_id) references usr;


--CREATE TABLE message (id int8 not null, filename varchar(255), tag varchar(255), text varchar(2048) not null, user_id int8, primary key (id));
--
--CREATE TABLE user_role (
--    user_id int8 not null,
--    roles varchar(255)
--);
--
--create table usr (
--    id int8 not null,
--    activation_code varchar(255),
--    active boolean not null,
--    email varchar(255),
--    password varchar(255) not null,
--    username varchar(255) not null,
--    primary key (id)
--);
--











--insert into hibernate_sequence values ( 1 )
--insert into hibernate_sequence values ( 1 )
--create table message (id integer not null, filename varchar(255), tag varchar(255), text varchar(255), user_id bigint, primary key (id)) engine=MyISAM
--create table user_role (user_id bigint not null, roles varchar(255)) engine=MyISAM
--create table usr (id bigint not null, activation_code varchar(255), active bit not null, email varchar(255), password varchar(255), username varchar(255), primary key (id)) engine=MyISAM
--alter table message add constraint FK70bv6o4exfe3fbrho7nuotopf foreign key (user_id) references usr (id)
--alter table user_role add constraint FKfpm8swft53ulq2hl11yplpr5 foreign key (user_id) references usr (id)
