Changelog
=========

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/), and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

For older releases (2006 and before), the release dates were restored using inaccurate archive data, so may be imprecise.

Sources of the old releases (before 1.6.3) are unavailable (though some editing history is known).

## [1.6.3] - between 2005-09-13 and 2006-05-02
### Added
- **OK** and **Cancel** buttons in the settings window

## 1.6.2.1 - between 2005-09-13 and 2006-05-02
### Changed
- Tab stop order for controls in the settings window

## 1.6.2 - between 2005-09-13 and 2006-05-02
### Changed
- UI of some of the windows

### Added
- **Quick change apply** setting that alows to not press the **Save** button on the **Manual** tab to apply the changes

## 1.6.1.1 - between 2005-09-13 and 2006-05-02
### Fixed
- A bug that caused triggering an "Icon file not found" message after pressing the **Cancel** button

### Changed
- After deleting of the `autorun.inf` file, the corresponding controls made disabled

## 1.6.1 - between 2005-09-13 and 2006-05-02
### Added
- A setting to change the default active tab

### Changed
- The first run detection now properly works if the program was transferred to another computer or reinstalled
- **About…** window

## 1.6 - between 2005-09-13 and 2006-05-02
### Added
- An ability to change the drive label
- An ability to work in a limited functionality mode even without creating of the `autorun.inf` file

## 1.5.2 - between 2005-09-13 and 2006-05-02
### Changed
- Improved the shell integration: the program will now show the integration status and won't allow to disable it if it wasn't enabled; broken shell integration (e.g. the moved program binary) is also detected.
- Improved the program help

### Fixed
- Shell integration will be automatically disabled on uninstallation

### Added
- New installaion options: show help and enable shell integration

## 1.5.1 - between 2005-09-13 and 2006-05-02
### Changed
- Tab stop order for the main program window
- Locations of some buttons
- After the user asked to create an `autorun.inf` file on certain drive, said drive will be activated for work in the program

### Added
- Images in the version history

## 1.5 - between 2005-09-13 and 2006-05-02
### Added
- An ability to choose the drives for configuring

## 1.4.1 - between 2005-09-13 and 2006-05-02
### Added
- A setting to choose the drives that won't be checked when starting the program

## 1.4.0.1 - between 2005-09-13 and 2006-05-02
### Changed
- When closing the program via the system menu, the settings will be saved
- **About…** window
- ReadMe file is now called the Help and converted to the CHM format

## 1.4 - 2004-10-20
### Changed
- If a drive gets assigned an icon from another drive, said icon is copied with the name `icon.ico` to the target drive

## 1.3.3 - 2004-10-16
### Added
- A setting to disable checking of drives `A:` and `B:`

## 1.3.2 - between 2004-08-05 and 2004-09-11
### Changed
- Less RAM is required to run the program
- Code optimization

### Fixed
- Small bug fixes

## 1.3.1 - between 2004-08-05 and 2004-09-11
### Added
- A question before creating a new `autorun.inf` file
- Currently active drive is shown in the main window title

### Fixed
- If the drive hasn't been assigned an icon, then an empty icon will be loaded (before, an icon from the previous drive could stay shown)

### Changed
- Small fixes in UI and the program behavior

## 1.3 - between 2004-08-05 and 2004-09-11
### Changed
- No external libraries are required to run the program

### Added
- A drive selector instead of manual entering
- An installer

## 1.2 - between 2004-06-28 and 2004-08-05
### Fixed
- Several bugs (mainly related to autorun program selection)

### Added
- An ability to choose icons from `.exe` and `.dll` files. ML2DiscConfig will copy the icon (not the whole file!) to the drive root with a name `icon.ico` and use it from that path.
- The shell integration
- A question before deleting of the `autorun.inf` file

### Changed
- Small UI changes
- ReadMe file was changed to HTML

## 1.1 - 2004-06-28
### Added
- Version info is added to the program binary

### Fixed
- Fix saving of the drive icon and autorun file if they are on another drive
- Fix ReadMe file reading

## 1.0 - between 2004-01-01 and 2004-06-28
The initial release.

[1.6.3]: https://github.com/ForNeVeR/ML2DiskConfig/releases/tag/v1.6.3
[Unreleased]: https://github.com/ForNeVeR/ML2DiskConfig/compare/v1.6.3...HEAD
