program robotnhay_2;
var a:array [1..1000,1..1000] of integer;
b:array [1..10000] of integer;
i,j,n,m,so,cot,hang,k,max:integer;
begin
readln(n,m);
for i:=1 to n do
for j:=1 to m do begin read(a[i,j]); inc(b[a[i,j]]); if max<a[i,j] then max:=a[i,j]; end;
readln(cot,hang);
so:=a[cot,hang];
for i:=1 to max do if (i>so) and (b[i]>=1) then inc(k);
write(k);
end.