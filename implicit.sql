declare
total_rows number(2);
begin
update customer set phno=phno+1000000000;
if sql%notfound then
dbms_output.put_line('No customers selected');
elsif sql%found then
total_rows:=sql%rowcount;
dbms_output.put_line(total_rows||'customers selected');
end if;
end;
/
