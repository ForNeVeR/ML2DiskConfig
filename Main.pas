Unit Main;

interface

uses System, System.Drawing, System.Windows.Forms;

type
  MainForm = class(Form)
  {$region FormDesigner}
  private
    {$resource Main.MainForm.resources}
    pictureBox1: PictureBox;
    diskGroupBox: GroupBox;
    selectDiskButton: Button;
    diskComboBox: ComboBox;
    exitButton: Button;
    {$include Main.MainForm.inc}
  {$endregion FormDesigner}
  public
    constructor;
    begin
      InitializeComponent;
    end;
  end;

implementation

end.
