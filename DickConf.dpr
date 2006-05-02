program DickConf;

uses
  Forms,
  Config in 'Config.pas' {Form1},
  Unit3 in 'Unit3.pas' {Form3},
  Options in 'Options.pas' {Form4},
  Unit5 in 'Unit5.pas' {Form5},
  Unit6 in 'Unit6.pas' {delform},
  AutoRunCreate in 'AutoRunCreate.pas' {CreateAutoRun},
  Unit2 in 'Unit2.pas' {Form2},
  Unit7 in 'Unit7.pas' {Form7},
  registry,
  dialogs,
  windows,
  Unit8 in 'Unit8.pas' {Form8};

{$R *.res}
var reg:tregistry;b:array[1..5]of boolean;

begin
  Application.Initialize;
  Application.Title := 'Настройка диска ML2';
  if paramstr(1)='/i' then begin
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

    showmessage('Программа успешно интегрирована в систему.')
    else showmessage('Интеграция в систему не удалась');
    application.Terminate;
    end;

  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(Tdelform, delform);
  Application.CreateForm(TCreateAutoRun, CreateAutoRun);
  Application.CreateForm(TForm8, Form8);
  Application.Run;
end.
