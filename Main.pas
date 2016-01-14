Unit Main;

interface

uses System, System.Drawing, System.Windows.Forms;

type
  MainForm = class(Form)
  {$region FormDesigner}
  private
    {$resource Main.MainForm.resources}
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
