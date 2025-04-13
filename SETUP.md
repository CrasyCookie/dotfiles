# Dotfiles setup

To setup the dotfiles, just copy or symlink them into `$HOME` and `$XDG_CONFIG_HOME`. To change `$XDG_CONFIG_HOME` from `$HOME/.config` look at the `files/.zshenv` file.
```sh
$ ln -s ./files/* "$HOME"
$ ln -s ./config/* "$HOME/.config"
```
alternatively
```sh
$ cp -r ./files/* "$HOME"
$ cp -r ./config/* "$HOME/.config"
```

Screenshots (grim+slurp) are stored in `xdg-user-dir PICTURES`, take a look at `xdg-user-dirs-update(1)` on how to change it.
```sh
$ xdg-user-dirs-update PICTURES "$HOME/Pictures"
```
