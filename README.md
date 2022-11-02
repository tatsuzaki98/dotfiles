# initialize github

```bash
#!/bin/bash
mkdir -p -m 700 ~/.ssh/keys
ssh-keygen -b 4096 -t rsa -f ~/.ssh/keys/github-rsa -q -N ""
touch ~/.ssh/config
if grep --line-regexp --quiet "Host github.com github" ~/.ssh/config
then
  echo "ssh config is already set"
else
  cat <<EOF >> ~/.ssh/config
Host github.com github
  HostName github.com
  User git
  IdentityFile ~/.ssh/keys/github-rsa
  Port 22
EOF
fi
more ~/.ssh/keys/github-rsa.pub
```

# RWES ips

```
Host impact
  HostName 10.244.100.249
  User masato
  IdentityFile ~/.ssh/keys/impact

Host dprilv
  HostName 10.244.100.244
  User masato
  IdentityFile ~/.ssh/keys/dprilv

Host tokusui
  HostName 10.244.100.248
  User masato
  IdentityFile ~/.ssh/keys/tokusui
```
