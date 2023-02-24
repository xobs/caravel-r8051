#!/bin/sh
if [ ! -e "$1" ]
then
	echo "File $1 doesn't exist!"
	exit 1
fi
rm -f /tmp/pipe
mkfifo /tmp/pipe
(echo "read_db $1" > /tmp/pipe &)
openroad -gui /tmp/pipe
rm -f /tmp/pipe
