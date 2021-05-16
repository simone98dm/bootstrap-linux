# bootstrap
This repo contains some files which allows to simplify the installation and configuration process when create new VM.

### How to
Since I don't know  which OS I have to use, I create 2 files for both platform.

##### Linux
```bash
$ git clone -b linux --depth 1 --single-branch https://github.com/simone98dm/bootstrap.git
$ cd bootstrap/
$ chmod +x *.sh
$ sudo ./full-installation.sh
```
##### Windows
```powershell
$ git clone -b win --depth 1 --single-branch https://github.com/simone98dm/bootstrap.git
$ cd bootstrap/
$ *doble click on .cmd*
```
##### VsCode Extensions
Since windows has wsl configured, just double click on the .sh vscode extension file and wait
