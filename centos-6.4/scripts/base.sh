sed -i "s/^.*requiretty/#Defaults requiretty/" /etc/sudoers
yum -y install gcc make gcc-c++ \
		http://vault.centos.org/6.4/os/x86_64/Packages/kernel-devel-`uname -r`.rpm \
		perl

