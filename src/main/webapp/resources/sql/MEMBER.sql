drop table  member CASCADE CONSTRAINTS purge;

create table member(
id			varchar2(12),
password	varchar2(10),
name		varchar2(15),
age			Number(2),
gender		varchar2(3),
email		varchar2(30),
PRIMARY KEY(id)
);