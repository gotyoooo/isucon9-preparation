# ansible
## preparation
```
$ sudo pip install apache-libcloud pycrypto
$ cd ansible
$ cp sample.ansible.cfg ~/
```
- 適時SSHKeyは変えてください

ssh-keyはインスタンスにログインできるものを指定する
## sample
インスタンス全台でnginxを再起動
```
$ ansible all -i ./hosts -m shell -a "sudo /etc/init.d/nginx restart"
```

webグループのインスタンス全台にplaybookを適用
```
$ ansible-playbook -i ./hosts playbooks/web.yml
```
