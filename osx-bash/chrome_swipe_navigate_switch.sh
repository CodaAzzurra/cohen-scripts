#!/bin/bash
SWIPE_BOOL=FALSE
if [ $# -eq 0 ]
	then
    	echo "No argument supplied, defaulting to FALSE."
	else
		SWIPE_BOOL=$1
fi

defaults write com.google.Chrome.plist AppleEnableSwipeNavigateWithScrolls -bool $SWIPE_BOOL
