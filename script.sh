#! /bin/bash


OLD_IFS=$IFS
IFS=','

arr=($PREFIXES)

echo "Setting:  $arr"
(echo "zebra" ; echo "enable"; echo "configure terminal"; echo "ipv6 allocate-prefix $arr" ; echo "exit" ; echo "exit") | nc :: ospf6d

echo
echo "done"

IFS=$OLD_IFS

