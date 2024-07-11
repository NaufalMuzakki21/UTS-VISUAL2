unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, Grids, DBGrids, StdCtrls;

type
  TForm1 = class(TForm)
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    DBGrid1: TDBGrid;
    ZConnection1: TZConnection;
    ZQuery1: TZQuery;
    DataSource1: TDataSource;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  a: string;


implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
zquery1.SQL.Clear;
zquery1.SQL.Add('INSERT INTO satuan (nama, diskripsi) VALUES (:nama, :diskripsi)');
zquery1.ParamByName('nama').AsString := Edit1.Text;
zquery1.ParamByName('diskripsi').AsString := Edit2.Text;
zquery1.ExecSQL;

zquery1.SQL.Clear;
zquery1.SQL.Add('select * from satuan');
zquery1.Open;
ShowMessage('Data satuan berhasil ditambahkan!');
zquery1.Refresh;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('update satuan set nama="'+Edit1.Text+'" ,diskripsi="'+Edit2.Text+'" where id="'+a+'"');
ZQuery1.ExecSQL;

zquery1.SQL.Clear;
zquery1.SQL.Add('select * from satuan');
zquery1.Open;
ShowMessage('Data satuan berhasil diperbarui!');
zquery1.Refresh;


end;

procedure TForm1.DBGrid1CellClick(Column: TColumn);
begin
Edit1.Text:= ZQuery1.Fields[1].AsString;
Edit2.Text:= ZQuery1.Fields[2].AsString;
a:= ZQuery1.Fields[0].AsString;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
Edit1.Clear;
Edit2.Clear;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
zquery1.SQL.Clear;
zquery1.SQL.Add('DELETE from satuan where id="'+a+'"');
zquery1.ExecSQL;
Edit1.Clear;
Edit2.Clear;
zquery1.SQL.Clear;
zquery1.SQL.Add('select * from satuan');
zquery1.Open;
ShowMessage('Data satuan berhasil dihapus!');
zquery1.Refresh;
end;

end.
