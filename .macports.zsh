export PATH=$HOME/macports/bin:$PATH

MACPORTS_LOCK_REGISTRY_TARGET=$HOME/macports/var/macports/registry
MACPORTS_LOCK_BUILD_TARGET=$HOME/macports/var/macports/build

MACPORTS_LOCK_REGISTRY_LINK=/tmp/$USER/macports/registry
MACPORTS_LOCK_BUILD_LINK=/tmp/$USER/macports/build

MACPORTS_LOGS_FOLDER_TARGET=$HOME/macports/var/macports/logs
MACPORTS_LOGS_FOLDER_LINK=/tmp/$USER/macports/logs

MACPORTS_LINK_FOLDER=/tmp/$USER/macports
mkdir -vp $MACPORTS_LINK_FOLDER

## Creating macports folder tree into tmp and link them

if [[ ! -L $MACPORTS_LOCK_REGISTRY_TARGET ]]; then
        mv -v $MACPORTS_LOCK_REGISTRY_TARGET $MACPORTS_LINK_FOLDER
        ln -sfv $MACPORTS_LOCK_REGISTRY_LINK $MACPORTS_LOCK_REGISTRY_TARGET
else
        mkdir -vp $MACPORTS_LOCK_REGISTRY_LINK
fi

if [[ ! -L $MACPORTS_LOCK_BUILD_TARGET ]]; then
        mv -v $MACPORTS_LOCK_BUILD_TARGET $MACPORTS_LINK_FOLDER
        ln -sfv $MACPORTS_LOCK_BUILD_LINK $MACPORTS_LOCK_BUILD_TARGET
else
        mkdir -vp $MACPORTS_LOCK_BUILD_LINK
fi

if [[ ! -L $MACPORTS_LOGS_FOLDER_TARGET=$HOME/macports/var/macports/logs ]]; then
        mv -v $MACPORTS_LOGS_FOLDER_TARGET $MACPORTS_LOGS_FOLDER_LINK
        ln -sfv $MACPORTS_LOGS_FOLDER_LINK $MACPORTS_LOGS_FOLDER_TARGET
else
        mkdir -vp $MACPORTS_LOGS_FOLDER_LINK
fi

MACPORTS_REGISTRY_TARGET=$HOME/macports/var/macports/registry/registry.db
MACPORTS_REGISTRY_LINK=$HOME/.macports/registry.db

## Move registry.db into home and link it in tmp

if [[ ! -L $MACPORTS_REGISTRY_TARGET ]]; then
        mkdir -vp $(dirname $MACPORTS_REGISTRY_LINK)

        if [[ -f $MACPORTS_REGISTRY_TARGET ]]; then
                mv -v $MACPORTS_REGISTRY_TARGET $MACPORTS_REGISTRY_LINK
        fi

        ln -sfv $MACPORTS_REGISTRY_LINK $MACPORTS_REGISTRY_TARGET
fi
