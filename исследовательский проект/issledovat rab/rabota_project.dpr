program rabota_project;

uses
  Forms,
  rabota_1 in 'rabota_1.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
