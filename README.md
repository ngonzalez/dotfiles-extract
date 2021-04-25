
##### install dependencies
```bash
# install brew https://brew.sh
brew install cfv exiftool git rar
```

##### clone repository
```bash
git clone git@github.com:ngonzalez/dotfiles-extract.git ~/.dotfiles-extract
```

##### install extract tools
```bash
typeset -U PATH path
path=( ~/.dotfiles-extract/tools $path )
```

##### from command line
```bash
$ extract
```
