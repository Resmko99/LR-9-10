
const n=5;
var
  a:array[1..n] of integer;
  b:array[1..n] of integer;
  otv1:array[1..n] of integer;
  otv2:array[1..n] of integer;
  sum_a, sum_b,i:integer;
procedure sum_mas_a();
var i:integer;
begin
    for i:=1 to n do
    if a[i] > 0 then
    begin
      sum_a:=sum_a + a[i];
    end;
end;
procedure sum_mas_b();
var i:integer;
begin
    for i:=1 to n do
    if b[i] > 0 then
    begin
      sum_b:=sum_b + b[i];
    end;
end;
begin
  for i:=1 to n do
  begin
    write('a[',i,'] = ');
    read(a[i]);
  end;
  for i:=1 to n do
  begin
    write('b[',i,'] = ');
    read(b[i]);
  end;
  sum_mas_a();
  sum_mas_b();
  if sum_a < sum_b then
  write('Сумма элементов первого массива меньше, ответ: ');
    for i:=1 to n do
    begin
      otv1[i]:=a[i]*10;
      write(otv1[i]:4);
    end;
    if sum_a > sum_b then
     write('Сумма элементов второго массива меньше, ответ: ');
    for i:=1 to n do
    begin
      otv2[i]:=b[i]*10;
      write(otv2[i]:4);
    end;
end.