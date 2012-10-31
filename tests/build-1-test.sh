#!/usr/bin/env roundup
#
# This file contains the test plan for the build command.
# Execute the plan by invoking: 
#    
#     rerun stubbs:test -m jboss-as -p build
#

# Helpers
# ------------

rerun() {
    command $RERUN -M $RERUN_MODULES "$@"
}

# The Plan
# --------

describe "build"

it_runs_without_arguments() {
    rerun jboss-as:build
}
