#!/bin/sh

source ../run_tests.sh

subject_setcurrent ()

{

printf "%s\n" "--------------------------------------------------------------------------------"
printf "%s\n" "function: $FUNCNAME"
printf "%s\n" "category: neverallow"
printf "%s\n" "case: neverallow types that are not associated with"
printf "%s\n" "      subject_can_set_current_context to set current context of process"
printf "%s" "result:"

/usr/bin/secilc -v \
    $MIN \
    test_02_setcurrent.cil \
    -M false -o policy.29 -f file_contexts 2>/dev/null

}
