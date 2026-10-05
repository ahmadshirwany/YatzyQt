# YatzyQt

A desktop Yatzy dice game built with C++ and Qt 6. YatzyQt provides a
simple graphical interface for setting up a multiplayer game, rolling dice,
tracking turns, and managing the game timer.

## Features

- Multiplayer game setup
- Animated dice rolling
- Dice locking between rolls
- Turn and roll tracking
- Game timer with pause and resume controls
- Reset and quit controls
- Automatic combination and winner reporting

## Requirements

### Windows

- Windows 10 or later
- Qt 6 with the **Desktop MinGW 64-bit** kit
- MinGW C++ compiler
- Qt `qmake` and `mingw32-make` available in the terminal

### Linux

- A recent Linux distribution
- Qt 6 development packages
- A C++ compiler and `make`

On Debian or Ubuntu, install the required packages with:

```bash
sudo apt update
sudo apt install build-essential qt6-base-dev qt6-base-dev-tools
```

The project uses qmake and requires no third-party runtime libraries beyond
the Qt installation.

## Build and run with Qt Creator

1. Install Qt 6 and the Desktop MinGW kit.
2. Open `YatzyQt.pro` in Qt Creator.
3. Select the Desktop MinGW 64-bit kit.
4. Click **Configure Project**.
5. Build with **Ctrl+B**.
6. Run with **Ctrl+R**.

## Build and run from the terminal

Open a terminal configured with the Qt and MinGW `bin` directories:

```powershell
$env:Path = "C:\Qt\6.12.0\mingw_64\bin;C:\Qt\Tools\mingw1310_64\bin;$env:Path"
```

Then configure, compile, and run:

```powershell
cd path\to\YatzyQt
qmake YatzyQt.pro
mingw32-make
.\release\YatzyQt.exe
```

The exact Qt and MinGW folder names depend on the installed versions.

## Build and run on Linux

Install the dependencies, then open a terminal in the project directory:

```bash
cd path/to/YatzyQt
qmake6 YatzyQt.pro
make -j"$(nproc)"
./release/YatzyQt
```

If `qmake6` is not available, use `qmake`:

```bash
qmake YatzyQt.pro
make -j"$(nproc)"
./release/YatzyQt
```

## Run from VS Code

Open the project folder in VS Code and make sure the Qt/MinGW `bin`
directories are available in the integrated terminal's `PATH`. Use:

- **Terminal → Run Task → Build Yatzy GUI** to build
- **Terminal → Run Task → Run Yatzy GUI** to build and launch

The task definitions are in [.vscode/tasks.json](.vscode/tasks.json).

## How to play

1. Enter the number of players and select **Enter**.
2. Click **Roll Dice** to roll the dice.
3. Select dice to lock them before rolling again.
4. Use **Give Turn** to pass control to the next player.
5. Continue until all turns are used and the winner is displayed.

Use **Pause**, **Unpause**, **Reset**, and **Quit** when needed.

## Project layout

- `src/` — application and game implementation
- `include/` — C++ headers
- `forms/` — Qt Designer `.ui` files
- `resources/` — dice images and the Qt resource collection
- `docs/` — player instructions
- `.vscode/tasks.json` — VS Code build and run tasks
- `YatzyQt.pro` — qmake project configuration

## Generated files

Build directories, Makefiles, Qt-generated headers, object files, and
executables are excluded by `.gitignore`.
