#!/bin/bash
function install-dotfiles {
    for filename in $1/.*
    do
	test -f $filename

	if [[ $? -eq 0 ]]
	then
	    f=`basename $filename`
	    ln -s $filename ~/$f
		echo "ln -s $filename ~/$f"
	    fi
	fi
    done
}
