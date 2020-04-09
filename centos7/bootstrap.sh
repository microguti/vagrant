useradd -mG wheel admin
echo itversity | passwd admin --stdin
sed -i "s/PasswordAuthentication no/PasswordAuthentication yes/g" /etc/ssh/sshd_config
sed -i "s/%wheel	ALL=(ALL)	ALL/# %wheel	ALL=(ALL)	ALL/g" /etc/sudoers
sed -i "s/# %wheel	ALL=(ALL)	NOPASSWD: ALL/# %wheel	ALL=(ALL)	NOPASSWD: ALL/g" /etc/sudoers

systemctl restart sshd
yum -y install wget telnet java
