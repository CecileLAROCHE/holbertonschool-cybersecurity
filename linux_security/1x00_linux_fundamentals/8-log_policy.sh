#!/bin/bash
mkdir -p "$1" && chown root:"$2" "$1" && chmod 2750 "$1" && echo -e "$1/*.log {\n    create 0640 root $2\n    missingok\n    rotate 7\n    compress\n    notifempty\n}" > /etc/logrotate.d/app
