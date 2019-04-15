#!/bin/bash


IMAGE=singularity-matlabmcr2018b.simg
DEFINITION=Singularity

if [ -f $IMAGE ]; then
        rm -fv $IMAGE
fi

singularity image.create -s 8000 $IMAGE
sudo singularity build $IMAGE $DEFINITION

