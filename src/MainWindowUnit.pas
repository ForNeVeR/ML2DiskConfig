unit MainWindowUnit;

uses
    Avalonia.Controls,
    Avalonia.Markup.Xaml;

type
    MainWindow = class(Window)
    public
        constructor;
        begin;
            AvaloniaXamlLoader.Load(Self);
        end;
    end;
end.
