#!/bin/bash
echo "Fixing perms on $STOREDIR ($UID:$GID)"
chown -R $UID:$GID $STOREDIR

