#!/bin/bash

DATA=/data
TARBALL=/var/tmp/openam.data.tar

if [ -r $TARBALL -a -z "$(ls $DATA)" ]; then
	echo "$DATA is empty, installing a default configuration"
	(cd $DATA && tar xvf $TARBALL)
fi

catalina.sh run
