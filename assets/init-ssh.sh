#!/bin/bash
set -ex

mkdir -p -m 700 ~/.ssh/keys

for file in github rwes-impact rwes-dprilv rwes-tokusui rwes-togo
do
  if [ ! -e ~/.ssh/keys/$file ]; then
    echo $file
    ssh-keygen -b 4096 -t rsa -f ~/.ssh/keys/$file -q -N ""
  fi
done

cat ~/.ssh/config > ~/.ssh/config_`date --iso-8601="seconds"`

cat <<EOF > ~/.ssh/config
Host github
  HostName github.com
  User git
  IdentityFile ~/.ssh/keys/github

Host rwes-*
  User masato
Host rwes-impact
  HostName 10.244.100.249
  IdentityFile ~/.ssh/keys/rwes-impact
Host rwes-dprilv
  HostName 10.244.100.244
  IdentityFile ~/.ssh/keys/rwes-dprilv
Host rwes-tokusui
  HostName 10.244.100.248
  IdentityFile ~/.ssh/keys/rwes-tokusui
Host rwes-togo
  HostName 10.244.100.232
  IdentityFile ~/.ssh/keys/rwes-togo
EOF
