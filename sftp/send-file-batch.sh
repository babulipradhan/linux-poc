#!/bin/bash
#
# Description: Put file to remote server through sftp using public key
# Executes the command in batch
# Author: Babuli Pradhan
#
##################################################################

SFTP_USER=sftpuser
SFTP_SERVER_PATH=192.168.1.4:/data
#SFTP_SERVER_PATH=192.168.1.4 #for exception scenario use this

echo "put input/test.txt" > batchfile.txt
sftp -b batchfile.txt ${SFTP_USER}@${SFTP_SERVER_PATH} <<EOF
exit
EOF

result=$?
echo "SFTP status code is :${result}"
