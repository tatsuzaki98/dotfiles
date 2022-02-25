```bash
#!/bin/bash

# initialize github

mkdir -p -m 700 ~/.ssh/keys

ssh-keygen -b 4096 -t rsa -f ~/.ssh/keys/github-rsa -q -N ""

cat <<EOF >> ~/.ssh/config
Host github.com github
    HostName github.com
    User git
    IdentityFile ~/.ssh/prv/github-rsa
    Port 22

EOF

more ~/.ssh/keys/github-rsa.pub
```
