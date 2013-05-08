tig
====
*Chef cookbook* - Installs [Tig](https://github.com/jonas/tig) from source.


Platform
--------

Tested on Debian Squeeze. Should work fine on Ubuntu, Centos, Debian, etc.

Attributes
----------

```
tig[:repository] - git repository to clone
tig[:dir]        - location where node will be installed, default /usr/local
tig[:revision]   - branch name to checkout
```

Usage
-----

Include the tig recipe to your run list to install tig from source on your system:

```
recipe[tig]
```
