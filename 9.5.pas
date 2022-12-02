
const n = 5;

function crat_5(a:array of Integer;n:integer):integer;
begin
  for var i:=1 to n do
    if a[i] mod 5 = 0 then begin
      crat_5:=i;
      break;
    end;
end;
function max_el(a:array of Integer;n:integer):integer;
begin
  var max:=a[1];
  max_el:= 1;
  for var i:= 1 to n do
    if a[i]>max then
    begin
      max:=a[i];
      max_el:= i;
    end;
end;
function min_el(a:array of Integer;n: integer):integer;
begin
  var min:= a[1];
  min_el:= 1;
  for var j:= 1 to n do
    if a[i]<min then begin
      min:=a[i];
      min_el:= i;
    end;
  
end;
procedure umnozh_2(a:array of integer;n, min:integer);
begin
  if min<n then begin
  for var i:=min+1  to n do
    a[i]:=2*a[i];

end;


begin
var mas_a: array [1..n] of integer;
var mas_b: array [1..n] of integer;
  i: integer;

  for i:= 1 to n do
    mas_a[i]:= random(150)-50;
  for i:= 1 to n do
    mas_b[i]:= random(150)-50;

  var krat_5_mas_a:=0;
  krat_5_mas_a:=crat_5(mas_a,n);
  
  var krat_5_mas_b:=0;
  krat_5_mas_b:=crat_5(mas_b,n);
  var max_mas_a:=1;
  max_mas_a:= max_el(mas_a, n);
  var max_mas_b:=1;
  max_mas_ab:= max_el(mas_b, n);
  var min_mas_a:= 1;
  min_mas_a:=min_el(mas_a, n);
  var min_mas_b:= 1;
  min_mas_b:=min_el(mas_b, n);
  
  if krat_5_mas_a > krat_5_mas_b then begin
    mas_b[max_mas_b]:= 0;
    umnozh_2(mas_a, n, min_mas_a);
    end
    else begin
    mas_a[max_mas_a]:= 0;
    umnozh_2(mas_b, n, min_mas_b);
  end;
write(mas_a);
write(mas_b);
end.