#!/bin/sh

test -d policy || /bin/mkdir policy

EXCLUDE="tests"

gen_listing ()

{
    local MODULES=$(/bin/find . -type f \( -iname "*.cil" \) | /bin/cut -d/ -f2-)

    for i in $EXCLUDE ;
        do
            MODULES=$(printf "%s\n" "$MODULES" | /bin/grep -v $i)
        done

    printf "%s\n" "$MODULES" | /bin/sort > LISTING
}

/usr/bin/secilc \
    $(test -f LISTING || gen_listing && /bin/cat LISTING) \
    $* \
    -o policy/policy.29 -f contexts/files/file_contexts
