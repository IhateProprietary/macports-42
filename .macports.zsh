export PATH=$HOME/macports/bin:$PATH

MACPORTS_LOCK_REGISTRY_TARGET=$HOME/macports/var/macports/registry
MACPORTS_LOCK_BUILD_TARGET=$HOME/macports/var/macports/build

MACPORTS_LOCK_REGISTRY_LINK=/tmp/$USER/macports/registry
MACPORTS_LOCK_BUILD_LINK=/tmp/$USER/macports/build

MACPORTS_LINK_FOLDER=/tmp/$USER/macports
mkdir -vp $MACPORTS_LINK_FOLDER

if [[ ! -L $MACPORTS_LOCK_REGISTRY_TARGET ]]; then
	mv -v $MACPORTS_LOCK_REGISTRY_TARGET $MACPORTS_LINK_FOLDER
	ln -sv $MACPORTS_LOCK_REGISTRY_LINK $MACPORTS_LOCK_REGISTRY_TARGET
fi

if [[ ! -L $MACPORTS_LOCK_BUILD_TARGET ]]; then
	mv -v $MACPORTS_LOCK_BUILD_TARGET $MACPORTS_LINK_FOLDER
	ln -sv $MACPORTS_LOCK_BUILD_LINK $MACPORTS_LOCK_BUILD_TARGET
fi

MACPORTS_REGISTRY_TARGET=$HOME/macports/var/macports/registry/registry.db
MACPORTS_REGISTRY_LINK=$HOME/.macports/registry.db

if [[ ! -L $MACPORTS_REGISTRY_TARGET ]]; then
	mkdir -vp $(dirname $MACPORTS_REGISTRY_LINK)
	mv -v $MACPORTS_REGISTRY_TARGET $MACPORTS_REGISTRY_LINK
	ln -sv $MACPORTS_REGISTRY_LINK $MACPORTS_REGISTRY_TARGET
fi