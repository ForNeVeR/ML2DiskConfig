{$reference ../libs/Avalonia.Controls.dll}
{$reference ../libs/Avalonia.Direct2D1.dll}
{$reference ../libs/Avalonia.Markup.Xaml.dll}
{$reference ../libs/Avalonia.Win32.dll}

{$resource Program.App.xaml}

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
    var config := AppBuilder.Configure&<App>;
    config.UseWin32;
    config.UseDirect2D1;
    config.Start&<MainWindow>;
end.
