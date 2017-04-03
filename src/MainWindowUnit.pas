unit MainWindowUnit;
{$resource MainWindowUnit.Logo.png}
{$resource MainWindowUnit.MainWindow.xaml}

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
