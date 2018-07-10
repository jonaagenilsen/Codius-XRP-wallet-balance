## Codius-XRP-wallet-balance
This script will give you realtime balance-info on your wallet used for Codius. Each time you run the script it will be logged to `/root/scripts/codius-XRP-wallet-balance.log.txt` so it's a good idea to keep it running 24/7 inside a screen-session (see below).

### Screenshot
![screen](https://github.com/jonaagenilsen/Codius-XRP-wallet-balance/blob/master/codius-XRP-wallet-balance.png)

## Installation
### 1. Needed packages
`yum install bc curl nano screen -y -q`

### 2 Create dir to for script(s)
`mkdir /root/scripts -p`

### 3. Fetch it:
`wget https://raw.githubusercontent.com/jonaagenilsen/Codius-XRP-wallet-balance/master/codius-XRP-wallet-balance.sh -O /root/scripts/codius-XRP-wallet-balance.sh`

### 4. Set proper rights:
`chmod 700 /root/scripts/codius-XRP-wallet-balance.sh`

### 5. Edit script before running:
`nano /root/scripts/codius-XRP-wallet-balance.sh` & edit variables:

**WALLET**: enter your wallet-address here

**START_BALANCE**: enter your balance from your wallet after payment-channel(s) has been setup. https://bithomp.com/explorer/r3RWq6awu6mVA7jNm9XoYkgAXCSZ2Wg8uw is a nice resource for tracking payments & transactions.

**SINCE**: you're preferred text for tracking the start of incoming XRP to your wallet running Codius

**DELAY_BEFORE_REFRESH**: can be set to (# of seconds) whatever you prefer. 1800 = every 30 mins

Save script. You are ready.

### 6. Run/execute script:
`sh /root/scripts/codius-XRP-wallet-balance.sh`


## Keep script running after logout (optional)
### 1. Create a session with screen:
`screen -S whatever`

### 2. Start your script:
`sh /root/scripts/codius-XRP-wallet-balance.sh`

### 3. Detach screen-session:
Press **CTRL** + **a** then **d**

Note: script will continue running inside the screen-session. It doesn't quit.

### 4. Reattach screen-session:
You can now logout & login again (after detaching screen-session), then issue command: `screen -x` anytime to resume your session. Screen-sessions run until they are shut down, or server reboots. 

## Donations
[<img src="https://xrptipbot.nodum.io/static/tipbot%20card-min.png" data-canonical-src="https://www.xrptipbot.com/stats/user/account:jonaagenilsen/network:twitter/" width="240" height="100" />
](https://www.xrptipbot.com/stats/user/account:jonaagenilsen/network:twitter/)
