# IPMU-Cluster
Deployment scripts for GPU cluster @ IPMU.

* `ansible_host_file/hosts` should be placed at `/etc/ansible/hosts` on `neutrino01`.
* make changes to the .yml files (Uses the YAML human-readable language). Everything is controlled by the `update.yml` file.
* to update changes, run `ansible-playbook --ask-pass update.yml` as `root` user. It will ask you to input the root password.

## Starting the condor demons on all nodes
Do command `ansible nodes -a 'condor_master'` to start the condor demon on the nodes. Replace `nodes` with `master` to start on neutrino01 (however, you are probably already logged into neutrino01, so you can simply do `condor_master`.