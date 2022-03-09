#!/bin/bash
# My Telegram : https://t.me/digimaxiscelcomumo
# ==========================================
# Color
RED='\033[0;31m'
NC='\033[0m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHT='\033[0;37m'
# ==========================================
# Getting
#hanya aku yang mengerti 
# Link Hosting Kalian
scriptakmvpn="raw.githubusercontent.com/racunzx/akm/main/backup"

curl https://rclone.org/install.sh | bash
printf "q\n" | rclone config
wget -O /root/.config/rclone/rclone.conf "https://${scriptakmvpn}/rclone.conf"
git clone  https://github.com/magnific0/wondershaper.git
cd wondershaper
make install
cd
rm -rf wondershaper
echo > /home/limit
apt install msmtp-mta ca-certificates bsd-mailx -y
cat<<EOF>>/etc/msmtprc
defaults
tls on
tls_starttls on
tls_trust_file /etc/ssl/certs/ca-certificates.crt

account default
host smtp.gmail.com
port 587
auth on
user scriptakmssh21@gmail.com
from scriptakmssh21@gmail.com
password qngaxejnuuworequ 
logfile ~/.msmtp.log
EOF
chown -R www-data:www-data /etc/msmtprc
cd /usr/bin
wget -O autobackup "https://${scriptakmvpn}/autobackup.sh"
wget -O backup "https://${scriptakmvpn}/backup.sh"
wget -O restore "https://${scriptakmvpn}/restore.sh"
wget -O strt "https://${scriptakmvpn}/strt.sh"
wget -O limitspeed "https://${scriptakmvpn}/limitspeed.sh"
chmod +x autobackup
chmod +x backup
chmod +x restore
chmod +x strt
chmod +x limitspeed
cd
rm -f /root/set-br.sh