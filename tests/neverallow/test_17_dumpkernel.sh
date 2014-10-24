#!/bin/sh

source ../run_tests.sh

sys_dumpkernel ()

{

printf "%s\n" "--------------------------------------------------------------------------------"
printf "%s\n" "function: $FUNCNAME"
printf "%s\n" "category: neverallow"
printf "%s\n" "case: neverallow types that are not associated with either"
printf "%s\n" "      sys_can_dump_kernel or sys_unconfined_subject to read file associated"
printf "%s\n" "      with type o.sys.proc.kcore.t"
printf "%s" "result:"

/usr/bin/secilc -v \
    $MIN \
    test_17_dumpkernel.cil \
    -M false -o policy.29 -f file_contexts 2>/dev/null

}
