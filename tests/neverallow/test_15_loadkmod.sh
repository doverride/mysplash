#!/bin/sh

source ../run_tests.sh

sys_loadkmod ()

{

printf "%s\n" "--------------------------------------------------------------------------------"
printf "%s\n" "function: $FUNCNAME"
printf "%s\n" "category: neverallow"
printf "%s\n" "case: neverallow types that are not associated with sys_can_load_kernel_module"
printf "%s\n" "      to sys_module of capability"
printf "%s" "result:"

/usr/bin/secilc -v \
    $MIN \
    test_15_loadkmod.cil \
    -M false -o policy.29 -f file_contexts 2>/dev/null

}
