#!/bin/sh

echo "--> generating password"
pd=$(date +%s | sha256sum | base64 | head -c 16 ; echo)
: ${TOKEN:=$pd}
echo "--> password: $TOKEN"
echo "--> generating config file"
: ${DASHBOARD_USER:="admin"}
: ${DASHBOARD_PASSWORD:="admin"}
cat <<EOF > $FRP/frps.ini
[common]
bind_port = 7000
dashboard_port = 7500
privilege_mode = true
privilege_token = ${TOKEN}
dashboard_user = ${DASHBOARD_USER}
dashboard_pwd = ${DASHBOARD_PASSWORD}
EOF
echo "--> cmd: $FRP/frps -c $FRP/frps.ini"
echo
$FRP/frps -c $FRP/frps.ini
