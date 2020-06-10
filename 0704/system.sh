#!/bin/sh

#kernal version ,os and version release no 
uname -r
cat /etc/os-release
lsb_release -a

#all avilable shell
cat /etc/shells

#cpu info type and speed etc
cat /proc/cpuinfo
lscpu

#memory info
free -m

#hard disk info
df 
free -m

#file system
mount | column -t

