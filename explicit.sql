declare
c_id customerr.cust_id%type;
c_name customerr.name%type;
c_salary customerr.salary%type;
cursor c1 is select cust_id,name,salary from customerr;
begin
open c1;
loop
fetch c1 into c_id,c_name,c_salary;
 exit when c1%notfound;
dbms_output.put_line(c_id||' '||c_name||' '||c_salary);
end loop;
close c1;
end;
/
