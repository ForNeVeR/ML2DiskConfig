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

function BuildAvaloniaApp(): AppBuilder;
begin;
    var appBuilder := AppBuilder.Configure&<App>();
    Result :=
        Win32ApplicationExtensions.UseWin32(appBuilder)
            .UseDirect2D1();
end;

begin
    BuildAvaloniaApp().Start&<MainWindow>();
end.
