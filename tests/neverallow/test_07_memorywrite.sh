#!/bin/sh

source ../run_tests.sh

dev_memorywrite ()

{

printf "%s\n" "--------------------------------------------------------------------------------"
printf "%s\n" "function: $FUNCNAME"
printf "%s\n" "category: neverallow"
printf "%s\n" "case: neverallow types that are not associated with either"
printf "%s\n" "      dev_unconfined_subject or dev_can_write_memory to append and write"
printf "%s\n" "      chr_file associated with type o.dev.memory.t"
printf "%s" "result:"

/usr/bin/secilc -v \
    $MIN \
    test_07_memorywrite.cil \
    -M false -o policy.29 -f file_contexts 2>/dev/null

}
