unit MainWindowUnit;
{$resource MainWindowUnit.Logo.png}
{$resource MainWindowUnit.MainWindow.xaml}

uses
    Avalonia.Controls,
    Avalonia.Markup.Xaml,

    MainViewModelUnit;

type
    MainWindow = class(Window)
    public
        constructor;
        begin;
            AvaloniaXamlLoader.Load(Self);
            Self.DataContext := new MainViewModel;
        end;
    end;
end.
