create table salary (
id serial primary key,
monthly_salary int not null)

select * from salary;

insert into salary(monthly_salary)
values (500),
		(700),
		(1000),
		(1200),
		(1400),
		(1500);
		
	insert into salary (id, monthly_salary)
	values (7,1700);
	
insert into salary(monthly_salary)
values (1900),
		(2000);
	-- varchar это строка с 50 символами	
	create table roles(
	id serial primary key,
	role_title varchar(50) unique not null
	);
	
insert into roles(role_title)
values ('Junior_QA'),
		('Middle_QA'),
		('Senior_QA');
	
	create table roles_salary(
	id serial primary key,
	id_role int not null,
	id_salary int not null,
	foreign key(id_role)
	references roles(id),
	foreigndo key(id_salary)
	references salary(id);
	
create table employees(
id serial primary key,
employee_name varchar(50) not null);

select * from salary;

insert into employees(employee_name)
values ('Marcin1'),
		('Kokosanka'),
		('Marcin3'),
		('Kokosanka 7'),
		('Maryla'),
		('Kokjn789'),
		('Martin1890'),
		('Jadwiga9067'),
		('Marcin091'),
		('Kokosandka09'),
		('Pirat09'),
		('Katia09'),
		('Yulia09'),
		('Ocean09'),
		('Malta09'),
		('Marta09'),
		('Maryla09'),
		('Kokjns09'),
		('Marti3n31'),
		('Jadwigaw57'),
		('Marcin146'),
		('Kokosandka91'),
		('Pirat82'),
		('Katia24'),
		('Yulia21'),
		('Ocean22'),
		('Malta32'),
		('Marta32'),
		('Marcin127'),
		('Kokosanka27'),
		('Marcin2237'),
		('Kokosanka2 77'),
		('Maryla227'),
		('Kokjn227'),
		('Martin176'),
		('Jadwiga74'),
		('Marcin178'),
		('Kokosandka76'),
		('Pirat778'),
		('Katia774'),
		('Yulia778'),
		('Ocean7744'),
		('Malta7755'),
		('Mart7a9'),
		('Maryla7754'),
		('Kokjns77678'),
		('Marti3n177789'),
		('Jadwigaw77567'),
		('Marcin169567'),
		('Kokosandka97567'),
		('Pirat86567'),
		('Katia46567'),
		('Yulia1646'),
		('Ocean26234'),
		('Malta37234'),
		('Marta37234'),
		('Marcin1234'),
		('Kokosanka234'),
		('Marcin3234'),
		('Kokosanka 7234'),
		('Maryla234'),
		('Kokjn342'),
		('Martin1 345'),
		('Jadwiga Tok'),
		('Marcin1 Doy'),
		('Kokosandka Kula'),
		('Pirat Wora'),
		('Katia matut'),
		('Yulia tur');
	
	create table salary(
id serial primary key,
monthly_salary int not null);
		
	insert into salary(monthly_salary)
values (1000),
		(1100),
		(1200),
		(1300),
		(1400),
		(1500),
		(1600),
		(1700),
		(1800),
		(1900),
		(2000),
		(2100),
		(2200),
		(2300),
		(2400),
		(2500);
	
drop table employee_salary;
		
create table employee_salary(
id serial primary key,
employee_id int not null unique,
salary_id int not null);

insert into employee_salary(
employee_id, salary_id)
values (3,7),
	(1,4),
	(5,9),
	(40,13),
	(23,4),
	(11,2),
	(52,10),
	(15,13),
	(26,4),
	(16,1),
	(33,7),
	(34,7),
	(13,17),
	(2,4),
	(55,9),
	(4,13),
	(6,4),
	(7,2),
	(8,10),
	(9,13),
	(10,4),
	(12,1),
	(58,7),
	(14,7),
	(17,4),
	(18,2),
	(19,10),
	(20,13),
	(21,4),
	(22,1),
	(251,7),
	(24,7),
	(25,17),
	(27,4),
	(28,9),
	(29,13),
	(30,4),
	(31,2),
	(32,10),
	(59,13),
	(35,4),
	(36,1),
	(37,7),
	(38,7);

select * from roles_employee;
drop table roles

SELECT CONVERT(varchar(30) , role_name) FROM employee_salary;
