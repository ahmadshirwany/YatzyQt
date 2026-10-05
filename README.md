# YatzyQt

A Qt 6 desktop implementation of the Yatzy dice game.

## Requirements

- Qt 6 with the Desktop MinGW kit on Windows
- A C++11-compatible compiler

## Build and run

Open `YatzyQt.pro` in Qt Creator, select the Desktop MinGW kit, and build
the project.

From a Qt-enabled terminal, the command-line build is:

```powershell
qmake YatzyQt.pro
mingw32-make
.\release\YatzyQt.exe
```

The generated `release/`, `debug/`, Makefiles, and Qt-generated headers are
ignored by Git.

## Project layout

- `src/` — application and game implementation
- `include/` — C++ headers
- `forms/` — Qt Designer `.ui` files
- `resources/` — dice images and the Qt resource collection
- `docs/` — player instructions
- `YatzyQt.pro` — qmake project configuration

## Gameplay

Enter the number of players, roll the dice, lock dice when needed, and use
**Give Turn** to pass to the next player. The game window also provides
pause, reset, and quit controls.
