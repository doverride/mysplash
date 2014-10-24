#!/bin/sh

source ../run_tests.sh

subject_entrypoint ()

{

printf "%s\n" "--------------------------------------------------------------------------------"
printf "%s\n" "function: $FUNCNAME"
printf "%s\n" "category: neverallow"
printf "%s\n" "case: neverallow types that are not associated with subject_entry_file_object"
printf "%s\n" "      to be used as a entrypoint to types that are associated with subject"
printf "%s" "result:"

/usr/bin/secilc -v \
    $MIN \
    test_01_entrypoint.cil \
    -M false -o policy.29 -f file_contexts 2>/dev/null

}
