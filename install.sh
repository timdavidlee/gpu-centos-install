sudo yum update -y
sudo yum install -y yum-utils pciutils
sudo yum group install -y "Development Tools"
sudo yum install -y htop wget curl vim kernel-devel kernel-headers
sudo yum install -y epel-release
sudo yum install -y dkms

sudo yum-config-manager --add-repo http://developer.download.nvidia.com/compute/cuda/repos/rhel7/x86_64/cuda-rhel7.repo
sudo yum clean all
sudo yum -y install nvidia-driver-latest-dkms cuda
sudo yum -y install cuda-drivers

echo 'export PATH=/usr/local/cuda/lib64/bin:$PATH' >> ~/.bashrc
echo 'export LD_LIBRARY_PATH=/usr/local/cuda/lib64:$LD_LIBRARY_PATH' >> ~/.bashrc
source ~/.bashrc
sudo ldconfig
