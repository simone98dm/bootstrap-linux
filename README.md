# bootstrap
This repo contains the "bootstrap" scripts to install and configure the vm.

### How to

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
$ *open powershell with admin privileges*
$ *copy and execute the first line of choco-install.cmd*
$ ./choco-install.cmd
```
