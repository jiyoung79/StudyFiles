use employees;
select count(*) from employees.salaries;
SELECT * FROM employees.salaries;
SELECT * FROM employees.salaries where to_date >= '1986-01-01';
create index to_date_idx on employees.salaries(to_date);
show index from employees.salaries;
alter table employees.salaries drop index to_date_idx;
SELECT * FROM employees.salaries where to_date = '1986-12-01';