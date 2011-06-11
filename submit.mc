divert(-1)
#
# Copyright (c) 2001-2003 Sendmail, Inc. and its suppliers.
#	All rights reserved.
#
# By using this file, you agree to the terms and conditions set
# forth in the LICENSE file which can be found at the top level of
# the sendmail distribution.
#
#

#
#  This is the prototype file for a set-group-ID sm-msp sendmail that
#  acts as a initial mail submission program.
#

divert(0)dnl
VERSIONID(`$Id: submit.mc,v 8.14 2006/04/05 05:54:41 ca Exp $')
define(`confCF_VERSION', `Submit')dnl
define(`__OSTYPE__',`')dnl dirty hack to keep proto.m4 from complaining
define(`_USE_DECNET_SYNTAX_', `1')dnl support DECnet
define(`confTIME_ZONE', `USE_TZ')dnl
define(`confDONT_INIT_GROUPS', `True')dnl
define(`STATUS_FILE',`-o /usr/local/sendmail/etc/submit.st')dnl
define(`confPID_FILE',`/usr/local/sendmail/var/run/submit.pid')dnl
define(`MSP_QUEUE_DIR',`/usr/local/sendmail/var/spool/clientmqueue')dnl
define(`HELP_FILE',`/usr/local/sendmail/etc/helpfile')dnl
dnl
dnl If you use IPv6 only, change [127.0.0.1] to [IPv6:::1]
FEATURE(`msp', `[127.0.0.1]')dnl
