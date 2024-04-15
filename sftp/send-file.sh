#!/bin/bash
#
# Description: Put file to remote server through sftp using public key
# Author: Babuli Pradhan
#
##################################################################

SFTP_USER=sftpuser
SFTP_SERVER_PATH=192.168.1.4:/data

sftp -v ${SFTP_USER}@${SFTP_SERVER_PATH} <<EOF
put input/test.txt
exit
EOF

result=$?
echo "SFTP status code is :${result}"
