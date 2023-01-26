program ngtoghep;
var n,k:qword;
function ngto(n:qword):boolean;
var i:qword;
begin
ngto:=true;
if (n=1)  then exit(false);
i:=1;
while i< trunc(sqrt(n)) do
begin
inc(i);
if n mod i = 0 then exit(false);
end;
end;
function ghep(a,b:qword):qword;
var st1,st2,st:string;
n:qword;
begin
str(a,st1);
str(b,st2);
st:=st1+st2;
val(st,n);
ghep:=n;
end;
procedure giai;
var ngto1,ngto2,i,n,k:qword;
begin
readln(k);
i:=1; n:=1;
while n<=k do
        begin
        while ngto(i)<> true do inc(i);
        //writeln('1:    ', i);
        ngto1:=i;
        inc(i);
        while ngto(i)<> true do inc(i);
        //writeln('2:    ', i);
        ngto2:=i;
        if ngto(ghep(ngto1,ngto2)) then begin inc(n); end;
        inc(i);
        end;
write(ghep(ngto1,ngto2));
end;
begin
//write(ngto(2));
giai;
end.
