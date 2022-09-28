{$reference ../libs/Avalonia.Animation.dll}
{$reference ../libs/Avalonia.Base.dll}
{$reference ../libs/Avalonia.Controls.dll}
{$reference ../libs/Avalonia.Direct2D1.dll}
{$reference ../libs/Avalonia.Input.dll}
{$reference ../libs/Avalonia.Interactivity.dll}
{$reference ../libs/Avalonia.Layout.dll}
{$reference ../libs/Avalonia.Markup.Xaml.dll}
{$reference ../libs/Avalonia.SceneGraph.dll}
{$reference ../libs/Avalonia.Styling.dll}
{$reference ../libs/Avalonia.Win32.dll}
{$reference ../libs/SharpDX.dll}
{$reference ../libs/SharpDX.Direct2D1.dll}
{$reference ../libs/SharpDX.DXGI.dll}
{$reference ../libs/System.Reactive.Core.dll}
{$reference ../libs/System.Reactive.Interfaces.dll}

{$resource ML2DiskConfig.App.xaml}

uses
    Avalonia,
    Avalonia.Controls,
    Avalonia.Markup.Xaml,

    MainWindowUnit;

type
    App = class(Application)
    public
        procedure Initialize; override;
        begin;
            AvaloniaXamlLoader.Load(Self);
        end;
    end;
begin
    var appBuilder := AppBuilder.Configure&<App>();
    Win32ApplicationExtensions.UseWin32(appBuilder)
        .UseDirect2D1()
        .Start&<MainWindow>();
end.
