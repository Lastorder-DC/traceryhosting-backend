#!/bin/bash
cd /var/www/bot.lastorder.xyz/traceryhosting-backend

mv run_bots.log run_bots_$(date +%Y%m%d).log 
mv run_bots_error.log run_bots_error_$(date +%Y%m%d).log
gzip run_bots_$(date +%Y%m%d).log
gzip run_bots_error_$(date +%Y%m%d).log
touch run_bots.log
touch run_bots_error.log
