# How to use
https://www.atlassian.com/git/tutorials/dotfiles

```bash
git init --bare $HOME/.cfg
alias config='/usr/bin/git --git-dir=$HOME/.dotconfig/ --work-tree=$HOME'
config config --local status.showUntrackedFiles no
echo "alias config='/usr/bin/git --git-dir=$HOME/.dotconfig/ --work-tree=$HOME'" >> $HOME/.bashrc
```

Add items with `config add <item>` and it will be stored in the branch at `~/.dotfiles` with paths corresponding to the added config.
