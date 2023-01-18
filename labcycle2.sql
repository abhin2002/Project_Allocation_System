create view VW_emp as select * from employee;
select * from VW_emp;
create view VW_SSN as select SuperSSN,Dno from VW_emp where Sex = "F";
select * from VW_SSN;
drop view VW_EMP;
select * from VW_emp;