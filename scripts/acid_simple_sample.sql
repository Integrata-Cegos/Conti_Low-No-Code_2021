drop table if exists messages;
create table messages (id int, message varchar(20));
insert into messages values(1, 'Hello');
insert into messages values(2, 'World');
COMMIT;
select * from messages;
