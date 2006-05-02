unit AutoRunCreate;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TCreateAutoRun = class(TForm)
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
  CreateAutoRun: TCreateAutoRun;

implementation

uses Config;

{$R *.dfm}

procedure TCreateAutoRun.BitBtn1Click(Sender: TObject);
var f:file;
begin
assignfile(f,label2.Caption);
rewrite(f);
closefile(f);
close;
form1.autorunhere:=true;
form1.Button1Click(sender);
end;

procedure TCreateAutoRun.BitBtn2Click(Sender: TObject);
begin
close;
form1.autorunhere:=false;
form1.Button1Click(sender);
//form1.disk:=form1.olddisk;
end;

end.
