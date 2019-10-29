# Macports-42

Similar to project https://github.com/kube/42homebrew \
This is an attempt at having a functional macports on 42 Mac.

Note: It compiles from source

## Install

```
mkdir -p macports
cd macports
curl -fsSL https://raw.githubusercontent.com/IhateProprietary/macports-42/master/install.sh | zsh
````

### Note

If your session has no more space left, just move it to `server goinfre`(if your campus has any), after its installation.

## Uninstall

```
rm -rf macports
rm -rf .macports
rm -rf .macports.zsh
```
Also remove in your zshrc this particular line `source ~/.macports.zsh`
