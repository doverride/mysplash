#!/bin/sh

source ../run_tests.sh

minimal_storage_unconfined ()

{

printf "%s\n" "--------------------------------------------------------------------------------"
printf "%s\n" "function: $FUNCNAME"
printf "%s\n" "category: modularity"
printf "%s\n" "case: must build with absolute minimal requirements: plus storage and unconfined"
printf "%s" "result:"

/usr/bin/secilc -v \
    $ABSOLUTE_MIN \
    ../../source/base/stor.cil \
    ../../source/base/unconfined.cil \
    -M false -o policy.29 -f file_contexts 2>/dev/null

}
