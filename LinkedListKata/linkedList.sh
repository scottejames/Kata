#!/bin/bash

echo "testing linked list"
function addNode {
	echo $2 > $1
}

function listList {
	# find first node
	CURRENT=$1
	while [ $CURRENT != "null" ]
	do
		NEXT=`cat $CURRENT`
		echo " Node : " $CURRENT
		CURRENT=$NEXT
	done
}
function reverseList { 
	# find first node
	CURRENT=$1
	while [ $CURRENT != "null" ]
	do
		NEXT=`cat $CURRENT`
		cat $NEXT > $CURRENT".tmp"
		CURRENT=$NEXT
	done
}
function debug {
	echo $1
}

addNode "A" "B"
addNode "B" "C"
addNode "C" "null"

listList "A"
reversreList "A"
listList "A"