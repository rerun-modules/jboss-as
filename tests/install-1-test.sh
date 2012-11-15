#!/usr/bin/env roundup
#
# This file contains the test plan for the install command.
# Execute the plan by invoking: 
#    
#     rerun stubbs:test -m jboss-as -p install
#

# The Plan
# --------

describe "install"

it_fails_without_any_arguments() {
   rerun jboss-as: install || { true; }
}

it_runs_with_install_url() {

   buildTmp="$(mktemp -d)"

   cp -r $RERUN_MODULES/jboss-as/examples/build/jboss "${buildTmp}"

   rerun jboss-as:build -v 7.1.1.Final -d "${buildTmp}"/jboss

   # check the package:
   rpm -qi -p "${buildTmp}"/jboss/RPMS/noarch/jboss-as-7.1.1.Final-1.noarch.rpm

   rpm -qlv -p "${buildTmp}"/jboss/RPMS/noarch/jboss-as-7.1.1.Final-1.noarch.rpm

   rpm -q --requires -p "${buildTmp}"/jboss/RPMS/noarch/jboss-as-7.1.1.Final-1.noarch.rpm

   sudo yum -y --nogpgcheck localinstall "file://${buildTmp}/jboss/RPMS/noarch/jboss-as-7.1.1.Final-1.noarch.rpm"

   rm -rf "${buildTmp}"
}

# ------------------------------

