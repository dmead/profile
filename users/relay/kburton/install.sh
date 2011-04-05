set -e
set -x

test -d $HOME/bin || mkdir $HOME/bin
for util in xpath rec-view rabbit justify runiq slime-connect; do
  test -f $HOME/bin/$util || ln -s $HOME/.profile.d/users/kburton/bin/$util $HOME/bin/$util
done

if [ ! -d $HOME/.vim ]; then
  ln -s $HOME/.profile.d/users/kburton/vim $HOME/.vim
  test -d $HOME/.vim/backup      || mkdir $HOME/.vim/backup
  test -d $HOME/.vim/backup/swap || mkdir $HOME/.vim/backup/swap
fi
