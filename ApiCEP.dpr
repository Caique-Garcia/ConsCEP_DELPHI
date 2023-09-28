program ApiCEP;

uses
  Vcl.Forms,
  formPrincipal in 'formPrincipal.pas' {Form1},
  uFormat in 'uFormat.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
