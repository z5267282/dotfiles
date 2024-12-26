# Overview

Configuration files to run on `zsh`.  
The files are all named without a leading '.' so they can be seen in the file system.

# Installation

Run this command to dynamically generate `~/.zshrc` with the correct file paths:

```sh
./install.sh
```

.

# Secrets

Any keys should be stored inside of

```sh
$HOME/.secrets
```

# File Structure

Configurations are delegated by types into folders:

| Folder      | Description                          |
| ----------- | ------------------------------------ |
| `aliases`   | All `alias` commands                 |
| `env`       | Setting of any environment variables |
| `functions` | Minor self-documenting functions     |
| `shell`     | General Shell commands               |

. This script will be sourced by the main controller `zshrc`.

# Other Notes

Any scripts that edit `$PATH` by adding something to `zshrc` will need to be manually overridden.
