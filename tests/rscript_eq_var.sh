#!/bin/bash
# added 2014-01-17 by rgerhards
# This file is part of the rsyslog project, released under ASL 2.0
echo ===============================================================================
echo \[rscript_eq.sh\]: testing rainerscript EQ statement comparing two variables
. $srcdir/diag.sh init
. $srcdir/diag.sh startup rscript_eq_var.conf
. $srcdir/diag.sh injectmsg  0 1
echo doing shutdown
. $srcdir/diag.sh shutdown-when-empty
echo wait on shutdown
. $srcdir/diag.sh wait-shutdown 
. $srcdir/diag.sh seq-check  0 0
. $srcdir/diag.sh exit
