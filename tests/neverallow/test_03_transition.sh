#!/bin/sh

source ../run_tests.sh

subject_transition ()

{

printf "%s\n" "--------------------------------------------------------------------------------"
printf "%s\n" "function: $FUNCNAME"
printf "%s\n" "category: neverallow"
printf "%s\n" "case: neverallow types that are associated with subject to transition"
printf "%s\n" "      processes to types that are not associated with subject"
printf "%s" "result:"

/usr/bin/secilc -v \
    $MIN \
    test_03_transition.cil \
    -M false -o policy.29 -f file_contexts 2>/dev/null

}
