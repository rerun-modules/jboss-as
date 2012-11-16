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

# ------------------------------

