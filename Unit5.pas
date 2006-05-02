unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, X2000IconGrabber, ExtCtrls;

type
  TForm5 = class(TForm)
    grab1: TIconGrabber2000X;
    grab2: TIconGrabber2000X;
    grab3: TIconGrabber2000X;
    grab4: TIconGrabber2000X;
    grab5: TIconGrabber2000X;
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    Button3: TButton;
    indexoficon: TLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Label2: TLabel;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

uses Config;

{$R *.dfm}

procedure TForm5.Button1Click(Sender: TObject);
begin
grab1.IconIndex:=grab1.IconIndex+1;
grab2.IconIndex:=grab2.IconIndex+1;
grab3.IconIndex:=grab3.IconIndex+1;
grab4.IconIndex:=grab4.IconIndex+1;
grab5.IconIndex:=grab5.IconIndex+1;
indexoficon.Caption:=inttostr(grab3.IconIndex);
end;

procedure TForm5.Button2Click(Sender: TObject);
begin
grab1.IconIndex:=grab1.IconIndex-1;
grab2.IconIndex:=grab2.IconIndex-1;
grab3.IconIndex:=grab3.IconIndex-1;
grab4.IconIndex:=grab4.IconIndex-1;
grab5.IconIndex:=grab5.IconIndex-1;
indexoficon.Caption:=inttostr(grab3.IconIndex);
end;

procedure TForm5.Button3Click(Sender: TObject);
begin 
grab3.icon.SaveToFile(form1.disk+':\icon.ico');
form1.seticon('icon.ico');
form5.Hide;
end;

procedure TForm5.Button4Click(Sender: TObject);
begin
close;
end;

procedure TForm5.FormCreate(Sender: TObject);
begin
  indexoficon.Caption:=inttostr(grab3.IconIndex);
end;

end.
