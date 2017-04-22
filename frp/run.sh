#!/bin/sh

echo "--> generating password"
pd=$(date +%s | sha256sum | base64 | head -c 16 ; echo)
: ${PASSWORD:=$pd}
echo "--> password: $PASSWORD"
echo "--> generating config file"
cat <<EOF > /var/frp/frps.ini
[common]
bind_port = 7000
dashboard_port = 7500
privilege_mode = true
privilege_token = ${PASSWORD}
EOF
echo "--> cmd: ./frps -c ./frps.ini"
echo
./frps -c ./frps.ini
