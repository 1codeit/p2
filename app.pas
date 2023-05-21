program Login;

uses
  SysUtils, Crt;

var
  attempts: Integer;
  username, password: string;

begin
  attempts := 0;

  while attempts < 3 do
  begin
    Write('Username: ');
    ReadLn(username);

    Write('Password: ');
    password := '';
    ReadLn(password);

    if (username = 'admin') and (password = 'secret') then
    begin
      WriteLn('Access granted');
      Exit;
    end
    else
    begin
      WriteLn('Access denied. Try again.');
      Inc(attempts);
    end;
  end;

  if attempts >= 3 then
    WriteLn('Maximum number of attempts reached.');
end.
