unit Options;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mhint, registry, XPMan;

type
  TForm4 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    ComboBox1: TComboBox;
    CheckBox1: TCheckBox;
    Button3: TButton;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;
  reg:tregistry;
  integrated:integer;

implementation

uses Config;

{$R *.dfm}


procedure TForm4.Button1Click(Sender: TObject);
var b:array[1..5]of boolean;
begin
reg:=tregistry.Create;
reg.RootKey:=HKEY_CLASSES_ROOT;
b[1]:=reg.OpenKey('\Drive\Shell',true);
reg.WriteString('','open');
reg.CloseKey;
b[2]:=reg.CreateKey('\Drive\shell\ML2config');
b[3]:=reg.openkey('\Drive\shell\ML2config',false);
reg.WriteString('','Настройка диска ML2');
reg.CloseKey;
b[4]:=reg.createkey('\Drive\shell\ML2config\command');
b[5]:=reg.openkey('\Drive\shell\ML2config\command',false);
reg.WriteString('','"'+application.ExeName+'"');
reg.closekey;
if b[1]and b[2]and b[3]and b[4]and b[5] then
  begin
    showmessage('Программа успешно интегрирована в систему.');
    integrated:=1;
  end
  else
    begin
      showmessage('Интеграция в систему не удалась.');
      integrated:=2;
    end;
  if integrated=1 then
    begin
      form4.Label3.Caption:='Интеграция обнаружена';
      form4.Button1.Enabled:=false;
      form4.Button2.Enabled:=true;
    end;
  if integrated=2 then
    begin
      form4.Label3.caption:='Интеграция повреждена';
      form4.Button1.Enabled:=true;
      form4.Button2.Enabled:=true;
    end;
end;

procedure TForm4.Button2Click(Sender: TObject);
begin
reg:=tregistry.Create;
reg.rootkey:=HKEY_CLASSES_ROOT;
if reg.DeleteKey('\Drive\Shell\ML2Config') then
  begin
    showmessage('Интеграция программы в систему успешно отключена.');
    integrated:=0;
  end
  else
    begin
      showmessage('Не удалось отключить интеграцию в систему.');
      integrated:=2;
    end;
  if integrated=0 then
    begin
      form4.Label3.Caption:='Интеграция не обнаружена';
      form4.Button1.Enabled:=true;
      form4.button2.Enabled:=false;
    end;
  if integrated=1 then
    begin
      form4.Label3.Caption:='Интеграция обнаружена';
      form4.Button1.Enabled:=false;
      form4.Button2.Enabled:=true;
    end;
  if integrated=2 then
    begin
      form4.Label3.caption:='Интеграция повреждена';
      form4.Button1.Enabled:=true;
      form4.Button2.Enabled:=true;
    end;

end;

procedure TForm4.FormCreate(Sender: TObject);
begin
form1.postinitf4;
Edit1.text:=form1.readin;
  if form1.integrated=0 then
    begin
      form4.Label3.Caption:='Интеграция не обнаружена';
      form4.Button1.Enabled:=true;
      form4.button2.Enabled:=false;
    end;
  if form1.integrated=1 then
    begin
      form4.Label3.Caption:='Интеграция обнаружена';
      form4.Button1.Enabled:=false;
      form4.Button2.Enabled:=true;
    end;
  if form1.integrated=2 then
    begin
      form4.Label3.caption:='Интеграция повреждена';
      form4.Button1.Enabled:=true;
      form4.Button2.Enabled:=true;
    end;
end;

procedure TForm4.CheckBox1Click(Sender: TObject);
begin
form1.fastconfigapply:=checkbox1.Checked;
end;

procedure TForm4.Button3Click(Sender: TObject);
begin
  reg:=tregistry.create;
  reg.rootkey:=HKEY_CURRENT_USER;
  reg.OpenKey('\SOFTWARE\ML2\DiskConfig\',true);
  reg.WriteString('ReadDrives',Edit1.text);
  reg.WriteInteger('ActivePage',ComboBox1.ItemIndex);
if checkbox1.Checked then reg.WriteString('FastConfigApply','Yes')
  else reg.WriteString('FastConfigApply','No');
  if form1.readin<>edit1.Text then showmessage('Для изменения списка настраиваемых дисков потребуется перезагрузка программы.');
   close ;
end;

procedure TForm4.Button4Click(Sender: TObject);
begin
reg:=tregistry.Create;
edit1.Text:=form1.readin;
if reg.ValueExists('ActivePage') then
combobox1.ItemIndex:=reg.ReadInteger('ActivePage')
else combobox1.ItemIndex:=1;
checkbox1.Checked:=form1.fastconfigapply;
close;
end;

procedure TForm4.FormClose(Sender: TObject; var Action: TCloseAction);
begin
button4click(sender);
end;

end.
