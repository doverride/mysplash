#!/bin/sh

test -d policy || mkdir policy

contrib ()

{

LAYERS+=($(for a in $(ls source/contrib) ; do printf "%s\n" "source/contrib/$a" ; done))

for LAYER in ${LAYERS[*]} ; do
        MODULES+=($(for b in ${LAYERS[*]} ; do printf "%s\n" "$(ls $b | grep .*\.cil$)" ; done))

        for MODULE in ${MODULES[*]} ; do
                printf "%s\n" "$LAYER/$MODULE"
        done
done

}

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
    $(contrib) \
   -M false -o policy/policy.29 -f contexts/files/file_contexts
