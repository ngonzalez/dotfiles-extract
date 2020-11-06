```bash
mkdir ~/Sites/dotfiles
git clone git@github.com:ngonzalez/dotfiles.git ~/Sites/dotfiles
```

```bash
ln -s ~/Sites/dotfiles/.zshrc ~/.zshrc
```

```bash
ln -s ~/Sites/dotfiles/.gitconfig ~/.gitconfig
```

##### extraction scripts
```bash
brew install cfv exiftool unrar
ln -s ~/Sites/dotfiles/tools ~/.tools
ln -s ~/Sites/dotfiles/.extract.sh /usr/local/bin/extract
chmod 0755 /usr/local/bin/extract
```
