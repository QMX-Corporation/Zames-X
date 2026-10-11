# QMX CORPORATION - ZAMES-X GAME 
> A Simple and Beautiful Game.

![License](https://img.shields.io/badge/GPLv2--License-red)
![Game](https://img.shields.io./badge/2D--Game-blue)
![Security](https://img.shields.io/badge/TOTAL--Respect-orange)
![Support](https://img.shields.io/badge/QMX--Corporation-green)

## RULES
* **Unnecessary-PRs: Not resolving a problem, the PR is canceled.**
* **FOR MANTAINERS AND REVIEWERS: Please open a PR using git format-patch and git send-email in my E-Mail: joaoanandalima@gmail.com**
* **Terry A. Davis in First Local!**
* **Thanks for collaboratte with project, happy coding!**

---

## FILES .KS AND .KLSL 
### SYNTAX FOR CUSTOMIZED SHADERS 
The file color.ks initialize basic defines for **GPU-Comunication** and a **calcle more precise.**
Comments in **.klsl and .ks** is **simple:**
```bash
# Comment Example
```
The line in color.ks:
```bash
# Define a Dynamic Color based in Pixels 
define color = set(dynamic_bit * PIXEL);
``` 
Creating a variable (define color) and setting a dynamic bit for multiplicatte this bit per pixel.
And the other line:
```bash 
 Define the Real Value of Color
set realColor * color = define(ifeq geral(24 <= 32, generation)y, endif);


# Real Value is Global now
globalState(realColor(colory,(dynamic_bit * PIXEL), color) + realColor)
``` 
The Variable realColor is setted multiplicatted per color and define a verification of 24 and 32 (24, 25, 26, 27....) is active.
The globalState() function warnings the interpreter: Define the realColor and Color with Global.
In the file pixel.klsl:
```bash
# License-SPDX-Identifier: GPLv2


struct PIXEL {
    PIXEL *bit, 
    int: PIXEL color = "color.ks"(color),
    int: PIXEL realColor = "color.ks"(realColor)
};

INSTANCE: PIXEL = *bit(color, realColor) + color(&bit, realColor) + realColor(&bit, color) {
    basicPixel
}

GLOBAL: basicPixel

endINSTANCE;


endFile;


```
1. First, create a struct named PIXEL haves a Pointer for PIXEL named bit, a int PIXEL named color referencing the value color of color.ks and 
referencing the value realColor of color.ks in the realColor of the pixel.klsl.
2. Second, create a Instance of PIXEL named basicPixel, and define the instance with Global.
3. For last, close the instance and the file.

---

## ZAMES-X COMUNICATION 
### WHATS THE ZAMES-X CALL/EXECUTES PROPERTIES AND RENDER THIS?
1. The Zames-X read a Class for obtain Objects.
2. And read the Obtained Objects for obtain properties.
3. The Zames-X haves a Calcle of properties via pixel.klsl and color.ks for render a pure bit: bit per bit, pixel per pixel.
4. The images in screen!

---

## STRUCTURE FOLDERS
```text
Zames-X/
├── .devcontainer/
│   ├── devcontainer.json
│   └── Dockerfile
├── .github/
│   ├── ISSUE_TEMPLATE/
│   │   ├── bug_report.md
│   │   └── feature_request.md
│   ├── workflows/
│   │   ├── labeler.yml
│   │   └── syntax-check.yml
│   ├── CODEOWNERS
│   ├── DEPENDENCIES.md
│   ├── pull_request_template.md
│   └── security-policy.yml
├── Src/
│   ├── Class/
│   │   └── .gitkeep
│   ├── Objects/
│   │   └── .gitkeep
│   ├── Properties/
│   │   └── .gitkeep
│   ├── Renderer/
│   │   └── renderer.hc
│   ├── Shaders/
│   │   ├── color.ks
│   │   └── pixel.klsl
│   └── main.hc
├── Tools/
│   └── checkpatch.pl
├── .editorconfig
├── .gitattributes
├── .gitignore
├── CHANGELOG.md
├── CONTRIBUTING.md
├── CONTRIBUTORS.md
├── GOVERNANCE.md
├── LICENSE
├── MAINTAINERS
├── README.md
├── ROADMAP.md
├── SECURITY.md
└── SUPPORT.md
---

## LICENSE
The License is the GPLv2. See file 'LICENSE' for more informations.