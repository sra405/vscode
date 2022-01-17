# VScode

Nothing special here just a repo to store regular automated backups of my VScode configuration.

`vscode_backup.sh` is pretty useful and can adapted to be used in conjunction with other commands as a more generic github_backup.sh.

### How to Use

Edit the `vscode_backup.sh` to point to your repo, ensuring your machine is authorised to push changes to that repo by default. This works well in as a cronjob to fully automate the backup.

### Restore

Just run `make restore` in the repos root 😀

### NOTES:

Requires `code` to be installed on the local machine for use in the terminal. This is normally as easy as opening up the command pallet and running `Shell Command: Install 'code' command in PATH` the once in VSCode.
