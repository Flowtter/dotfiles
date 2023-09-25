#!/usr/bin/env python3

import os
import sys
from enum import Enum

if not os.path.exists(".day"):
    with open(".day", "w") as f:
        f.write("True")

with open(".day", "r") as f:
    line = f.read()
    if line == "True":
        day = True
    else:
        day = False

with open(".day", "w") as f:
    f.write(str(not day))


def kitty():
    class KittyConfig(Enum):
        DAY = ["background #1e2137\n"]
        NIGHT = ["background #cdc6a3\n", "foreground #555555\n"]

    with open(".config/kitty/kitty.conf", "r") as f:
        lines = f.readlines()

        old_lines = None
        new_lines = None

        for i in range(len(lines) - 2):
            if lines[i] == "\n" and lines[i + 1] == "\n" and lines[i + 2] == "\n":
                old_lines = lines[: i + 3]
                break

        if day:
            new_lines = KittyConfig.DAY.value
        else:
            new_lines = KittyConfig.NIGHT.value

    with open(".config/kitty/kitty.conf", "w") as f:
        f.writelines(old_lines)
        f.writelines(new_lines)


def vscode():
    class VSCodeConfig(Enum):
        DAY = "Bearded Theme HC Flurry"
        NIGHT = "Bearded Theme Arc Eggplant"

    with open(".config/Code/User/settings.json", "r") as f:
        lines = f.readlines()
        for i, line in enumerate(lines):
            if "workbench.colorTheme" in line:
                if day:
                    lines[i] = f'\t"workbench.colorTheme": "{VSCodeConfig.NIGHT.value}",\n'
                else:
                    lines[i] = f'\t"workbench.colorTheme": "{VSCodeConfig.DAY.value}",\n'
                break
    with open(".config/Code/User/settings.json", "w") as f:
        f.writelines(lines)
    


def main():
    kitty()
    vscode()



if __name__ == "__main__":
    main()
