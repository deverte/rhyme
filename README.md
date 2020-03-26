# Rhyme

Script executor for [Poetry](https://python-poetry.org/) (Python package manager).

*Note: now there is only `Windows` releases. If there are any requests, I can build `GNU/Linux` version.*

---

1. [About](#About)
2. [Installation](#Installation)
3. [Commands](#Commands)
4. [Packages](#Packages)
5. [License](#License)

---


## About
Rhyme lets you to write shell scripts inside [Poetry](https://python-poetry.org/) `pyproject.toml` file.

Example (only [rhyme.scripts] section):  
`pyproject.toml`
```toml
[rhyme.scripts]
compile = "coconut src rhyme -a"
watch = "coconut src rhyme -a -w"
build = "pyinstaller ./rhyme/main.py --distpath ./dist -F -p ./.venv"
```

And to execute these scripts just run commands:
```sh
rhyme compile
```
```sh
rhyme watch
```
```sh
rhyme build
```


## Installation
### Scoop
Preferred installation via [Scoop](https://scoop.sh/).

Add bucket ('repo'):
```sh
scoop bucket add shell https://github.com/deverte/scoop-shell
```

Install Rhyme:
```sh
scoop install rhyme
```

### Download
Also you can just [download](https://github.com/deverte/rhyme/releases) an executable and add it's directory to the PATH environment variable.


## Commands
### Options
**--global**  
Run cpecified command in the global environment (without `poetry run COMMAND`).


## Packages
Packages used in the `Rhyme`:

**work**:  
[ramda](https://github.com/slavaGanzin/ramda.py)  
[toml](https://github.com/uiri/toml)  
[python-box](https://github.com/cdgriffith/Box)  
[typer](https://typer.tiangolo.com/)

**dev**:  
[coconut](http://coconut-lang.org/)  
[pyinstaller](https://www.pyinstaller.org/)


# License
MIT