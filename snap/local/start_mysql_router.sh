#!/bin/bash

CONFIGURED=1
if [ $CONFIGURED -eq 1 ]; then
        # Change ownership of snap directories to allow snap_daemon to read/write
        chown -R snap_daemon:root $SNAP_DATA
        chown -R snap_daemon:root $SNAP_COMMON
fi

# For security measures, daemons should not be run as sudo. Execute mongod as the non-sudo user: snap-daemon.
$SNAP/usr/bin/setpriv --clear-groups --reuid snap_daemon \
  --regid snap_daemon -- usr/bin/mysqlrouter "$@"