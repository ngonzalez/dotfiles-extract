
##### install dependencies
```bash
# install brew https://brew.sh
brew install cfv exiftool git unrar
```

##### clone repository
```bash
mkdir -p ~/Sites/dotfiles
git clone git@github.com:ngonzalez/dotfiles.git ~/Sites/dotfiles
```

##### install extract tools
```bash
ln -s ~/Sites/dotfiles/tools ~/.tools
ln -s ~/Sites/dotfiles/.extract.sh /usr/local/bin/extract
chmod 0755 /usr/local/bin/extract
```

##### from command line
```bash
$ extract
```
