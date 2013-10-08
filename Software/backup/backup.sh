#! /bin/bash
# No, we can not deal with sh alone.
set -e
set -u
# In case the admin somehow wants to have this script located someplace else,
# he can set BASEDIR, and we will take that. If it is unset we take ${HOME}
# How the admin sets this isn't our place to deal with. One could use a wrapper
# for that. Or pam_env. Or whatever fits in the local setup. :)
BASEDIR=${BASEDIR:-"${HOME}"}


#This is the mail to
MAILTO=${MAILTO:-"foo@bar.com"}

#This is the mail body
MAILBODY="Host $(hostname): $(date +"%Y.%m.%d-%H:%M:%S %Z") Config files list in ${BASEDIR}/backup/chroot.list have been backed up to this email"

#This is the mail Subject
MAILSUBJECT="Back up Config $(date +"%Y.%m.%d")"

#Attachment file names
ATTACHEDFILE="/tmp/ConfigFile-Backup-$(date +"%Y.%m.%d").tar.gz"

tar cfz ${ATTACHEDFILE} --files-from ${BASEDIR}/backup/chroot.list > /dev/null 2>&1
cp -f ${ATTACHEDFILE} ${BASEDIR}/backup/chroot.tar.gz

#send the mail
if [ -n "${MAILTO}" ]; then
     # In case the back up of log file exist
          if [ -f "${ATTACHEDFILE}" ]; then
                echo "${MAILBODY}" | mutt -s "${MAILSUBJECT}" -a ${ATTACHEDFILE} -a ${BASEDIR}/backup/chroot.list -- ${MAILTO}
        rm -rf ${ATTACHEDFILE}
          else
            echo "backup failed" | mutt -s "${MAILSUBJECT}" -- ${MAILTO}
          fi
fi
