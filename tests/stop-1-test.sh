#!/usr/bin/env roundup
#
# This file contains the test plan for the stop command.
# Execute the plan by invoking: 
#    
#     rerun stubbs:test -m jboss-as -p stop
#

# Helpers
# ------------

rerun() {
    command $RERUN -M $RERUN_MODULES "$@"
}

# The Plan
# --------

describe "stop"

it_runs_without_arguments() {
    if $(chkconfig jboss-as)
    then
      rerun jboss-as:stop
    fi
}
