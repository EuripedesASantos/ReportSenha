program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  ReportSenha in 'ReportSenha.pas' {Form2},
  SUMUS_Function in '..\..\Componentes\SUMUS_Function.pas',
  VB in '..\..\..\Delphi 2000\Componentes\VB.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
