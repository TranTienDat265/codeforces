program bangvuong;
var a:array [1..100,1..100] of byte;
i,j,n,tong,dem,so,dot,l,k,max:byte;
ok:boolean;
begin
//-------------------NHAP-----------------
readln(n);
for i:=1 to n do
for j:=1 to n do read(a[i,j]);
//-------------------GIAI-----------------
dot:=0;
while dot<n-1 do
begin
inc(dot);
for i:=1 to n do
for j:=1 to n do
begin
if (n-i>=dot) and (n-j>=dot) then begin
tong:=0; ok:=true;
for l:=i to i+dot do
for k:=j to j+dot do
if ok then
        if a[l,k]=0 then begin ok:=false; tong:=0; break; end else tong:=tong+a[l,k];
if tong>max then max:=tong;
end else break;
end;
end;
write(max);
end.