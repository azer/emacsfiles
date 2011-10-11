this is the repository of my emacs configuration. 


install
=======
```bash
$ git clone git@github.com:azer/emacsfiles.git
$ cd emacsfiles
$ make install
```

intro
=====
this configuration comes with a profile mechanism that lets user split and load the configurations of particular uses.
As seen in the source code tree, profiles/ directory contains 4 different modules; default.el, dev.el, irc.el, org.el, android.el. To specify one, pass emacs name of the file simply;

usage examples;

```bash
$ emacs # load only default profile
$ emacs dev # load what is needed for the dev environment
$ emacs irc # erc and twittering-mode
$ emacs org # org-mode configurations
$ emacs android # load android emulator in addition to dev profile
```
