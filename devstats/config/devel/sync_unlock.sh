#!/bin/bash
cronctl.sh devstats on || exit 1
cronctl.sh devstats.sh on || exit 2
if [ -z "$FROM_WEBHOOK" ]
then
  cronctl.sh webhook on || exit 3
fi
echo 'All sync and deploy jobs enabled'
