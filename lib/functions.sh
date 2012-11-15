# 
# Shell functions for jboss-as commands
#


# Read rerun's public functions
. $RERUN || {
    echo >&2 "ERROR: Failed sourcing rerun function library: \"$RERUN\""
    return 1
}


# ----------------------------
# Your functions declared here.
#

JBOSS_VERSION_DEFAULT="7.1.1.Final-1"


