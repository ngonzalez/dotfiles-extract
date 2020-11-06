
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
ln -s ~/Sites/dotfiles-extract/tools ~/.tools
ln -s ~/Sites/dotfiles-extract/.extract.sh /usr/local/bin/extract
chmod 0755 /usr/local/bin/extract
```

##### from command line
```bash
$ extract
```
