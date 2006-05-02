unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, registry;

type
  TForm7 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;
  reg:tregistry;
implementation

uses Config, Options;

{$R *.dfm}

procedure TForm7.Button1Click(Sender: TObject);
begin
application.Terminate;
end;

procedure TForm7.BitBtn1Click(Sender: TObject);
var i:integer;
begin
form1.readin:=edit1.text;
form1.show;
reg:=tregistry.create;
reg.rootkey:=HKEY_CURRENT_USER;
reg.OpenKey('SOFTWARE\ML2\DiskConfig\',false);
reg.WriteString('FirstRun','No');
reg.CloseKey;
for i:=1 to length(form1.readin) do
  begin
    form1.diskinfo2000x1.SetDrive(form1.readin[i]);
    if (form1.diskinfo2000x1.DriveType='Fixed')
      then
        form1.combobox1.Items.Add(form1.readin[i]);
      end;
form4.edit1.Text:=form1.readin;
end;

procedure TForm7.BitBtn2Click(Sender: TObject);
begin
application.Terminate;
end;

end.
