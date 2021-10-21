unit libtask14;

function IsLeapYear:boolean;
begin
  var year := DateTime.Now.Year;
  if (year mod 4 = 0) and (year mod 100 <> 0) or (year mod 400 = 0) then result := true;
end;

begin
end.