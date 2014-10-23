#!/bin/sh

stor_fixeddiskwrite ()

{

printf "%s\n" "--------------------------------------------------------------------------------"
printf "%s\n" "function: $FUNCNAME"
printf "%s\n" "category: neverallow"
printf "%s\n" "case: neverallow types that are not associated with either"
printf "%s\n" "      stor_unconfined_subject or stor_can_write_fixed_disk to write chr_file and"
printf "%s\n" "      blk_file associated with type o.dev.stor.fixed_disk.t"
printf "%s" "result:"

/usr/bin/secilc -v \
    test_12_fixeddiskwrite.cil \
    ../../source/av.cil \
    ../../source/base/dev.cil \
    ../../source/base/file.cil \
    ../../source/base/fs.cil \
    ../../source/base/net.cil \
    ../../source/base/sec.cil \
    ../../source/base/stor.cil \
    ../../source/base/sys.cil \
    ../../source/base/term.cil \
    ../../source/base/unconfined.cil \
    ../../source/config.cil \
    ../../source/constraints.cil \
    ../../source/entity.cil \
    ../../source/isid.cil \
    ../../source/mls.cil \
    ../../source/object.cil \
    ../../source/polcap.cil \
    ../../source/subject.cil \
    ../../source/support/classperms.cil \
    ../../source/support/classmaps.cil \
    ../../source/support/filepatterns.cil \
    ../../source/support/ipcpatterns.cil \
    ../../source/support/miscpatterns.cil \
    -M false -o policy.29 -f file_contexts 2>/dev/null

}
