program hgt;
function gt(n:real):real;
var i,so:real;
begin
i:=0; so:=1;
while i<n do begin i:=i+1; so:=so*i; end;
gt:=so;
end;
var m,n:real;
begin
readln(m,n);
write(gt(n)/(gt(m)*gt(n-m)):0:1);
end.