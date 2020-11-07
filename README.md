
##### install dependencies
```bash
# install brew https://brew.sh
brew install cfv exiftool git unrar
```

##### clone repository
```bash
mkdir -p ~/Sites/dotfiles-extract
git clone git@github.com:ngonzalez/dotfiles-extract.git ~/Sites/dotfiles-extract
```

##### install extract tools
```bash
typeset -U PATH path
path=( ~/Sites/dotfiles-extract/tools $path )
```

##### from command line
```bash
$ extract
```
