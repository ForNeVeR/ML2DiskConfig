unit Config;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, X2000label, ExtCtrls, ComCtrls, XPMan, FileCtrl,
  x2000diskInfo,registry, shellapi;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    Button1: TButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    GroupBox2: TGroupBox;
    Memo1: TMemo;
    Button3: TButton;
    Label2000X1: TLabel2000X;
    Label2000X2: TLabel2000X;
    Button5: TButton;
    OpenDialog1: TOpenDialog;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    XPManifest1: TXPManifest;
    Label3: TLabel;
    Button12: TButton;
    autodialog: TOpenDialog;
    TabSheet2: TTabSheet;
    GroupBox3: TGroupBox;
    Image1: TImage;
    Bevel1: TBevel;
    Label2: TLabel;
    Label4: TLabel;
    Button2: TButton;
    GroupBox4: TGroupBox;
    Label1: TLabel;
    Button4: TButton;
    GroupBox5: TGroupBox;
    Memo2: TMemo;
    Button10: TButton;
    Button6: TButton;
    Button11: TButton;
    DiskInfo2000X1: TDiskInfo2000X;
    ComboBox1: TComboBox;
    TabSheet3: TTabSheet;
    Label5: TLabel;
    Edit1: TEdit;
    Button13: TButton;
    Label6: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure seticon(icon:string);
    procedure FormCreate(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure postinitf4;



  private
    { Private declarations }


  public
    { Public declarations }
     disk,olddisk:string[1];
     readin:string;
     instpath:string;
     integrated:integer;
     autorunhere:boolean;
     fastconfigapply:boolean;
  end;

var
  Form1: TForm1;
  f:file;
  ico,autorun:string;
  i:integer;
  ic,a:boolean;
  reg:tregistry;
  temp,labl:string;


implementation

uses Unit3, Options, Unit5, Unit6, AutoRunCreate, Unit2, Unit7, Unit8;

{$R *.dfm}


procedure TForm1.Button1Click(Sender: TObject);
var selectedindex:integer;
begin
if combobox1.ItemIndex<>-1 then
begin
selectedindex:=pagecontrol1.TabIndex;
ico:='';
autorun:='';
image1.Transparent:=true;
  begin
    i:=combobox1.ItemIndex;
//    olddisk:=disk;
    disk:=combobox1.Items.Strings[i];
//label
diskinfo2000x1.SetDrive(disk);
labl:=diskinfo2000x1.VolumeName;
edit1.Text:=labl;
//endlabel
    if not(fileexists(disk+':\autorun.inf'))and autorunhere then
      begin
        autorunhere:=false;
        Createautorun.label2.Caption:=disk+':\autorun.inf';
        createautorun.Show;
        exit;
      end;
      if fileexists(disk+':\autorun.inf') then autorunhere:=true;

      form1.Caption:='Настройка диска ML2 - диск '+Disk;
  if autorunhere then begin
      memo1.Lines.LoadFromFile(disk+':\autorun.inf');
      memo1.Enabled:=true;
      memo2.Enabled:=true;
      button2.Enabled:=true;
      button3.Enabled:=true;
      button4.Enabled:=true;
      button5.Enabled:=true;
      button6.Enabled:=true;
      button10.Enabled:=true;
      button11.Enabled:=true;
      button13.Enabled:=true;
      edit1.Enabled:=true;
//-----------------------------------------------------------
      for i:=0 to memo1.Lines.Count do
        if pos('ICON=',ansiuppercase(memo1.Lines[i]))=1
          then
            if pos(':\',ansiuppercase(memo1.Lines[i]))=0 then
              begin
                ico:=disk+':\'+copy(memo1.Lines[i],6,length(memo1.Lines[i])-5);
                ic:=true;
                image1.Show;
              end
            else
              begin
                ico:=copy(memo1.Lines[i],6,length(memo1.Lines[i])-5);
                ic:=true;
                image1.Show;
              end;
      if ic=true then
        begin
          for i:=1 to length(ico) do
            if ico[i]='"' then delete(ico,i,1);
          if fileexists(ico)then
            image1.Picture.LoadFromFile(ico)
            else if ico<>'' then showmessage('Не могу найти файл значка '+ico);
         label2.Caption:=ico;
        end;
//-----------------------------------------------------------
      for i:=1 to memo1.Lines.Count do
        if pos('OPEN=',ansiuppercase(memo1.Lines[i-1]))=1
          then
            if pos(':\',ansiuppercase(memo1.Lines[i]))=0 then
              begin
                autorun:=disk+':\'+copy(memo1.Lines[i],6,length(memo1.Lines[i])-5);
                a:=true;
              end
            else
            begin
              autorun:=copy(memo1.Lines[i],6,length(memo1.Lines[i])-5);
              a:=true;
            end;
      if a=true then
        begin
          for i:=1 to length(autorun) do
            if autorun[i]='"' then delete(autorun,i,1);
          if fileexists(autorun) then
            else showmessage('Не могу найти файл программы автозапуска '+autorun+'.');
          label1.Caption:=autorun;
        end;
    end;
    memo2.Lines.Clear;
    for i:=0 to memo1.lines.count do
      if pos('Shell\',memo1.Lines[i])=1 then
        memo2.Lines.Add(memo1.Lines[i]);
  if (ico='')and fileexists(instpath+'Data\NoIcon.ico') then image1.Picture.LoadFromFile(instpath+'Data\NoIcon.ico');
end;end
else
begin
  ico:='';
  autorun:='';
  disk:='';
  label1.Caption:='';
  label2.Caption:='';
  memo1.lines.Clear;
  memo2.Lines.Clear;
  if fileexists(instpath+'Data\NoIcon.ico') then image1.Picture.LoadFromFile(instpath+'Data\NoIcon.ico');
end;
if not autorunhere then
 begin
   ico:='';
  autorun:='';
//  disk:='';
  label1.Caption:='';
  label2.Caption:='';
  memo2.lines.clear;
  if fileexists(instpath+'Data\NoIcon.ico') then image1.Picture.LoadFromFile(instpath+'Data\NoIcon.ico');
      memo1.Enabled:=false;
      memo1.Lines.Clear;
      memo2.Enabled:=false;
      button2.Enabled:=false;
      button3.Enabled:=false;
      button4.Enabled:=false;
      button5.Enabled:=false;
      button6.Enabled:=false;
      button10.Enabled:=false;
      button11.Enabled:=false;
      button13.Enabled:=true;
      edit1.enabled:=true;
      selectedindex:=2;
      form1.Caption:=form1.Caption+' (ограниченная функциональность)';
end;
pagecontrol1.Tabindex:=selectedindex;
autorunhere:=true;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  if disk<>'' then
    begin
      if not(fileexists(disk+':\autorun.inf')) then
        begin
          olddisk:=disk;
          createautorun.Label2.Caption:=disk+':\autorun.inf';
          createautorun.Show;
        end;
        memo1.Lines.LoadFromFile(disk+':\autorun.inf');
    end;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
if disk<>'' then
  memo1.Lines.SaveToFile(disk+':\autorun.inf');
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
if disk<>'' then
  begin
  opendialog1.InitialDir:=disk+':\';
    if opendialog1.Execute then
begin
    ico:=opendialog1.FileName;
    if fileexists(ico) then
    begin
    if copy(ansiuppercase(ico),length(ico)-2,3)='ICO' then
      image1.Picture.LoadFromFile(ico);
    if (copy(ansiuppercase(ico),length(ico)-2,3)='EXE')
       or (copy(ansiuppercase(ico),length(ico)-2,3)='DLL') then
       begin
        form5.grab1.FileName:=ico;
        form5.grab2.FileName:=ico;
        form5.grab3.FileName:=ico;
        form5.grab4.FileName:=ico;
        form5.grab5.FileName:=ico;
        form5.grab1.IconIndex:=0;
        form5.grab2.IconIndex:=1;
        form5.grab3.IconIndex:=2;
        form5.grab4.IconIndex:=3;
        form5.grab5.IconIndex:=4;
        form5.indexoficon.caption:='2';
        form5.show;
       end;
       end
      else showmessage('Не могу найти файл значка '+ico);
end;
      if pos(disk+':\',ico)=1
        then
          ico:=ico
        else if ico<>'' then
          begin
            ico:=disk+':\icon.ico';
            image1.Picture.SaveToFile(disk+':\icon.ico');
          end;
    if copy(ansiuppercase(ico),length(ico)-2,3)='ICO' then
      label2.Caption:=ico;
  end;

end;

procedure TForm1.Button8Click(Sender: TObject);
begin
form2.show;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
if disk<>'' then
  begin
  autodialog.InitialDir:=disk+':\';
    if autodialog.Execute then
      autorun:=autodialog.FileName;
   label1.Caption:=autorun;
  end;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
if fileexists(instpath+'Help\Help.chm') then
shellapi.ShellExecute(application.Handle,'open',pchar(instpath+'Help\Help.chm'),'','',wm_create)
else showmessage('Файл справки не найден! Рекомендуется переустановить программу.');
end;

procedure TForm1.Button10Click(Sender: TObject);
begin
if disk<>''
  then
    form3.show;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
      memo1.Clear;
      memo1.Lines.Add('[autorun]');
      if ico<>''
        then
          if pos(disk+':\',ico)<>1
            then
              memo1.Lines.Add('ICON='+'"'+ico+'"')
            else
              memo1.Lines.Add('ICON='+'"'+copy(ico,4,length(ico)-3)+'"');
      if autorun<>''
        then
          if autorun[1]<>disk
            then
              memo1.Lines.add('OPEN='+'"'+autorun+'"')
            else
              memo1.Lines.add('OPEN='+'"'+copy(autorun,4,length(autorun)-3)+'"');
      for i:=0 to memo2.Lines.Count do
        memo1.Lines.Add(memo2.Lines[i]);
  if fastconfigapply then
    begin
    button5click(sender);
    showmessage('Параметры применены.');
    end
    else pagecontrol1.SelectNextPage(false);

end;

procedure TForm1.Button9Click(Sender: TObject);
begin

  application.Terminate;
end;

procedure TForm1.Button11Click(Sender: TObject);
begin
if disk<>''
  then
    begin
      delform.label2.Caption:=disk+':\autorun.inf';
      delform.show;
    end;
end;



procedure TForm1.Button12Click(Sender: TObject);
begin
form4.show;
end;

procedure tform1.seticon(icon:string);
begin;
ico:=disk+':\'+icon;
image1.Picture.Icon.LoadFromFile(ico);
label2.Caption:=ico;
end;

procedure tform1.postinitf4;
begin
  reg:=tregistry.Create;
  reg.rootkey:=HKEY_CURRENT_USER;
  reg.OpenKey('SOFTWARE\ML2\DiskConfig\',false);
  if reg.ValueExists('ActivePage') then
    form4.combobox1.ItemIndex:=reg.ReadInteger('ActivePage');
  form1.PageControl1.TabIndex:=form4.ComboBox1.ItemIndex;
  form4.CheckBox1.Checked:=fastconfigapply;
end;

procedure TForm1.FormCreate(Sender: TObject);
var first:string;
begin
  autorunhere:=true;
  instpath:=extractfilepath(application.ExeName);
  first:='Yes';
  reg:=tregistry.Create;
  reg.rootkey:=HKEY_CURRENT_USER;
  reg.OpenKey('SOFTWARE\ML2\DiskConfig\',false);
  readin:=reg.ReadString('ReadDrives');
  if reg.ValueExists('FirstRun') then
    first:=reg.ReadString('FirstRun');
  fastconfigapply:=false;
  if reg.ValueExists('FastConfigApply') then
    if reg.ReadString('FastConfigApply')='Yes' then
       fastconfigapply:=true;


//  reg.Free;
  if first='Yes'
    then
      begin
        Application.CreateForm(TForm7, Form7);
        form7.show;
        form7.edit1.text:=readin;
      end
    else
      for i:=1 to length(readin) do
        begin
          diskinfo2000x1.SetDrive(readin[i]);
          if (diskinfo2000x1.DriveType='Fixed')
             then
              combobox1.Items.Add(readin[i]);
        end;
//Проверка интеграции
  reg:=tregistry.Create;
  reg.rootkey:=hkey_classes_root;
  integrated:=-1;
  if reg.OpenKey('\Drive\shell\ML2config',false)=false then
   integrated:=0;
  if integrated=-1 then
    if reg.OpenKey('\Drive\shell\ML2config\command\',false)=false then
      integrated:=0;
  if integrated=-1 then
    if reg.ReadString('')<>'"'+application.ExeName+'"' then
      integrated:=2
      else
        integrated:=1;
end;

procedure TForm1.Button13Click(Sender: TObject);
//var tmp:textfile;a:pansichar;
begin
//---->label<-----
form8.label2.Caption:='Применение метки '+edit1.Text+' для диска '+disk+'...';
form8.show;
application.processmessages;
{assignfile(tmp,getenvironmentvariable('temp')+'\ml2config.tmp');
rewrite(tmp);
write(tmp,edit1.text);
closefile(tmp);}
shellapi.ShellExecute(application.Handle,'open','label',pchar(disk+': '+edit1.text),'',0);
form8.Hide;
end;

end.
