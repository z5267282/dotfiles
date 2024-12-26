# Overview

Configuration files to run on `zsh`.  
The files are all named without a leading '.' so they can be seen in the file system.

# Installation

Run this command:

```sh
# replace PATH_TO_REPO
ln -s $PATH_TO_REPO/zshrc ~/.zshrc
```

.

# Secrets

Any keys should be stored inside of

```sh
$HOME/.secrets
```

. This script will be sourced by the main controller `zshrc`.

# Other Notes

Any scripts that edit `$PATH` by adding something to `zshrc` will need to be manually overridden.
