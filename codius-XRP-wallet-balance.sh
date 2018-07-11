#!/bin/bash
#
# (c) jonaagenilsen@gmail.com / https://twitter.com/jonaagenilsen
#
#
# Requirements:
#
# Install needed packages: yum install bc screen sed
# mkdir /root/scripts -p
#
# Put script in: /root/scrips/codius-XRP-wallet-balance.sh
# change variables in script below:
#
# WALLET
# START_BALANCE (track your first balance on with: https://bithomp.com/explorer/r3RWq6awu6mVA7jNm9XoYkgAXCSZ2Wg8uw)
# SINCE 
# DELAY_BEFORE_REFRESH
#
# chmod 700 /root/scripts/codius-XRP-wallet-balance.sh
# Run it: sh /root/scripts/codius-XRP-wallet-balance.sh
#
#
# Optional: run script inside screen and it will run all the time. Even if you disconnect SSH session :)
#
# (setup screen): screen -S d
# (start script): sh /root/scripts/codius-XRP-wallet-balance.sh
# (detach screen): ctrl + 'a' then 'd'
#
# Logout & login & re-attach screen after login: screen -x. Script is still running!
# Please check documentation for using screen if this is unfamiliar to you.
#

WALLET=r3RWq6awu6mVA7jNm9XoYkgAXCSZ2Wg8uw
START_BALANCE=55.414748
SINCE="(since 20180703)"
DELAY_BEFORE_REFRESH=180 # Seconds. Default: 3 minutes.

#
# Do not change anything below.
#
BALANCE=0
while true
do
  DATE=`date '+%Y-%m-%d %H:%M:%S'`

  URL=https://data.ripple.com/v2/accounts/$WALLET/balances
  BALANCE=`curl -s $URL | sed 's/.*"value":*//g' | sed 's/"//g' | sed 's/}//g' | sed 's/]//g'`
  EARNINGS=`echo ""$BALANCE - $START_BALANCE"" | bc`
  echo "$DATE XRP balance: $BALANCE \e[93mearned: $EARNINGS\e[0m $SINCE"
  echo "$DATE XRP balance: $BALANCE earned: $EARNINGS $SINCE" >> /root/scripts/codius-XRP-wallet-balance.log.txt
  sleep $DELAY_BEFORE_REFRESH
done

