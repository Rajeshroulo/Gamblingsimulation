#!/bin/bash -x

echo Enter the stake
read s

echo wins stake is $(( $s+50 ))
echo loss stake is $(( $s-50 ))
