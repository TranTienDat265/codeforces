program tiendien;
var tt,tn,tien,kw:int64;
begin
readln(tn,tt);
kw:=tn-tt;
writeln(kw);
if (kw>=0) and (kw<=60) then write(kw*1000)
else if (kw>=61) and (kw<=120) then write(60*1000+(kw-60)*1200)
else if (kw>=121) and (kw<=300) then write(60*1000+60*1200+(kw-120)*2000)
else if (kw>300) then write(60*1000+60*1200+180*2000+(kw-300)*4000);
end.