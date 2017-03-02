#!/bin/bash
set -euxo pipefail

NODE="$1"

#for NODE in `rocks list host | grep comp | sed "s/:.*$//"`;
#do
echo "Setting up $NODE"

        # Copy paths
        cat /etc/profile.d/custom.sh | ssh root@$NODE 'cat > /etc/profile.d/custom.sh'
        ssh root@$NODE 'chmod +x /etc/profile.d/custom.sh'

        # Setup file structure
        ssh root@$NODE 'ln -s /share/data /data; mkdir -p /state/partition1/jobtmp; chmod a+rwx /state/partition1/jobtmp'
	
	#install mono
	scp -pr /opt/mono root@$NODE:/opt
	
	#copy db across
	scp -pr /data/db root@$NODE:/state/partition1

	#install CPAN & vep modules
	scp -p /root/perl-CPAN-1.9402-136.el6.x86_64.rpm root@$NODE:~
	ssh root@$NODE 'rpm -i perl-CPAN-1.9402-136.el6.x86_64.rpm'
	ssh root@$NODE '(echo y;echo o conf prerequisites_policy follow;echo o conf commit)|cpan'
	ssh root@$NODE 'cpan -i Time::HiRes'
	ssh root@$NODE 'cpan -i Compress::Zlib'
	ssh root@$NODE 'cpan -i File::Copy::Recursive'
	ssh root@$NODE 'cpan -i Module::Build'

	#install bcl2fq
	scp -p /root/bcl2fastq2-v2.17.1.14-Linux-x86_64.rpm root@$NODE:~
	ssh root@$NODE 'rpm -i bcl2fastq2-v2.17.1.14-Linux-x86_64.rpm'
	
	#install R modules
	scp -p /root/scripts/installRModules.R root@$NODE:~
	ssh root@$NODE 'Rscript ~/installRModules.R'

#done

