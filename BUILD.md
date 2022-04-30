
## System Info

Quagga was built in the following version of Ubuntu under WSL 2:
```
> lsb_release -a 
Distributor ID: Ubuntu
Description:    Ubuntu 20.04.4 LTS
Release:        20.04
Codename:       focal
```

## Compilation Requirements
* > `gcc -v`
```
gcc version 9.4.0 (Ubuntu 9.4.0-1ubuntu1~20.04.1) 
Target: x86_64-linux-gnu
```
* > `make -v`
```
GNU Make 4.2.1
Built for x86_64-pc-linux-gnu
```

* > `autoconf` 

(installed via `sudo apt install autoconf`)

```
autoconf (GNU Autoconf) 2.69
Copyright (C) 2012 Free Software Foundation, Inc.
```

* > `libtool`

(installed via `sudo apt install libtool`)
```
> apt show libtool
Package: libtool
Version: 2.4.6-14
```

* > `libc-ares-dev`

(installed via `sudo apt install libc-ares-dev`)
```
Package: libc-ares-dev
Version: 1.15.0-1ubuntu0.1
```

## Compiling Tests
* > `dejagnu`

(installed via `sudo apt install dejagnu`)
```
Package: dejagnu
Version: 1.6.2-1
```

* > `lcov`

(was not originally required)
(installed via `sudo apt install lcov`)
```
Package: lcov
Version: 1.14-2
```
## Compiling Documentation

* > `texinfo`

(installed via `sudo apt install texinfo`)

```
Package: texinfo
Version: 6.7.0.dfsg.2-5
```

* > `texlive` 

(used to generate `.pdf`)
(installed via `sudo apt install texinfo`)
```
Package: texlive
Version: 2019.20200218-1
```
