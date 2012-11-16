#!/usr/bin/env roundup
#
# This file contains the test plan for the remove command.
# Execute the plan by invoking: 
#    
#     rerun stubbs:test -m jboss-as -p remove
#

# The Plan
# --------

describe "remove"


# ------------------------------
# Replace this test. 
it_runs_without_arguments() {
    rerun jboss-as: remove
}

it_runs_with_cleanup() {
    rerun jboss-as: remove --cleanup true
}
# ------------------------------

