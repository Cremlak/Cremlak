unit libtask14;

function IsLeapYear:boolean;
begin
  var year := DateTime.Now.Year;
  if (year mod 4 = 0) and (year mod 100 <> 0) or (year mod 400 = 0) then result := true;
end;

function LaterInYear(day1, day2, mouth1, mouth2:integer):
begin
  result := false;
  if (mouth1 > mouth2) or ((mouth1 = mouth2) and (day1 > day2)) then result := true;
end;

begin
end.