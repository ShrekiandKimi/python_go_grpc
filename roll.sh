#!/bin/sh
# Имитация нажатия кнопки "Roll it!" в клиенте Django (порт клиента — аргумент)
P=${1:-8000}
J=$(mktemp)
T=$(curl -s -c $J http://127.0.0.1:$P/ | sed -n 's/.*csrfmiddlewaretoken" value="\([^"]*\)".*/\1/p')
curl -s -b $J -d "csrfmiddlewaretoken=$T" -H "Referer: http://127.0.0.1:$P/" http://127.0.0.1:$P/ | grep '<p>' | sed -e 's/<[^>]*>//g' -e 's/&gt;/>/;s/&lt;/</'
rm -f $J
