#! /bin/bash

funpatch()
{     
    if [ -n "$1"  -a -n "$2" ];then
		dirpath=$(dirname $1)
		cd $dirpath
		filename=$(basename $1)
		git checkout $filename
		cd -
		patch $1 < $2		
	else
		echo "error: please fill function argument.............. "
		exit
	fi

}

funpatch device/amlogic/g06ref/system.prop  device/amlogic/g06ref/english/system.patch
funpatch device/amlogic/g06ref/g06ref.mk  device/amlogic/g06ref/english/language.patch

echo "finish copy english patch files. "



