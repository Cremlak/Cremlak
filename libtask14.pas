unit libtask14;

function IsLeapYear(year:integer):boolean;
begin
  if (year mod 4 = 0) and (year mod 100 <> 0) or (year mod 400 = 0) then result := true;
end;

function LaterInYear(day1, day2, mouth1, mouth2:integer):boolean;
begin
  result := false;
  if (mouth1 > mouth2) or ((mouth1 = mouth2) and (day1 > day2)) then result := true;
end;

function DaysInYear(year: integer):integer;
begin
  if IsLeapYear(year) then result := 366
  else result := 365;
end;

function DaysInYearRange(year1, year2: integer):integer;
begin
  for var i := year1 to year2 do
  begin
    result += DaysInYear(i);
  end;
end;

begin
end.