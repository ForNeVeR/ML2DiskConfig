unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, XPMan;

type
  TForm3 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Button1: TButton;
    OpenDialog1: TOpenDialog;
    Button2: TButton;
    Edit3: TEdit;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses Config;

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
begin
if opendialog1.Execute then
  edit2.Text:=opendialog1.FileName;
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
form1.memo2.lines.add('Shell\'+edit1.Text+'='+edit3.Text);
form1.Memo2.Lines.Add('Shell\'+edit1.Text+'\Command='+edit2.Text)
end;

end.
