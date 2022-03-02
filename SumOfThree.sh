#!/bin/bash -x

arr=(1 2 3)
echo Sum of array elements: $(( ${arr[@]/%/ *} 0))
