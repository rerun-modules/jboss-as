#!/usr/bin/env roundup
#
# This file contains the test plan for the cleanup command.
# Execute the plan by invoking: 
#    
#     rerun stubbs:test -m jboss-as -p cleanup
#

# The Plan
# --------

describe "cleanup"


# ------------------------------
it_runs_without_arguments() {
    rerun jboss-as: cleanup
}
# ------------------------------

