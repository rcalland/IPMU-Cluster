# IPMU-Cluster
Deployment scripts for GPU cluster @ IPMU.

--> `ansible_host_file/hosts` should be placed at `/etc/ansible/hosts` on `neutrino01`.
--> to update changes, run `ansible-playbook --ask-pass update.yml` as `root` user. It will ask you to input the root password.