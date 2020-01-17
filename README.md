# libo: fast access to LICENSE boilerplates

[![LICENSE](https://img.shields.io/github/license/urushiyama/libo)](https://github.com/urushiyama/libo/tree/master/LICENSE)

**libo** (short for LICENSE boilerplates) is a shell script to help you easily access LICENSE boilerplates from https://github.com/urushiyama/LICENSES.

This is totally inspired by [gibo](https://github.com/simonwhitaker/gibo), one of awesome tools to make .gitignore.

## Typical usage

```shell
$ libo dump CC0-1.0-Universal >> LICENSE
```

If the template contains `${YEAR}` or `${AUTHOR}` such as MIT;
```shell
$ libo dump MIT >> LICENSE
```
provides MIT License file replacing those with current year and your git username (or login name).

If you want to set custom year and author name;
```shell
$ libo -y 2020 -a "Full Name" dump MIT >> LICENSE
```
or
```shell
$ LIBO_YEAR=2020 LIBO_AUTHOR="Full Name" libo dump MIT >> LICENSE
```
should provide what you want.

For additional usages, run `libo help`.

## Installation

### via [Homebrew](https://github.com/Homebrew/brew)

```shell
$ brew tap urushiyama/homebrew-libo
$ brew install libo
```

### via [Docker](https://www.docker.com/)

Docker enables you to run the command just like as below:
```shell
$ docker run --rm urushiyama/libo:latest [options] [command]
```

Note that setting custom author name must be needed if you use docker because docker process runs as independent root environment.

```shell
$ docker run --rm urushiyama/libo:latest -a "Full Name" dump MIT >> LICENSE
```

## Credits

libo was written by Yuta Urushiyama ([@YUrushiyama](https://twitter.com/YUrushiyama))

libo is totally inspired by [gibo](https://github.com/simonwhitaker/gibo).
