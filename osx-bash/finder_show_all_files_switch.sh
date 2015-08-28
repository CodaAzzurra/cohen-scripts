#!/bin/bash
SHOW_YESNO=NO
if [ $# -eq 0 ]
	then
    	echo "No argument supplied, defaulting to NO."
	else
		SHOW_YESNO=$1
fi

defaults write com.apple.finder AppleShowAllFiles $SHOW_YESNO
killall Finder /System/Library/CoreServices/Finder.app
