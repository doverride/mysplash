#!/bin/sh

subject_setcurrent ()

{

printf "%s\n" "--------------------------------------------------------------------------------"
printf "%s\n" "function: $FUNCNAME"
printf "%s\n" "category: neverallow"
printf "%s\n" "case: neverallow types that are not associated with"
printf "%s\n" "      subject_can_set_current_context to set current context of process"
printf "%s" "result:"

/usr/bin/secilc -v \
    test_02_setcurrent.cil \
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
