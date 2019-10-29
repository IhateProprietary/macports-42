#!/bin/zsh

git clone https://github.com/macports/macports-base

cd macports-base

TARGET=$HOME/macports

./configure --enable-readline --prefix=$TARGET --with-no-root-privileges --enable-shared
mkdir -vp $TARGET
make -j16
make install

curl -fsSL https://raw.githubusercontent.com/IhateProprietary/macports-42/master/.macports.zsh > $HOME/.macports.zsh
EXISTS=`grep "source ~/.macportsconfig.zsh" ~/.zshrc`
if [[ -z $EXISTS ]]; then
	echo "source ~/.macports.zsh" >> ~/.zshrc
fi
echo "Restart your terminal or alternative resource your zshrc to have effect immediately"
echo "Don't forget to port selfupdate otherwise, it won't have any package to look for"
