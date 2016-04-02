#!/bin/sh

AssertEquals()
{
#	echo "Compairing $1 and $2"
	if [ "Foo".$1 != "Foo".$2 ] 
	then
		echo Fail
	else
		echo Pass
	fi
		
}

Chop()
{
	start=0
	val=$1
	array=$2 
	
	# Protect the shell from odd results
	echo "ARRAY: $array" >> /tmp/results.out	
	if [ "Foo""$array" == "Foo" ]
	then
		return -1
	fi
		
		
       	stop=`echo $array | awk -F, {'print NF'}`

	echo "Start: $start Stop $stop" >> /tmp/results.out
	middle=`expr $stop - $start`
	echo $middle >> /tmp/results.out
        
#        while start != stop
#                let middle = start + (stop - start) / 2
#                if a:array[middle] == a:val
#                        return middle
#                endif
#                if a:val < a:array[middle]
#                        let stop = middle
#                else
#                        let start = middle + 1
#                endif
#        endwhile
#        return -1
 

	echo $1
	return -1
}

AssertEquals -1 `Chop 3 ""`
AssertEquals -1 `Chop 3  ""`
AssertEquals -1 `Chop 3  "1"`
#AssertEquals 0  `Chop 1  "1"`
AssertEquals 0  `Chop 1  "1  3  5"`
#AssertEquals 1  `Chop 3  "1  3  5"`
#AssertEquals 2  `Chop 5  "1  3  5"`
#AssertEquals -1 `Chop 0  "1  3  5"`
#AssertEquals -1 `Chop 2  "1  3  5"`
#AssertEquals -1 `Chop 4  "1  3  5"`
#AssertEquals -1 `Chop 6  "1  3  5"`
#AssertEquals 1  `Chop 3  "1  3  5  7"`
#AssertEquals 2  `Chop 5  "1  3  5  7"`
#AssertEquals 3  `Chop 7  "1  3  5  7"`
#AssertEquals -1 `Chop 0  "1  3  5  7"`
#AssertEquals -1 `Chop 2  "1  3  5  7"`
#AssertEquals -1 `Chop 4  "1  3  5  7"`
#AssertEquals -1 `Chop 6  "1  3  5  7"`
#AssertEquals -1 `Chop 8  "1  3  5  7"`
#
