# mrben does dotfiles

Here be my dotfiles and other configs, along with some install scripts.

Based on Zach Holman's [dotfiles](http://github.com/holman/dotfiles).

## install

Run this:

```sh
git clone https://github.com/mrben/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
./bootstrap.sh
```

This will symlink the appropriate files in `.dotfiles` to your home directory.
Everything is configured and tweaked within `~/.dotfiles`.

If you also want to install apps and run `bin/dot` include the command line
argument `install` when running `bootstrap.sh`:

```sh
./bootstrap.sh install
```

The main file you'll want to change right off the bat is `bash/bashrc.symlink`,
which sets up a few paths that'll be different on your particular machine.

`dot` is a simple script that installs some dependencies, sets sane OS X
defaults, and so on. Tweak this script, and occasionally run `dot` from
time to time to keep your environment fresh and up-to-date. You can find
this script in `bin/`.

## topical

Everything's built around topic areas. If you're adding a new area to your
forked dotfiles — say, "Java" — you can simply add a `java` directory and put
files in there. Anything with an extension of `.sh` will get automatically
included into your shell. Anything with an extension of `.symlink` will get
symlinked without extension into `$HOME` when you run `bootstrap.sh`.

## components

There's a few special files in the hierarchy.

- **bin/**: Anything in `bin/` will get added to your `$PATH` and be made
  available everywhere.
- **topic/\*.sh**: Any files ending in `.sh` get loaded into your
  environment.
- **topic/path.sh**: Any file named `path.sh` is loaded first and is
  expected to setup `$PATH` or similar.
- **topic/completion.sh**: Any file named `completion.sh` is loaded
  last and is expected to setup autocomplete.
- **topic/\*.symlink**: Any files ending in `*.symlink` get symlinked into
  your `$HOME` as a hidden file or folder. This is so you can keep all of those
  versioned in your dotfiles but still keep those autoloaded files in your home
  directory. These get symlinked in when you run `bootstrap.sh`.
