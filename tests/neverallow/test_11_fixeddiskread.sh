#!/bin/sh

source ../run_tests.sh

stor_fixeddiskread ()

{

printf "%s\n" "--------------------------------------------------------------------------------"
printf "%s\n" "function: $FUNCNAME"
printf "%s\n" "category: neverallow"
printf "%s\n" "case: neverallow types that are not associated with either"
printf "%s\n" "      stor_unconfined_subject or stor_can_read_fixed_disk to read chr_file and"
printf "%s\n" "      blk_file associated with type o.dev.stor.fixed_disk.t"
printf "%s" "result:"

/usr/bin/secilc -v \
    $MIN \
    test_11_fixeddiskread.cil \
    -M false -o policy.29 -f file_contexts 2>/dev/null

}
