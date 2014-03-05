# My GNU Emacs Settings

This repository is my ``.emacs.d`` directory for [GNU Emacs][].

[GNU Emacs]: http://www.gnu.org/software/emacs/
  "GNU Emacs - GNU Project - Free Software Foundation (FSF)"

## Motivation

My Emacs configuration was based on [Prelude][], which serves
great base configuration for Emacs.
However, as I wanted to have more control on Emacs, I felt less comfortable
to build my configuration upon Prelude.
So, I started building my own from scratch.
Of course it is influenced by many others', including
[Prelude][], [magnars/.emacs.d][], [Setting up Emacs as Ruby development environment on OSX][emacs-ruby-osx] and so on. I really appreciate the authors.
I hope this repo will serve as a meaningful example for you.

[Prelude]: https://github.com/bbatsov/prelude
  "bbatsov/prelude"

[magnars/.emacs.d]: https://github.com/magnars/.emacs.d
  "magnars/.emacs.d"

[emacs-ruby-osx]: http://crypt.codemancers.com/posts/2013-09-26-setting-up-emacs-as-development-environment-on-osx/
  "Setting up Emacs as Ruby development environment on OSX"

## Installation

### Emacs

If you don't have Emacs installed yet, you need to install one.

#### Mac OS X

On Mac OS X, my preferred way is to use [Homebrew][]:

```bash
$ brew install emacs --use-git-head --cocoa --srgb
```

[Homebrew]: http://brew.sh/
  "Homebrew — MacPorts driving you to drink? Try Homebrew!"

### Emacs Configuration

1. Install [Cask](http://cask.github.io/), a package dependency manager for Emacs.
2. Clone this repository to ``~/.emacs.d``:

```bash
$ git clone git@github.com:builtinnya/.emacs.d.git ~/.emacs.d
```

## Structure

- `.emacs.d/`
    - `Cask`: Cask file. All the dependent libraries available on ELPA/MELPA/Marmalade are listed here.
    - `init.el`: The entry point of initialization. All setup files are loaded here.
    - `setup/`: contains elisp files which set up Emacs.
    - `vendor/`: contains third-party libraries.
    - `lib/`: contains useful defuns.
    - `preferences/`: contains configuration files which make sense among different machines.
    - `savefiles/`: contains auto-generated files which do not make sense among different machines.
    - `snippets/`: contains snippet files for [YASnippet][].

[YASnippet]: https://github.com/capitaomorte/yasnippet
  "capitaomorte/yasnippet"

## Installing libraries from Git repositories

You may want to install libraries from git repositories to use bleeding-edge features
or to use your own fork.
I prefer to use [Git Subtrees][]. Here is how to do it.

- Adding a library to `vendor/`
    ```bash
    $ git remote add some-library git-url-of-some-library
    $ git subtree add --prefix=vendor/some-library --squash some-library master
    ```

- Pulling changes from upstream
    ```bash
    $ git subtree pull --prefix=vendor/some-library --squash some-library master
    ```

- Contributing back to upstream
    ```bash
    $ git subtree push --prefix=vendor/some-library some-library master
    ```

Refer to [apenwarr/git-subtree][] for more information.

[Git Subtrees]: http://blogs.atlassian.com/2013/05/alternatives-to-git-submodule-git-subtree/
  "Alternatives To Git Submodule: Git Subtree - Atlassian Blogs"

[apenwarr/git-subtree]: https://github.com/apenwarr/git-subtree
  "apenwarr/git-subtree"
