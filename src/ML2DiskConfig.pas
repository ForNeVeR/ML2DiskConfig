{$resource ML2DiskConfig.App.xaml}

uses
    References_Generated,

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
