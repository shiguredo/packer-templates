yum install -y fuse-libs
mkdir -p /mnt/vmware
mount -o loop /home/vagrant/linux.iso /mnt/vmware

cd /tmp
tar xzf /mnt/vmware/VMwareTools-*.tar.gz

umount /mnt/vmware
rm -fr /home/vagrant/linux.iso

/tmp/vmware-tools-distrib/vmware-install.pl -d
rm -fr /tmp/vmware-tools-distrib

rm -rf /etc/udev/rules.d/70-persistent-net.rules
sed -i "s/HWADDR=.*//" /etc/sysconfig/network-scripts/ifcfg-eth0
