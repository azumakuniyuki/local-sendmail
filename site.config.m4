dnl # site.config.m4
dnl ############################################################################
dnl # Build Macro                                                              #
dnl ############################################################################
dnl #
APPENDDEF(`confENVDEF',`-D_PATH_SENDMAILCF=\"/usr/local/sendmail/etc/sendmail.cf\"')
APPENDDEF(`confENVDEF',`-D_DIR_SENDMAILCF=\"/usr/local/sendmail/etc/\"')
dnl # APPENDDEF(`confENVDEF',`-D_PATH_SENDMAILCF=\"/etc/mail/sendmail.cf\"')
dnl # APPENDDEF(`confENVDEF',`-D_DIR_SENDMAILCF=\"/etc/mail/\"')
APPENDDEF(`confENVDEF',`-D_PATH_SENDMAILPID=\"/usr/local/sendmail/var/run/sendmail.pid\"')
APPENDDEF(`conf_smrsh_ENVDEF', `-DCMDDIR="\"/usr/local/sendmail/var/adm/sm.bin\""')
APPENDDEF(`conf_smrsh_ENVDEF', `-DPATH="\"/bin:/usr/bin:/usr/local/bin\""')
dnl # APPENDDEF(`confENVDEF',`-D_PATH_SENDMAILPID=\"/etc/mail/sendmail.pid\"')
dnl # APPENDDEF(`confENVDEF',`-D_PATH_PATH=\"/etc/hosts\"')
dnl # APPENDDEF(`confENVDEF',`-DSASL')
dnl # APPENDDEF(`confENVDEF',`-DNETINET6=0')
dnl # APPENDDEF(`confMAPDEF',`-DMAP_REGEX -DNETINFO -DSOCKETMAP -DDNSMAP=1')
APPENDDEF(`conf_sendmail_ENVDEF',`-DMILTER')dnl
APPENDDEF(`conf_libmilter_ENVDEF', `-DMILTER')dnl
dnl # APPENDDEF(`conf_sendmail_ENVDEV',`-DSTARTTSL')dnl
dnl # APPENDDEF(`confLDOPTS',`-s')dnl <- strip binaries
dnl # APPENDDEF(`conf_sendmail_LIBS',`-lssl -lcrypt')dnl
APPENDDEF(`confMAPDEF',`-DMAP_REGEX -DDNSMAP=1 -DUSERDB=0')dnl
APPENDDEF(`confENVDEF',`-DNETUNIX=0 -DMATCHGECOS=0 -DXDEBUG=0')dnl
APPENDDEF(`confENVDEF',`-DSASL=2 -DSM_CONF_SHM=1')
APPENDDEF(`confLIBS',`-lsasl2')
APPENDDEF(`confLIBDIRS',`-L/usr/local/lib/sasl2 -L/usr/lib -L/usr/lib64')
APPENDDEF(`confINCDIRS',`-I/usr/local/include/sasl -I/usr/include -I/usr/include/gdbm')


dnl ############################################################################
dnl # Install Directory                                                        # 
dnl ############################################################################
dnl #
define(`confHFDIR',`/share/data')dnl		# helpfile directory
define(`confSTDIR',`/var/tmp')dnl		# statistics directory
define(`confEBINDIR',`/sbin/')dnl		# smrsh,mail.local
define(`confMBINDIR',`/sbin/')dnl		# sendmail
define(`confSBINDIR',`/sbin/')dnl		# makemap,editmap,mailstats,praliases
define(`confUBINDIR',`/bin/')dnl		# newaliases,mailq,hoststat,purgestat,vacation,rmail
define(`confINCLUDEDIR',`/include/')dnl		# #include file 
define(`confLIBDIR',`/lib/')dnl			# lib 
define(`confMANROOTMAN',`/usr/share')dnl	# manual root directory
define(`confMANROOT',`/usr/shamre/man/man')dnl # manual root directory
define(`confMSP_QUEUE_DIR',`/var/spool/cqueue')dnl


dnl ############################################################################
dnl # Install Configuration                                                    # 
dnl ############################################################################
dnl #
dnl # define(`confDONT_INSTALL_CATMAN')dnl	# do not install catman
dnl # define(`confNO_HELPFILE_INSTALL)')dnl	# do not install sendmail.hf
dnl # define(`confNO_STATISTICS_INSTALL)')dnl	# do not install sendmail.st
dnl # define(`confNO_MAN_INSTALL)')dnl		# do not install manual
dnl # define(`confNO_MAN_BUILD)')dnl		# do not build manual
dnl # define(`confINSTALL_RAWMAN')dnl		# install raw manual 
define(`confDONT_INSTALL_CATMAN')


dnl ############################################################################
dnl # Filename Configuration                                                   # 
dnl ############################################################################
dnl #
dnl # define(`confHFFILE',`sendmail.hf')	dnl# helpfile filename
dnl # define(`confSTFILE',`sendmail.st')	dnl# statistics filename


dnl ############################################################################
dnl # Permission, Group, Owner                                                 # 
dnl ############################################################################
dnl #
dnl # define(`confGBINMODE',`2555')		dnl# setUID sendmail permission
dnl # define(`confMBINMODE',`0550')		dnl# sendmail
dnl # define(`confSBINMODE'.`')			dnl# makemap,editmap...
dnl # define(`confUBINMODE',`')			dnl# newaliases,mailq...
dnl # define(`confSTMODE',`0600')		dnl# statistics permission
dnl #
dnl # define(`confGBINGRP',`smmsp')		dnl# setUID sendmail group
dnl # define(`confMBINGRP',`bin')		dnl# sendmail
dnl # define(`confSBINGRP'.`')			dnl# makemap,editmap...
dnl # define(`confUBINGRP',`')			dnl# newaliases,mailq...
dnl #
define(`confGBINOWN',`sendmail')		dnl# setUID sendmail owner
dnl # define(`confMBINOWN',`root')		dnl# sendmail
dnl # define(`confSBINOWN'.`')			dnl# makemap,editmap...
dnl # define(`confUBINOWN',`')			dnl# newaliases,mailq...
dnl # define(`confMSPQOWN',`smmsp')		dnl# clientmqueue/* owner
dnl #
