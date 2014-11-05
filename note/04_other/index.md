## ssh
* 產生 ssh key  
`ssh-keygen -t rsa -C "your_email@example.com"`

* 複製 public key  
`pbcopy < ~/.ssh/id_rsa.pub`

* ssh server 自動登入設定，把本機的 id_rsa.pub 複製到 server 上的 authorized_keys 即可


## git

* 常用短指令，`vim ~/.gitconfig`

```
[alias]
        st = status
        co = checkout
        rb = rebase
        cp = cherry-pick
        ci = commit
        ss = stash
        cn = clean
        pu = push origin
        ps = push origin
        sl = git shortlog -s -n
        mg = merge
```
* 使用者資訊，`vim ~/.gitconfig`

```
[user]
        name = your name
        email = your E-mail
```