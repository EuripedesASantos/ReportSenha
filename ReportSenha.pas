unit ReportSenha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls, DB, DBTables;

type
  TForm2 = class(TForm)
    QuickRep1: TQuickRep;
    Table1: TTable;
    DetailBand1: TQRBand;
    ColumnHeaderBand1: TQRBand;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRLabelRecNo: TQRLabel;
    QRSysData1: TQRSysData;
    procedure QRLabel3Print(sender: TObject; var Value: String);
    procedure QRLabelRecNoPrint(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses
    SUMUS_Function;

procedure TForm2.QRLabel3Print(sender: TObject; var Value: String);
begin
    Value := SUMUS_Function.DeCrypto( Table1.FieldList.Fields[1].AsString);
end;

procedure TForm2.QRLabelRecNoPrint(sender: TObject; var Value: String);
begin
    Value := IntToStr( Table1.RecNo);

    if (Table1.RecNo Mod 2) = 0 then
            Form2.QRShape2.Brush.Color := clBlack
        else
            Form2.QRShape2.Brush.Color := clWhite;
end;

end.
