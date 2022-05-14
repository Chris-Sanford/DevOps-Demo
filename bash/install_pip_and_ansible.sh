#You may need to run this as root
#The PIP installation method is both more universal and will more likely offer the latest version of Ansible

#We may want to consider using the virtual environment installation options for PIP instead of we encounter weird permissions issues

wget https://bootstrap.pypa.io/get-pip.py #Python3
#wget https://bootstrap.pypa.io/pip/2.7/get-pip.py #Python2
chmod u+x get-pip.py #Make get-pip.py executable
python3 get-pip.py #Install PIP #https://pip.pypa.io/en/stable/installation/
python3 -m pip install ansible #Install Ansible using PIP #https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html#installing-ansible-with-pip
python3 -m pip install paramiko #Not sure if this is necessary for what we're doing
ansible-galaxy collection install community.general #Install general community module
ansible-galaxy collection install community.docker #Install the Docker prerequisite module