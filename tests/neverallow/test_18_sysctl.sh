#!/bin/sh

source ../run_tests.sh

sys_sysctl ()

{

printf "%s\n" "--------------------------------------------------------------------------------"
printf "%s\n" "function: $FUNCNAME"
printf "%s\n" "category: neverallow"
printf "%s\n" "case: neverallow types that are not associated with"
printf "%s\n" "      sys_can_write_sysctl_security_and_usermodehelper to append and write file"
printf "%s\n" "      associated with either type sys.sysctl.security.t or"
printf "%s\n" "      type sys.sysctl.usermodehelper.t"
printf "%s" "result:"

/usr/bin/secilc -v \
    $MIN \
    test_18_systl.cil \
    -M false -o policy.29 -f file_contexts 2>/dev/null

}
