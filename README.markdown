# dotfiles

Here is my personal [dot-files][] repository.
I hope it will help you with setting up your environment.
These settings are mostly tested on Mac OS X.

[dot-files]: http://en.wikipedia.org/wiki/Dot-file

Questions/suggestions/improvements are welcome!

## Installation

Clone this repo and run `install.sh` as follows.

``` bash
$ git clone git@github.com:builtinnya/dotfiles.git
$ cd dotfiles
$ ./install.sh
```

Basically, it installs symbolic links to the files whose name starts with `_`
into the home directory.
It also installs symbolic links to the directories under `config/`.

Run `install.sh` by mistake? **Don't panic!**
The script backups the existing dot-files to `filename.df.bak` if any.
You can restore the original settings as follows:

``` bash
$ ./install.sh restore
```

## Components

Settings which include sensitive data such as SSH config are excluded
from this repo and managed in a separate repo.

### .zsh*
Settings for [Z shell][].
The settings depend on [oh-my-zsh][] ([my fork][]) and [Antigen][],
which is a plugin manager for zsh.

[Z shell]: http://www.zsh.org/
[oh-my-zsh]: https://github.com/robbyrussell/oh-my-zsh
[my fork]: https://github.com/builtinnya/oh-my-zsh
[Antigen]: https://github.com/zsh-users/antigen

### .gitconfig
Settings for [Git][], a version control system (you should know :)
It includes a bunch of aliases, but I mostly use Git on [Emacs][]
using [Magit][].

[Git]: http://git-scm.com/
[Emacs]: http://www.gnu.org/software/emacs/
[Magit]: https://github.com/magit/magit

### .tmux.conf
Settings for [Tmux][], a terminal multiplexer.
You have to install [Powerline][].

[Tmux]: http://tmux.sourceforge.net/
[Powerline]: https://github.com/Lokaltog/powerline

On Mac OS X, I use [iTerm2][] with Zenburn color scheme from
[iTerm2-Color-Schemes][].

[iTerm2]: http://www.iterm2.com/
[iTerm2-Color-Schemes]: https://github.com/mbadolato/iTerm2-Color-Schemes

### .emacs.d
Settings for [GNU Emacs][], an extensible, customizable text editor -- and more.
Maintained in [separate repo][.emacs.d].

To pull changes from [.emacs.d][]:

```bash
git subtree pull --prefix=_emacs.d --squash _emacs.d master
```

[GNU Emacs]: http://www.gnu.org/software/emacs/
  "GNU Emacs - GNU Project - Free Software Foundation (FSF)"

[.emacs.d]: https://github.com/builtinnya/.emacs.d
  "builtinnya/.emacs.d"
