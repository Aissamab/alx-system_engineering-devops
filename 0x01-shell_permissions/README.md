su betty : switches the current user to the user betty
whoami :  prints the effective username of the current user
groups :prints all the groups the current user is part of
chown betty hello : t changes the owner of the file hello to the user betty
touch hello : creates an empty file called hello
chmod u+x hello : adds execute permission to the owner of the file hello 
chmod u+x,g+x,o+r hello : adds execute permission to the owner and the group owner, and read permission to other users, to the file hello
chmod a+x hello : adds execution permission to the owner, the group owner and the other users, to the file hello
chmod 007 hello : that sets the permission to the file hello as follows: Owner: no permission at all / Group: no permission at all / Other users: all the permissions 
chmod 753 hello : that sets the mode of the file hello to 753
chmod --reference=olleh hello :  sets the mode of the file hello the same as olleh’s mode
chmod -R a+x */  : adds execute permission to all subdirectories of the current directory for the owner, the group owner and all other users
mkdir -m 751 my_dir :  creates a directory called my_dir with permissions 751 in the working directory
chgrp school hello :  changes the group owner to school for the file hello
chown vincent:staff * : changes the owner to vincent and the group owner to staff for all the files and directories in the working directory.
chown -h vincent:staff _hello :  changes the owner and the group owner of _hello to vincent and staff respectively
chown --from=guillaume betty hello : changes the owner of the file hello to betty only if it is owned by the user guillaume
telnet towel.blinkenlights.nl : play the StarWars IV episode in the termina
