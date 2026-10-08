#!/bin/sh
# A new member registers and logs in; the session cookie is base64 of a JSON document that
# carries the member's permission level.
set -e
user="probe$$"
curl -fsS -o /dev/null -F "username=$user" -F 'password=probe-pass' -F 'password2=probe-pass' http://app:10002/register
cookie=$(curl -fsS -D - -o /dev/null -F "username=$user" -F 'password=probe-pass' http://app:10002/login | sed -n 's/^[Ss]et-[Cc]ookie: sessionId=\([^;]*\).*/\1/p' | tr -d '"\r')
echo "$cookie" | base64 -d 2>/dev/null | grep -q '"permissao": 0'
