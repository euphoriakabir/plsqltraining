--1 Declare and Initialize variable in one go.
set serveroutput on
declare
    v_name varchar2(13):='pratik gaurav';
begin
    dbms_output.put_line('My Name is ::' || v_name || ' and this is my first PL/SQL Program');
end;
/
--2 Declare and initilaize variable in different parts
set serveroutput on
declare 
    v_name varchar2(13);
begin
    v_name := 'Ankita Noopur';
    dbms_output.put_line('Hello PL/SQL ::' || v_name);
end;
/
--3 Declare Variable and fetch data from table with 1 var
--select * from employees;
set serveroutput on
declare
    v_name varchar2(10);
begin
    select first_name into v_name from employees where employee_id=100;
    dbms_output.put_line(v_name ||' has the employee id 100');
end;
/
--4 Declare Multiple Variables and fetch data from table with 2 var
set serveroutput on
declare
    v_fname varchar2(20);
    v_lname varchar2(20);
begin
    select first_name,last_name into v_fname,v_lname from employees where employee_id=100;
    dbms_output.put_line('fetched first name : '|| v_fname || ' and last name is : ' ||v_lname);
end;
/

-- 5 Anchored Datatype
--Anchored datatypes: they are better than normal variables
--Question Why ?
--Answer: variable type and length is not hard-coded, and it gives the program flexibility to run independent for any 
--datatype change or length change.
--select first_name,last_name from employees;
set serveroutput on
declare
    v_fname EMPLOYEES.FIRST_NAME%TYPE;
    v_lname EMPLOYEES.LAST_NAME%TYPE;
begin
    select first_name,last_name into v_fname,v_lname from employees where employee_id=100;
    dbms_output.put_line('First Name is ' || v_fname || ' and last name is '||v_lname);
end;
/
-- Constants
set serveroutput on
declare
    v_pi number:=3.141;
begin
    dbms_output.put_line('Value of pi is '||v_pi);
 end;
 /