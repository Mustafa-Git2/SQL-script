--DDL //Data Definition Language
--lesson#1 //create the database
--create database nameofdatabase

--lesson#2 //create database if not exists
--if not exists(select * from sys.databases where name='DB3')
--begin 
--create database DB3
--end

--lesson#3 //switch database
--use DB1

--lesson#4 // drop database
--drop databse DB3

--lesson#5 // drop database if not exists
--if  exists (select * from sys.databases where name='DB2')
--begin 
--	drop database DB2
--end

--lesson#6 //Create Taple
--create table Employees(primary key (ID),ID int not null,Name nvarchar(20) not null,
--						Phone varchar(12) null,Salary smallmoney null)

--lesson#7 //drop table from database
--drop table Employees

--****************************************************************************************
--Alter table statement
--lesson#1 // Add Column
alter table Employees
add Gender varchar(10)























