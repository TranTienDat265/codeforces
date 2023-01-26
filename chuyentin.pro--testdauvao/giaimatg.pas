program giaimatg;
function ngang(n:byte):byte;
begin
case n of
0: ngang:=2;
1: ngang:=0;
2: ngang:=3;
3: ngang:=3;
4: ngang:=1;
5: ngang:=3;
6: ngang:=3;
7: ngang:=1;
8: ngang:=3;
9: ngang:=3;
end;                                    //0:00  23:59
end;                            // 20:06  1:11
function doc(n:byte):byte;
begin
case n of
0: doc:=4;
1: doc:=2;
2: doc:=2;
3: doc:=2;
4: doc:=3;
5: doc:=2;
6: doc:=3;
7: doc:=2;
8: doc:=4;
9: doc:=3;
end;
end;
var dung,nam,nga,thang,j,k,i,l,chuc_gio,dv_gio,chuc_phut,dv_phut,max_gio,max_phut:longint;
//phut_str:string;
begin
readln(dung,nam);
max_gio:=23;
max_phut:=59;
for i:=1 to 24 do
for j:=1 to 60 do
begin
chuc_gio:=(i-1) div 10;
dv_gio:=(i-1) mod 10;
chuc_phut:=(j-1) div 10;
dv_phut:=(j-1) mod 10;
if chuc_gio =0 then begin
thang:=doc(dv_gio)+doc(chuc_phut)+doc(dv_phut);
nga:=ngang(dv_gio)+ngang(chuc_phut)+ngang(dv_phut);
end
else
begin
thang:=doc(chuc_gio)+doc(dv_gio)+doc(chuc_phut)+doc(dv_phut);
nga:=ngang(chuc_gio)+ngang(dv_gio)+ngang(chuc_phut)+ngang(dv_phut);
end;
if (thang=dung) and (nam=nga) then
        if max_gio>i-1 then begin max_gio:=i-1; max_phut:=j-1; end
        else if max_gio=i-1 then
                if max_phut>j-1 then max_phut:=j-1;
end;
if max_phut div 10 =0 then write(max_gio,':0',max_phut)
else write(max_gio,':',max_phut);
end.
