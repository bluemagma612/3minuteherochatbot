#!/bin/sh

if [ $(ps -e -o uid,cmd | grep $UID | grep node | grep -v grep | wc -l | tr -s "\n") -eq 0 ]
then
        export PATH=/usr/local/bin:$PATH
	export NODE_ENV=production
	export PAGE_ACCESS_TOKEN=EAARyZCsbsTZAMBANZCNUkLW2vGeIZCFDsfqYl6FqqV2rKrdnw6rAeOp9POzUXzPvX1uDqhPUvDlGBmPct6mwxXxu41vitFuDPLImmAr899m2880dXBPDtMMZB4n0lfBZC9hY7WLHmCcTBQZCy9OGEkPci8ZBKNCT4dhrm2UOcjCZBsgZDZD
	cd /opt/3minuteherochatbot && forever --spinSleepTime 10000 start server.js >> forever.log 2>&1
fi
