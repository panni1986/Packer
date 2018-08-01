#!/bin/bash
#script to install vmware tools
 cd /tmp/
 sshpass -p 'Work42ls' scp root@9.109.190.34:/tmp/VMwareTools-10.2.1-8267844.tar.gz .
 tar -xzvf VMwareTools-10.2.1-8267844.tar.gz
 cd vmware-tools-distrib
 cat > /tmp/answer << __ANSWER__
 yes
 /usr/bin
 /etc
 /etc/init.d
 /usr/sbin
 /usr/lib/vmware-tools
 yes
 /usr/share/doc/vmware-tools
 yes
 yes
 no
 no
 yes
 no
__ANSWER__

# Install VMware Tools and redirecting the silent instlal file
./vmware-install.pl < /tmp/answer

# Final clean up
rm -rf vmware-tools-distrib/
rm -f /tmp/${VMW_TOOLS}
cd ~  
