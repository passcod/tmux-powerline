#!/usr/bin/env bash

smc="/Applications/smcFanControl.app/Contents/Resources/smc"
sensor=TC0P

echo -n "∆ "

$smc -k $sensor -r | \
sed 's/.*bytes \(.*\))/\1/' | \
sed 's/\([0-9a-fA-F]*\)/0x\1/g' | \
perl -ne 'chomp; ($low,$high) = split(/ /); print "1k"; print (((hex($low)*256)+hex($high))/4/64); print " 1/n\n";' | \
dc

echo "°C"
