# dotfiles-extract

#### install dependencies
```shell
brew install cksfv exiftool rar
```

#### clone repository
```shell
git clone git@github.com:ngonzalez/dotfiles-extract.git \
	~/.dotfiles-extract
```

#### install extract tools
```shell
cat >> /home/$USER/.zshrc <<EOL
typeset -U PATH path
path=( ~/.dotfiles-extract/tools $path )
EOL
```

#### from command line
```shell
extract
```
