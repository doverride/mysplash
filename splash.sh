#!/bin/sh

test -d policy || mkdir policy

/usr/bin/secilc \
    source/av.cil \
    source/base/dev.cil \
    source/base/file.cil \
    source/base/fs.cil \
    source/base/net.cil \
    source/base/sec.cil \
    source/base/stor.cil \
    source/base/sys.cil \
    source/base/term.cil \
    source/base/unconfined.cil \
    source/config.cil \
    source/constraints.cil \
    source/entity.cil \
    source/isid.cil \
    source/mls.cil \
    source/object.cil \
    source/polcap.cil \
    source/subject.cil \
    source/support/classperms.cil \
    source/support/classmaps.cil \
    source/support/filepatterns.cil \
    source/support/ipcpatterns.cil \
    source/support/miscpatterns.cil \
    -M false -o policy/policy.29 -f contexts/files/file_contexts
