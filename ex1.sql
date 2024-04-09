declare
c_id customer.custid%type;
c_name customer.custname%type;
c_phno customer.phno%type;
cursor c1 is select custid,custname,phno from customer;
begin
open c1;
loop
fetch c1 into c_id,c_name,c_phno;
 exit when c1%notfound;
dbms_output.put_line(c_id||' '||c_name||' '||c_phno);
if c_id=1 then 
c_phno:=c_phno+1000;
elsif c_id=2 then 
c_phno:=c_phno+2000;
end if;
update customer set phno=c_phno where custid=c_id;
end loop;
close c1;
end;
/
