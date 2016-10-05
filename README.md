# IPMU-Cluster
Deployment scripts for GPU cluster @ IPMU. Full cluster documentation can be read (and edited) at this link: https://docs.google.com/document/d/1O7FO8YwwyP36FeKcwz9bk619vfWf8BBXD5w6jNih_3w/edit?usp=sharing

* `ansible_host_file/hosts` should be placed at `/etc/ansible/hosts` on `neutrino01`.
* make changes to the .yml files (Uses the YAML human-readable language). Everything is controlled by the `update.yml` file.
* to update changes, run `ansible-playbook --ask-pass update.yml` as `root` user. It will ask you to input the root password.
* `ansible` scripts define the desired state of the systems, so each time the playbook is run, it will make sure all systems meet the requirements; it will not reinstall the software each time, only install missing packages/users etc
* for example, update `software.yml` to list the packages that must be installed on the machines.
* for example (again), to add a new user, append their information to `users.yml`, then run `ansible-playbook...` as described above to enforce these changes across the cluster.


## Starting the condor demons on all nodes
To start condor on neutrino01, log in and run `condor_master` as root.
Run the script `start_condor.sh` from neutrino01 to start condor on all other nodes. It will prompt you for the root password. 