# Quickly show all remotes with URL

This simple shell script, which must be run inside a git repository, shows a
list of all defined remotes and their fetch URLs.

## Installation

You can either directly run the script from this repository as `gitremotes.sh`.
Alternatively you can install it using Homebrew (on OS X), from my personal tap:

```sh
brew tap infogrind/homebrew-tap  # If not already done
brew install gitremotes
```

## Sample Usage

```sh
cd themoviedb
gitremotes
```

Sample output:

```
origin -> git@github.com:infogrind/themoviedb.git
upstream -> git@github.com:tobithiel/themoviedb.git
```

## Limitations

Currently the script must be run in a git repository’s *root* directory. This is
a limitation of how the script detects if it is actually inside a git repo,
namely by searching for a `.git` subdirectory in the current location. There are
surely better ways to do this.
