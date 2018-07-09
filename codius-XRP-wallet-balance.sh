#!/bin/bash
#
# (c) jonaagenilsen@gmail.com / https://twitter.com/jonaagenilsen
#

#
# Requirements:
#
# Install needed packages: yum install bc screen
# mkdir /root/scripts -p
#
# paste script in: /root/scrips/codius-XRP-wallet-balance.sh
# change: WALLET / START_BALANCE & SINCE variables below
#
# chmod 700 /root/scripts/codius-XRP-wallet-balance.sh
#
# (setup screen): screen -S d
# (start script): sh /root/scripts/codius-XRP-wallet-balance.sh
# (detach screen): ctrl + 'a' then 'd'
#
# Logout & login & re-attach screen after login: screen -x. Script will be running as long as the host is up!
# Please check documentation for using screen if this is unfamiliar to you.
#

WALLET=r3RWq6awu6mVA7jNm9XoYkgAXCSZ2Wg8uw
START_BALANCE=55.414748
SINCE="(since 20180703)"

BALANCE=0
while true
do
  DATE=`date '+%Y-%m-%d %H:%M:%S'`

  URL=https://data.ripple.com/v2/accounts/$WALLET/balances
  BALANCE=`curl -s $URL | sed 's/.*"value":*//g' | sed 's/"//g' | sed 's/}//g' | sed 's/]//g'`
  EARNINGS=`echo ""$BALANCE - $START_BALANCE"" | bc`
  echo "$DATE XRP balance: $BALANCE (earned: $EARNINGS) $SINCE"
  echo "$DATE XRP balance: $BALANCE (earned: $EARNINGS) $SINCE" >> /root/scripts/wallet_balance.txt
  sleep 1800
done

