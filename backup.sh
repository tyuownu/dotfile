#!/bin/sh

# this file is use for copy useful file to this dir.
# just like cp /source/file /dir/file
echo "**********************************"
echo "*              WARNING           *"
echo "* this file is use for copy file *"
echo "* to this dir.                   *"
echo "* if donot want to, just press Q *"
echo "* or Ctrl+C.                     *"
echo "**********************************"

echo " "
echo " "
echo " continue ? (yes/no):"
read continueRun
if [ $continueRun = "N" -o $continueRun = 'n' ]; then
    exit 1
fi

# vim relative
if [ -f "$HOME/.vimrc" ]; then
    cp $HOME/.vimrc                    $PWD/vimrc
fi

# emacs
if [ -x "$HOME/.spacemacs.d" ]; then
    cp -r $HOME/.spacemacs.d           $PWD/spacemacs
fi

# firefox
if [ -f "$HOME/.vimperatorrc" ]; then
    cp $HOME/.vimperatorrc             $PWD/vimperatorrc
fi

# zshrc and you need git oh-my-zsh first
if [ -f "$HOME/.zshrc" ]; then
    # zsh relative
    cp $HOME/.zshrc                    $PWD/zshrc
fi

# bash relative
if [ -f "$HOME/.bashrc" ]; then
    cp $HOME/.bashrc                   $PWD/bashrc
fi
if [ -f "$HOME/.profile" ]; then
    cp $HOME/.profile                  $PWD/profile
fi
if [ -f "$HOME/.locktoesc" ]; then
    # locktoesc for swap between ESC with Caps Lock
    cp $HOME/.locktoesc                $PWD/locktoesc
fi

# terminator
if [ -f "$HOME/.config/terminator/config" ]; then
    mkdir -p $PWD/terminator
    cp $HOME/.config/terminator/config  $PWD/terminator/config
fi

# i3wm
if [ -x "$HOME/.i3" ]; then
    cp -r $HOME/.i3/                    $PWD/i3
fi

# tmux
if [ -f "$HOME/.tmux.conf" ]; then
    cp $HOME/.tmux.conf                 $PWD/tmux.conf
fi
