#!/bin/sh

source ../run_tests.sh

dev_memoryread ()

{

printf "%s\n" "--------------------------------------------------------------------------------"
printf "%s\n" "function: $FUNCNAME"
printf "%s\n" "category: neverallow"
printf "%s\n" "case: neverallow types that are not associated with either"
printf "%s\n" "      dev_unconfined_subject or dev_can_read_memory to read chr_file associated"
printf "%s\n" "      with type o.dev.memory.t"
printf "%s" "result:"

/usr/bin/secilc -v \
    $MIN \
    test_06_memoryread.cil \
    -M false -o policy.29 -f file_contexts 2>/dev/null

}
