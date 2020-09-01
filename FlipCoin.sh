#!/bin/bash
randomCheck=$((1+RANDOM%2))
case $randomCheck in
		1)
			echo "Head is the Winner"
		;;
		2)
			echo "Tail is the Winner"
		;;
		*)
			echo "Tied"
		;;
esac
