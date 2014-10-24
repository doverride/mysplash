#!/bin/sh

source ../run_tests.sh

sec_setenforce ()

{

printf "%s\n" "--------------------------------------------------------------------------------"
printf "%s\n" "function: $FUNCNAME"
printf "%s\n" "category: neverallow"
printf "%s\n" "case: neverallow types that are not associated with either sec_can_setenforce or"
printf "%s\n" "      sec_unconfined_subject to setenforce of security of file associated with"
printf "%s\n" "      type o.sec.fs.t"
printf "%s" "result:"

/usr/bin/secilc -v \
    $MIN \
    test_09_setenforce.cil \
    -M false -o policy.29 -f file_contexts 2>/dev/null

}
