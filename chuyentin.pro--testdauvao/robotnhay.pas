program robotnhay;
var a:array [1..1000,1..1000] of integer;
luu:array [1..1000] of integer;
i,j,n,m,dem,so,cot,hang,l,k,kt,tam:integer;
begin
readln(n,m);
for i:=1 to n do
for j:=1 to m do read(a[i,j]);
readln(cot,hang);
so:=a[cot,hang];
for i:=1 to n do
for j:=1 to m do
begin
if a[i,j] > so then
        begin
        kt:=0;
        for l:=1 to k do if luu[l]=a[i,j] then begin kt:=1; break; end;
        if kt<>1 then begin inc(k); luu[k]:=a[i,j];  end;
        end;
end;

write(k);
end.
