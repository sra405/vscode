# VScode

Nothing special here just a repo to store regular automated backups of my VScode configuration.

`vscode_backup.sh` is pretty useful and can adapted to be used in conjunction with other commands as a more generic github_backup.sh.

### How to Use

Edit the `vscode_backup.sh` to point to your repo, ensuring your machine is authorised to push changes to that repo by default. This works well in as a cronjob to fully automate the backup.

### TODO

Restore! Enable a restore from a backup. I've not written it because I've not needed it but if I ever need it I'll thank myself if it's there waiting!

Makefile! The king of shell commands. Once I expand to restoring a config I might as well utilise a Makefile so it can be further expanded in the future.
