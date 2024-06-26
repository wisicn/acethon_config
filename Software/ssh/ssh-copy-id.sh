#!/bin/bash
KEY="$HOME/.ssh/id_rsa.pub"
if [ ! -f ~/.ssh/id_rsa.pub ];then
   echo "private key not found at $KEY"
   echo "* please create it with \"ssh-keygen -t rsa\" *"
   echo "* to login to the remote host without a password don't give the key you create with ssh-keygen a password! *"
   exit
fi

if [ -z $1 ];then
   echo "Please specify user@host.tld as the first switch to this script"
   exit
fi

echo "Putting your key on $@ ... "

KEYCODE=`cat $KEY`
ssh -q $@ "echo \"$KEYCODE\" >> ~/.ssh/authorized_keys"

echo "done!"
