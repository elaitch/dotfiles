#!/bin/bash
export http_proxy=127.0.0.1:8118
[[ -z $((xprop -id $(</tmp/tabbed.xid)) 2>/dev/null) ]] && tabbed -d > /tmp/tabbed.xid 
exec vimprobable2 -e $(</tmp/tabbed.xid) $( [[  "$1"  ]] && echo "$1") &
