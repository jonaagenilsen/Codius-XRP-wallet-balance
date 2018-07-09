## Codius-XRP-wallet-balance
This script will give you realtime balance-info on your wallet used for Codius. Each time you run the script it will be logged to `/root/scripts/codius-XRP-wallet-balance.log.txt` so it's a good idea to keep it running 24/7 inside a screen-session (see below).

### Screenshot
![screen](https://github.com/jonaagenilsen/Codius-XRP-wallet-balance/blob/master/codius-XRP-wallet-balance.png)

## Installation
### 1. Needed packages
`yum install bc screen`

### 2 Create dir to for script(s)
`mkdir /root/scripts -p`

### 3Fetch it:
`wget https://raw.githubusercontent.com/jonaagenilsen/Codius-XRP-wallet-balance/master/codius-XRP-wallet-balance.sh -O /root/scripts/codius-XRP-wallet-balance.sh`

### 4 Set proper rights:
`chmod 700 /root/scripts/codius-XRP-wallet-balance.sh`

### 5 Edit script before running:
`nano /root/scripts/codius-XRP-wallet-balance.sh` & edit variables.

### 6 Run/execute script:
`sh /root/scripts/codius-XRP-wallet-balance.sh`


## Keep script running after logout (optional)
### Install screen:
`yum install screen`

### Create a session with screen:
`screen -S whatever`

### Start your script:
`sh /root/scripts/codius-XRP-wallet-balance.sh`

### Detach screen-session:
Press **CTRL** + **a** then **d**

Script will continue running. You can now logout & login again, then issue command: `screen -x` to resume your session.

## Donations
Donations accepted (XRP) to `rN3HmkFCmZJUVPhSiugNGLL36eH9euRDHF`
