## Codius-XRP-wallet-balance
This script will give you realtime balance-info on your wallet used for Codius.

### Screenshot
![screen](https://github.com/jonaagenilsen/Codius-XRP-wallet-balance/blob/master/codius-XRP-wallet-balance.png)

## Installation
### 1. Create dir to for script(s)
`mkdir /root/scripts -p`

### 2. Fetch it:
`wget https://raw.githubusercontent.com/jonaagenilsen/Codius-XRP-wallet-balance/master/codius-XRP-wallet-balance.sh -O /root/scripts/codius-XRP-wallet-balance.sh`

### 3. Set proper rights:
`chmod 700 /root/scripts/codius-XRP-wallet-balance.sh`

### 4. Edit script before running:
`nano /root/scripts/codius-XRP-wallet-balance.sh` & edit variables.

### 5. Run/execute script:
`sh /root/scripts/codius-XRP-wallet-balance.sh`

## Keep script running after logout
### Install screen:
`yum install screen`

### Create a session with screen:
`screen -S whatever`

### Start your script:
`sh /root/scripts/codius-XRP-wallet-balance.sh`

### Detach screen-session:
Press *CTRL* + *a* then *d*

Script will continue running. You can now logout & login again, then issue command: `screen -x` to resume your session.

## Donations
Donations accepted (XRP) to `rN3HmkFCmZJUVPhSiugNGLL36eH9euRDHF`
