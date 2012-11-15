#!/usr/bin/env roundup
#
# This file contains test scripts to run for the build command.
# Execute it by invoking: 
#    
#     rerun stubbs:test -m jboss-as -c build
#

# Helpers
# ------------

rerun() {
    command $RERUN -M $RERUN_MODULES "$@"
}

# The Plan
# --------

describe "build"

it_can_build_the_jboss_example() {
   # build the package:

   buildTmp="$(mktemp -d)"

   cp -r $RERUN_MODULES/jboss-as/examples/build/jboss "${buildTmp}"

   rerun jboss-as:build -v 7.1.1.Final -d "${buildTmp}"/jboss

   # check the package:
   rpm -qi -p "${buildTmp}"/jboss/RPMS/noarch/jboss-as-7.1.1.Final-1.noarch.rpm

   rpm -qlv -p "${buildTmp}"/jboss/RPMS/noarch/jboss-as-7.1.1.Final-1.noarch.rpm

   rpm -q --requires -p "${buildTmp}"/jboss/RPMS/noarch/jboss-as-7.1.1.Final-1.noarch.rpm

   # clean up:
   rm -rf ${buildTmp}
}
