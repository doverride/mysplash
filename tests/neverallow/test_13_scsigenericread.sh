#!/bin/sh

source ../run_tests.sh

stor_scsigenericread ()

{

printf "%s\n" "--------------------------------------------------------------------------------"
printf "%s\n" "function: $FUNCNAME"
printf "%s\n" "category: neverallow"
printf "%s\n" "case: neverallow types that are not associated with either"
printf "%s\n" "      stor_unconfined_subject or stor_can_read_scsi_generic to read chr_file"
printf "%s\n" "      associated with type o.dev.stor.scsi_generic.t"
printf "%s" "result:"

/usr/bin/secilc -v \
    $MIN \
    test_13_scsigenericread.cil \
    -M false -o policy.29 -f file_contexts 2>/dev/null

}
