#!/bin/sh

source ../run_tests.sh

sec_setsecparam ()

{

printf "%s\n" "--------------------------------------------------------------------------------"
printf "%s\n" "function: $FUNCNAME"
printf "%s\n" "category: neverallow"
printf "%s\n" "case: neverallow types that are not associated with either sec_can_setsecparam"
printf "%s\n" "      or sec_unconfined_subject to setsetparam of security of file associated"
printf "%s\n" "      with type o.sec.fs.t"
printf "%s" "result:"

/usr/bin/secilc -v \
    $MIN \
    test_10_setsecparam.cil \
    -M false -o policy.29 -f file_contexts 2>/dev/null

}
