```bash
#!/bin/bash

# initialize github

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
