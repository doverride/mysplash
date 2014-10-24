#!/bin/sh

source ../run_tests.sh

subject_mmapzero ()

{

printf "%s\n" "--------------------------------------------------------------------------------"
printf "%s\n" "function: $FUNCNAME"
printf "%s\n" "category: neverallow"
printf "%s\n" "case: neverallow types that are not associated with subject_can_mmap_low"
printf "%s\n" "      to mmap_zero of memprotect"
printf "%s" "result:"

/usr/bin/secilc -v \
    $MIN \
    test_05_mmapzero.cil \
    -M false -o policy.29 -f file_contexts 2>/dev/null

}
