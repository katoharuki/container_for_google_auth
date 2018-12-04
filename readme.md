Googleの二要素認証をコマンドで楽にしたいというわけで、oathtoolを使うコンテナを作成した。  
Dockerfileからビルド起動したあと、ホストにてコマンドエイリアスを設定することで、認証用コマンドが作成できる。  

```
下記を追記
[root@localhost ~]# cat ~/.bashrc
alias google_key='docker exec -t コンテナ名 oathtool --totp -d 6 --time-step-size=30s --base32 "トークン"'
alias aws-01='echo PIN`google_key`'
[root@localhost ~]# 
[root@localhost ~]# 
[root@localhost ~]# source ~/.bashrc
[root@localhost ~]# 
[root@localhost ~]# 
[root@localhost ~]# google_key
777777
[root@localhost ~]# 
[root@localhost ~]# 
[root@localhost ~]# PIN付きもいける。
[root@localhost ~]# 
[root@localhost ~]# aws-01
PIN777777
```
