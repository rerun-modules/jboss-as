#!/usr/bin/env roundup
#
# This file contains the test plan for the erase command.
# Execute the plan by invoking: 
#    
#     rerun stubbs:test -m jboss-as -p erase
#

# The Plan
# --------

describe "erase"


# ------------------------------
it_runs_without_arguments() {
    rerun jboss-as: erase
}
# ------------------------------

