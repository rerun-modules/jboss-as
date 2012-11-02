#!/usr/bin/env roundup
#
# This file contains the test plan for the start command.
# Execute the plan by invoking: 
#    
#     rerun stubbs:test -m jboss-as -p start
#

# Helpers
# ------------

rerun() {
    command $RERUN -M $RERUN_MODULES "$@"
}

# The Plan
# --------

describe "start"

it_runs_without_arguments() {
    if $(chkconfig jboss-as)
    then
      rerun jboss-as:stop
      rerun jboss-as:start
      rerun jboss-as:stop
    fi
}
