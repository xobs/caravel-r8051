if [ -z $CONDA_PREFIX ]
then
    echo "Must be run from inside a conda environment!"
    echo "Run '. CONDA_PREFIX/bin/activate' before sourcing this script"
    exit 1
fi

export PDK=gf180mcuC
export PDK_ROOT=$CONDA_PREFIX/share/pdk
export OPENLANE_ROOT=$CONDA_PREFIX/share/openlane
