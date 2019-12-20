# libo: fast access to LICENSE boilerplates

[![LICENSE](https://img.shields.io/github/license/urushiyama/libo)](https://github.com/urushiyama/libo/tree/master/LICENSE)

**libo** (short for LICENSE boilerplates) is a shell script to help you easily access LICENSE boilerplates from https://github.com/urushiyama/LICENSES.

This is totally inspired from [gibo](https://github.com/simonwhitaker/gibo), one of awesome tools to make .gitignore.

## Typical usage

```shell
$ libo dump CC0-1.0-Universal >> LICENSE
```

If the template contains `${YEAR}` or `${AUTHOR}`;
```shell
$ libo -y 2019 -a "Full Name" dump MIT >> LICENSE
```
should provide what you want.

For additional usages, run `libo help`.

## Installation

*TBD*

## Credits

libo was written by Yuta Urushiyama ([@YUrushiyama](https://twitter.com/YUrushiyama))

libo is totally inspired from [gibo](https://github.com/simonwhitaker/gibo).
