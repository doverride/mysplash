#!/bin/bash

test_fail ()

{

printf "\e[0;31m [FAIL]\e[m\n"

}

test_fail_header ()

{

printf "\e[0;31m [FAIL]\e[m\n"
exit 192

}

test_pass ()

{

printf "\e[0;32m [PASS]\e[m\n"

}

test_do ()

{


printf "%s\n" "--------------------------------------------------------------------------------"
printf "%s" "header: $1:"
source $1 2>/dev/null || test_fail_header && test_pass

$2 2>/dev/null || test_fail && test_pass

}

for i in $(ls | grep ^test.*\.sh$) ;
    do
        test_do $(echo $i "$(grep .*\(\)$ $i | awk -F" " '{ print $1 }')") ;
    done
