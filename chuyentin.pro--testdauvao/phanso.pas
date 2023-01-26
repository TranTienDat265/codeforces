program phanso;
var s,st,st1:string;
n,so,i,j,pow,uclnn,honso:longint;
function ucln(a,b:longint):longint;
begin
while a<>b do
if a>b then a:=a-b
else if a<b then b:=b-a;
ucln:=b;
end;
begin
readln(s); pow:=1;
for i:=length(s) downto 1 do if s[i]='.' then break else begin st:=s[i]+st; inc(j); end;
for i:=1 to length(s) do if s[i]='.' then break else st1:=st1+s[i];
val(st1,honso);
val(st,so);
for i:=1 to j do pow:=pow*10;
//writeln(pow,' ',so);
uclnn:=ucln(pow,so);
so:=so div uclnn;
pow:=pow div uclnn;
so:=honso*pow+so;
write(so,' ',pow);
end.
