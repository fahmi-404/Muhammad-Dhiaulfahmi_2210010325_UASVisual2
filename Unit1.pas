unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids;

type
  TForm1 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    lbl6: TLabel;
    cbb1: TComboBox;
    lbl7: TLabel;
    dbgrd1: TDBGrid;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    lbl8: TLabel;
    edt6: TEdit;
    btn6: TButton;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure cbb1Change(Sender: TObject);
    procedure bersih;
    procedure FormCreate(Sender: TObject);
    procedure btn6Click(Sender: TObject);
  private
    { Private declarations }
    procedure UpdateDiskon;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  a: string;

implementation

uses
  Unit2;

{$R *.dfm}

procedure TForm1.UpdateDiskon;
var
  Diskon: Double;
begin
  if cbb1.ItemIndex = -1 then
    Diskon := 0
  else if cbb1.Text = 'No' then
    Diskon := 5
  else
    Diskon := 10;
  lbl7.Caption := 'Diskon: ' + FloatToStr(Diskon) + '%';
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
  bersih;
  btn1.Enabled := False;
  btn2.Enabled := True;
  btn3.Enabled := False;
  btn4.Enabled := False;
  btn5.Enabled := True;
  edt1.Enabled := True;
  edt2.Enabled := True;
  edt3.Enabled := True;
  edt4.Enabled := True;
  edt5.Enabled := True;
  cbb1.Enabled := True;
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
  try
    DataModule2.zkostumer.SQL.Clear;
    DataModule2.zkostumer.SQL.Add('insert into kostumer (Nik, Nama, Telp, Email, Alamat, Member) values ("' +
    edt1.Text + '", "' + edt2.Text + '", "' + edt3.Text + '", "' + edt4.Text + '", "' + edt5.Text + '", "' + cbb1.Text + '")');
    DataModule2.zkostumer.ExecSQL;

    DataModule2.zkostumer.SQL.Clear;
    DataModule2.zkostumer.SQL.Add('select * from kostumer');
    DataModule2.zkostumer.Open;
    ShowMessage('Data Berhasil Disimpan');
  except
    on E: Exception do
      ShowMessage('Error saving data: ' + E.Message);
  end;
end;

procedure TForm1.btn3Click(Sender: TObject);
begin
  DataModule2.zkostumer.SQL.Clear;
  DataModule2.zkostumer.SQL.Add('select * from kostumer where Nik like "%' + edt1.Text + '%" or ' +
    'Nama like "%' + edt2.Text + '%" or Telp like "%' + edt3.Text + '%" or Email like "%' + edt4.Text + '%" or ' +
    'Alamat like "%' + edt5.Text + '%" or Member like "%' + cbb1.Text + '%"');
  DataModule2.zkostumer.Open;
  ShowMessage('Data Berhasil Di Update');
end;

procedure TForm1.btn4Click(Sender: TObject);
begin
  if a = '' then
  begin
    ShowMessage('No record selected.');
    Exit;
  end;

  try
    DataModule2.zkostumer.SQL.Clear;
    DataModule2.zkostumer.SQL.Add('delete from kostumer where id= "' + a + '"');
    DataModule2.zkostumer.ExecSQL;

    DataModule2.zkostumer.SQL.Clear;
    DataModule2.zkostumer.SQL.Add('select * from kostumer');
    DataModule2.zkostumer.Open;
    ShowMessage('Data Berhasil dihapus!');
  except
    on E: Exception do
      ShowMessage('Error deleting data: ' + E.Message);
  end;
end;

procedure TForm1.btn5Click(Sender: TObject);
begin
  bersih;
  btn1.Enabled := True;
  btn2.Enabled := False;
  btn3.Enabled := False;
  btn4.Enabled := False;
  btn5.Enabled := False;
end;

procedure TForm1.dbgrd1CellClick(Column: TColumn);
begin
  edt1.Text := DataModule2.zkostumer.Fields[1].AsString;
  edt2.Text := DataModule2.zkostumer.Fields[2].AsString;
  edt3.Text := DataModule2.zkostumer.Fields[3].AsString;
  edt4.Text := DataModule2.zkostumer.Fields[4].AsString;
  edt5.Text := DataModule2.zkostumer.Fields[5].AsString;
  cbb1.Text := DataModule2.zkostumer.Fields[6].AsString;
  a := DataModule2.zkostumer.Fields[0].AsString;

  // Mengaktifkan Button
  btn1.Enabled := False;
  btn2.Enabled := False;
  btn3.Enabled := True;
  btn4.Enabled := True;
  btn5.Enabled := True;
end;

procedure TForm1.cbb1Change(Sender: TObject);
begin
  UpdateDiskon;
end;

procedure TForm1.bersih;
begin
  edt1.Clear;
  edt2.Clear;
  edt3.Clear;
  edt4.Clear;
  edt5.Clear;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  btn1.Enabled := True;
  btn2.Enabled := False;
  btn3.Enabled := False;
  btn4.Enabled := False;
  btn5.Enabled := False;
  edt1.Enabled := False;
  edt2.Enabled := False;
  edt3.Enabled := False;
  edt4.Enabled := False;
  edt5.Enabled := False;
  cbb1.Enabled := False;
end;

procedure TForm1.btn6Click(Sender: TObject);
begin
DataModule2.frxrprt1.ShowReport();
end;

end.

