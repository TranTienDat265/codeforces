program ngonngu;
var tt: array [1..10] of integer = (1,2,9,3,6,10,4,5,8,7);
st: array [1..10] of string = ('zero','un','deux','trois','quatre','cinq','six','sept','huit','neuf');
i,n,so:longint;
s:string;
procedure timso(n:longint);
var min,so,numb,so_min:longint;
begin
min:=9;
so:=n;
while so>0 do
begin
numb:=(so mod 10)+1;
if tt[numb]<min then begin min:=tt[numb]; so_min:=numb; end;
so:=so div 10;
end;
writeln(st[so_min]);      //deo sai duoc
end;
begin
readln(s);
readln(n);
for i:=1 to n do begin readln(so); timso(so); end;
end.