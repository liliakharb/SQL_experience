
--1. Display all workers which have salary in database with their salary.
select employees.employee_name, salary.monthly_salary 
from employee_salary join employees
on employee_salary.employee_id = employees.id
join salary 
on employee_salary.salary_id = salary.id;

 --2. Display all workers, which salary less than 2000
select employees.employee_name, salary.monthly_salary 
from employee_salary join employees
on employee_salary.employee_id = employees.id
join salary 
on employee_salary.salary_id = salary.id
where salary.monthly_salary < 2000;


select * from employees;
select * from salary;
select * from employee_salary;
select * from roles;

 --3. Display only salary position without name of workers 
select salary.monthly_salary 
from employee_salary join salary
on employee_salary.salary_id = salary.id;

 --4. Display only salary position, with salary less then 2000, without name of workers 
select salary.monthly_salary 
from employee_salary join salary
on employee_salary.salary_id = salary.id
where salary.monthly_salary < 2000;


-- 5. Найти всех работников кому не начислена ЗП.

--создание таких работников
insert into employee_salary (employee_id,salary_id)
values (60,18),
		(61,19),
		(62,21);
	
select employees.employee_name, salary.monthly_salary   
from employee_salary right join employees
on employee_salary.employee_id = employees.id
right join salary 
on employee_salary.salary_id = salary.id

-- 6. Display all workers with their position

create table employee_roles(
id serial primary key,
employee_id int not null unique,
roles_id int not null);

insert into employee_roles(employee_id, roles_id)
values (1,16),
(2,11),
(3,5),
(4,10),
(5,1),
(6,6),
(7,9),
(8,11),
(9,11),
(10,6),
(11,5),
(12,8),
(13,5),
(14,6),
(15,16),
(16,19),
(17,17),
(18,8),
(19,7),
(20,20),
(21,12),
(22,18),
(23,2),
(24,8),
(25,13),
(26,12),
(27,7),
(28,6),
(29,10),
(30,2),
(31,17),
(32,19),
(33,5),
(34,11),
(35,16),
(36,15),
(37,5),
(38,5),
(39,11),
(40,16),
(41,2),
(42,2),
(43,13),
(44,15),
(45,4),
(46,15),
(47,6),
(48,20),
(49,19),
(50,16),
(51,7),
(52,13),
(53,11),
(54,2),
(55,15),
(56,12),
(57,5),
(58,19),
(59,1),
(60,13),
(61,14),
(62,13),
(63,10),
(64,12),
(65,11),
(66,4),
(67,13),
(68,8),
(69,20),
(70,20);


select employees.employee_name, roles.role_name
from employee_roles join employees
on employee_roles.employee_id = employees.id
join roles 
on employee_roles.roles_id = roles.id;

-- 7. Display all workers name, and position which have position Java developer 
select employees.employee_name, roles.role_name
from employee_roles join employees
on employee_roles.employee_id = employees.id
join roles 
on employee_roles.roles_id = roles.id
where roles.role_name like '%Java%';

--8. Display all workers name and position which have position Python developer 
select employees.employee_name, roles.role_name
from employee_roles join employees
on employee_roles.employee_id = employees.id
join roles 
on employee_roles.roles_id = roles.id
where roles.role_name like '%Python%';

select * from roles;

-- 9. Display all workers name and position which have position QA engineer
select employees.employee_name, roles.role_name
from employee_roles join employees
on employee_roles.employee_id = employees.id
join roles 
on employee_roles.roles_id = roles.id
where roles.role_name like '%QA%';

--10. Display all workers name and position which have position manual QA engineer
from employee_roles join employees
on employee_roles.employee_id = employees.id
join roles 
on employee_roles.roles_id = roles.id
where roles.role_name like '%Manual QA%';

 --11. Display all workers name and position which have position automation QA engineer
select employees.employee_name, roles.role_name
from employee_roles join employees
on employee_roles.employee_id = employees.id
join roles 
on employee_roles.roles_id = roles.id
where roles.role_name like '%Automation QA%';

--12. Display name and salary of Junior workers 
select * from employees;
select * from salary;
select * from employee_salary;
select * from roles;

select employees.employee_name, roles.role_name, salary.monthly_salary
from employee_roles join employees
on employee_roles.employee_id = employees.id
join employee_salary
on employee_roles.employee_id = employee_salary.employee_id
join salary
on employee_salary.salary_id = salary.id
join roles 
on employee_roles.roles_id = roles.id
where roles.role_name like '%Junior%';

-- 13. Display name and salary of Middle workers 
select employees.employee_name, roles.role_name, salary.monthly_salary
from employee_roles join employees
on employee_roles.employee_id = employees.id
join employee_salary
on employee_roles.employee_id = employee_salary.employee_id
join salary
on employee_salary.salary_id = salary.id
join roles 
on employee_roles.roles_id = roles.id
where roles.role_name like '%Middle%';

--14. Display name and salary of Senior workers 
select employees.employee_name, roles.role_name, salary.monthly_salary
from employee_roles join employees
on employee_roles.employee_id = employees.id
join employee_salary
on employee_roles.employee_id = employee_salary.employee_id
join salary
on employee_salary.salary_id = salary.id
join roles 
on employee_roles.roles_id = roles.id
where roles.role_name like '%Senior%';

-- 15. Display role and salary of Java developers
select roles.role_name, salary.monthly_salary
from employee_roles join employees
on employee_roles.employee_id = employees.id
join employee_salary
on employee_roles.employee_id = employee_salary.employee_id
join salary
on employee_salary.salary_id = salary.id
join roles 
on employee_roles.roles_id = roles.id
where roles.role_name like '%Java%';

 --16. Display role and salary of Python developers
select roles.role_name, salary.monthly_salary
from employee_roles join employees
on employee_roles.employee_id = employees.id
join employee_salary
on employee_roles.employee_id = employee_salary.employee_id
join salary
on employee_salary.salary_id = salary.id
join roles 
on employee_roles.roles_id = roles.id
where roles.role_name like '%Python%';

-- 17. Display name, role and salary of Junior Python developers
select employees.employee_name, roles.role_name, salary.monthly_salary
from employee_roles join employees
on employee_roles.employee_id = employees.id
join employee_salary
on employee_roles.employee_id = employee_salary.employee_id
join salary
on employee_salary.salary_id = salary.id
join roles 
on employee_roles.roles_id = roles.id
where roles.role_name like '%Junior Python%';

-- 18. Display name, role and salary of  Middle JS developers
select employees.employee_name, roles.role_name, salary.monthly_salary
from employee_roles join employees
on employee_roles.employee_id = employees.id
join employee_salary
on employee_roles.employee_id = employee_salary.employee_id
join salary
on employee_salary.salary_id = salary.id
join roles 
on employee_roles.roles_id = roles.id
where roles.role_name like '%Middle JavaScript%';

 --19. Display name, role and salary of Senior Java  developers
select employees.employee_name, roles.role_name, salary.monthly_salary
from employee_roles join employees
on employee_roles.employee_id = employees.id
join employee_salary
on employee_roles.employee_id = employee_salary.employee_id
join salary
on employee_salary.salary_id = salary.id
join roles 
on employee_roles.roles_id = roles.id
where roles.role_name like '%Senior Java%';

 --20. Вывести зарплаты Junior QA инженеров
select  roles.role_name, salary.monthly_salary
from employee_roles join employees
on employee_roles.employee_id = employees.id
join employee_salary
on employee_roles.employee_id = employee_salary.employee_id
join salary
on employee_salary.salary_id = salary.id
join roles 
on employee_roles.roles_id = roles.id
where roles.role_name like '%Junior%' and roles.role_name like '%QA%';

select * from employees;
select * from salary;
select * from employee_salary;
select * from employee_roles;
select * from roles;

 --21. Вывести среднюю зарплату всех Junior специалистов
select avg(salary.monthly_salary) 
from employee_roles join employees
on employee_roles.employee_id = employees.id
join employee_salary
on employee_roles.employee_id = employee_salary.employee_id
join salary
on employee_salary.salary_id = salary.id
join roles 
on employee_roles.roles_id = roles.id
where roles.role_name like '%Junior%';

--22. Вывести сумму зарплат JS разработчиков
select sum(salary.monthly_salary) 
from employee_roles join employees
on employee_roles.employee_id = employees.id
join employee_salary
on employee_roles.employee_id = employee_salary.employee_id
join salary
on employee_salary.salary_id = salary.id
join roles 
on employee_roles.roles_id = roles.id
where roles.role_name like '%JavaScript%';

--23. Вывести минимальную ЗП QA инженеров
select min(salary.monthly_salary) 
from employee_roles join employees
on employee_roles.employee_id = employees.id
join employee_salary
on employee_roles.employee_id = employee_salary.employee_id
join salary
on employee_salary.salary_id = salary.id
join roles 
on employee_roles.roles_id = roles.id
where roles.role_name like '%QA%';

 --24. Вывести максимальную ЗП QA инженеров
select max(salary.monthly_salary) 
from employee_roles join employees
on employee_roles.employee_id = employees.id
join employee_salary
on employee_roles.employee_id = employee_salary.employee_id
join salary
on employee_salary.salary_id = salary.id
join roles 
on employee_roles.roles_id = roles.id
where roles.role_name like '%QA%';

 --25. Вывести количество QA инженеров
select count(employee_roles.employee_id) 
from employee_roles join employees
on employee_roles.employee_id = employees.id
join roles 
on employee_roles.roles_id = roles.id
where roles.role_name like '%QA%';

--26. Вывести количество Middle специалистов.
select count(employee_roles.employee_id) 
from employee_roles join employees
on employee_roles.employee_id = employees.id
join roles 
on employee_roles.roles_id = roles.id
where roles.role_name like '%Middle%';

 --27. Вывести количество разработчиков
select count(employee_roles.employee_id) 
from employee_roles join employees
on employee_roles.employee_id = employees.id
join roles 
on employee_roles.roles_id = roles.id
where roles.role_name like '%developer%';
--проверка
select employees.employee_name, roles.role_name
from employee_roles join employees
on employee_roles.employee_id = employees.id
join roles 
on employee_roles.roles_id = roles.id
where roles.role_name like '%developer%';

--28. Вывести фонд (сумму) зарплаты разработчиков.
select sum(salary.monthly_salary) 
from employee_roles join employees
on employee_roles.employee_id = employees.id
join employee_salary
on employee_roles.employee_id = employee_salary.employee_id
join salary
on employee_salary.salary_id = salary.id
join roles 
on employee_roles.roles_id = roles.id
where roles.role_name like '%QA%';

--29. Вывести имена, должности и ЗП всех специалистов по возрастанию
select employees.employee_name, roles.role_name, salary.monthly_salary 
from employee_roles 
join employees 
on employee_roles.employee_id = employees.id 
join roles
on employee_roles.roles_id = roles.id
join employee_salary
on employee_roles.employee_id = employee_salary.employee_id
join salary 
on employee_salary.salary_id = salary.id
order by salary.monthly_salary, roles.role_name
asc;

--30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
select employees.employee_name, roles.role_name, salary.monthly_salary 
from employee_roles 
join employees 
on employee_roles.employee_id = employees.id 
join roles
on employee_roles.roles_id = roles.id
join employee_salary
on employee_roles.employee_id = employee_salary.employee_id
join salary 
on employee_salary.salary_id = salary.id
where salary.monthly_salary >= 1700 and salary.monthly_salary <= 2300
order by salary.monthly_salary, roles.role_name
asc;

 --31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
select employees.employee_name, roles.role_name, salary.monthly_salary 
from employee_roles 
join employees 
on employee_roles.employee_id = employees.id 
join roles
on employee_roles.roles_id = roles.id
join employee_salary
on employee_roles.employee_id = employee_salary.employee_id
join salary 
on employee_salary.salary_id = salary.id
where  salary.monthly_salary < 2300
order by salary.monthly_salary, roles.role_name
asc;

 --32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1900, 2200
select employees.employee_name, roles.role_name, salary.monthly_salary 
from employee_roles 
join employees 
on employee_roles.employee_id = employees.id 
join roles
on employee_roles.roles_id = roles.id
join employee_salary
on employee_roles.employee_id = employee_salary.employee_id
join salary 
on employee_salary.salary_id = salary.id
where  salary.monthly_salary = 1100 or salary.monthly_salary = 1900 or salary.monthly_salary = 2200
order by salary.monthly_salary, roles.role_name
asc;