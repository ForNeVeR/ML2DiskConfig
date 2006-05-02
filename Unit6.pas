unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  Tdelform = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  delform: Tdelform;

implementation

uses Config;

{$R *.dfm}

procedure Tdelform.BitBtn1Click(Sender: TObject);
begin
deletefile(label2.Caption);
delform.Hide;
with form1 do begin
form1.combobox1.itemindex:=-1;
form1.Caption:='Настройка диска ML2';
form1.button1click(sender);
  ico:='';
  autorun:='';
  disk:='';
  label1.Caption:='';
  label2.Caption:='';
  memo1.lines.Clear;
  memo2.Lines.Clear;
  edit1.text:='';
        memo1.Enabled:=false;
        memo2.Enabled:=false;
      button2.Enabled:=false;
      button3.Enabled:=false;
      button4.Enabled:=false;
      button5.Enabled:=false;
      button6.Enabled:=false;
      button10.Enabled:=false;
      button11.Enabled:=false;
      button13.Enabled:=false;
      edit1.enabled:=false;
  if fileexists(form1.instpath+'Data\NoIcon.ico') then form1.image1.Picture.LoadFromFile(form1.instpath+'Data\NoIcon.ico');
  end;
end;

procedure Tdelform.BitBtn2Click(Sender: TObject);
begin
delform.Hide;
end;

end.
