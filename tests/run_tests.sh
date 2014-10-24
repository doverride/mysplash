#!/bin/bash

read -d '' ABSOLUTE_MIN <<"EOF"
    ../../source/av.cil \
    ../../source/base/dev.cil \
    ../../source/base/file.cil \
    ../../source/base/fs.cil \
    ../../source/base/net.cil \
    ../../source/base/sec.cil \
    ../../source/base/sys.cil \
    ../../source/base/term.cil \
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
EOF

read -d '' MIN <<"EOF"
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
    ../../source/support/miscpatterns.cil
EOF

run_modularity_tests ()
{
pushd modularity \
    && . ./run_tests.sh
popd
}

run_neverallow_tests ()
{
pushd neverallow \
    && . ./run_tests.sh
popd
}

run_all_tests ()
{
run_modularity_tests
run_neverallow_tests
}

test "$1" == "ALL" && run_all_tests
