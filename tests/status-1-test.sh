#!/usr/bin/env roundup
#
# This file contains the test plan for the status command.
# Execute the plan by invoking: 
#    
#     rerun stubbs:test -m jboss-as -p status
#

# Helpers
# ------------

rerun() {
    command $RERUN -M $RERUN_MODULES "$@"
}

# The Plan
# --------

describe "status"

it_runs_without_arguments() {
    if $(chkconfig jboss-as)
    then
      rerun jboss-as:start
      rerun jboss-as:status

      rerun jboss-as:stop

      if ! $(rerun jboss-as:status)
      then
        exit 0
      fi
    fi
}
