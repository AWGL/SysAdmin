#install a newer version of gcc
#sudo wget http://people.centos.org/tru/devtools-1.1/devtools-1.1.repo -P /etc/yum.repos.d
#sudo sh -c 'echo "enabled=1" >> /etc/yum.repos.d/devtools-1.1.repo'
#sudo yum install devtoolset-1.1 

#launch shell with gcc 
scl enable devtoolset-1.1 bash
gcc --version 
