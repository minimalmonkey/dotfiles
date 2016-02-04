export DEV="$HOME/Development"

DOTFILES_DIR="$HOME/.dotfiles"


GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUPSTREAM='auto'

[[ -r $DOTFILES_DIR/lib/git/git-completion.bash ]] && source $DOTFILES_DIR/lib/git/git-completion.bash
[[ -r $DOTFILES_DIR/lib/git/git-prompt.sh ]] && source $DOTFILES_DIR/lib/git/git-prompt.sh


for DOTFILE in `find $DOTFILES_DIR/system`
do
  [ -f "$DOTFILE" ] && . "$DOTFILE"
done


# if a users has a .bash_rc file load it
if [ -f "$HOME/.bash_rc" ]
then
    [ -f "$HOME/.bash_rc" ] && . "$HOME/.bash_rc"
fi

