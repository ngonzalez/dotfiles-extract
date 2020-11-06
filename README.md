##### dependencies
```bash
# install brew https://brew.sh
```

```bash
brew install git
```

```
mkdir -p ~/Sites/dotfiles
```

```
ln -s ~/Sites/dotfiles/.gitconfig ~/.gitconfig
```

```bash
git clone git@github.com:ngonzalez/dotfiles.git ~/Sites/dotfiles
```

##### extraction scripts
```bash
brew install cfv exiftool unrar
ln -s ~/Sites/dotfiles/tools ~/.tools
ln -s ~/Sites/dotfiles/.extract.sh /usr/local/bin/extract
chmod 0755 /usr/local/bin/extract
```
