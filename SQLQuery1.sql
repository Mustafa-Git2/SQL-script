
--DDL //Data Definition Language
--lesson#1 //create the database
--create database nameofdatabase
--============================================================
--lesson#2 //create database if not exists
--if not exists(select * from sys.databases where name='DB3')
--begin 
--create database DB3
--end
--============================================================
--lesson#3 //switch database
--use DB1
--============================================================
--lesson#4 // drop database
/* Delete Database Backup and Restore History from MSDB System Database */
--exec msdb.dbo.sp_delete_database_backuphistory @database_name = N'DB1' 
/* Query to Get Exclusive Access of SQL Server Database before Dropping the Database  */
--alter database DB1 set single_user with rollback immediate
--drop databse DB1
--============================================================
--lesson#5 // drop database if not exists
--if  exists (select * from sys.databases where name='DB2')
--begin 
--exec msdb.dbo.sp_delete_database_backuphistory @database_name = N'DB2' 
--alter database DB2 set single_user with rollback immediate
--	drop database DB2
--end
--============================================================
--lesson#6 //Create Taple
--create table Employees(primary key (ID),ID int not null,Name nvarchar(20) not null,
--						Phone varchar(12) null,Salary smallmoney null)
--============================================================
--lesson#7 //drop table from database
--drop table Employees


--**********************************************************************************************************
--Alter table statement
--lesson#1 // Add Column
--alter table Employees
--add Gender varchar(10)
--============================================================
--lesson#2 // rename column
--exec sp_rename 'employees.Gendor','Gender','column'
--============================================================
--lesson#3 // rename table
--exec sp_rename 'emp','Employees'
--============================================================
--lesson#4 // modify column
--alter table Employees 
--alter column Name nvarchar(100) not null
--============================================================
--lesson#5 // delete column
--alter table Employees 
--drop column Gender
--============================================================
--lesson#6 // full BackUp
--backup database DB1
--to disk = 'D:\DB1.bak'
--============================================================
--lesson#7 // Differential Backup
--backup database DB1
--to disk = 'D:\DB1.bak'
--with differential
--============================================================
--lesson#8 // Restore Data
--restore database DB1
--from disk = 'D:\DB1.bak'
--============================================================

--**********************************************************************************************************
--DML //Data Manipulation Language
--============================================================
--lesson#1 Insert Into // you can insert single and multiple record on table
--select * from Employees

--insert into Employees
--values 
--(1,'Mustafa','07803379821','5000')
--++++++++++++++++++++++++++++++++++++
--insert into Employees
--values 
--(3,'Ahmed',null,null)
--++++++++++++++++++++++++++++++++++++
--insert only selected fields
--insert into Employees (ID,Name)
--values 
--(5,'Ali')
--============================================================
--lesson#2 Update statement
--update Employees
--set Name = 'mustafa',Salary=500
--where ID=1
--++++++++++++++++++++++++++++++++++++
--update Employees
--set Salary=Salary+200
--where Salary <= 500
--++++++++++++++++++++++++++++++++++++
--update Employees
--set Salary=Salary * 1.1
--where Salary <= 700



select * from Employees













