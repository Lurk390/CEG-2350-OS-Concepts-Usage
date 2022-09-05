## Lab 02

- Name: Mahmoud Elbasiouny
- Email: elbasiouny.2@wright.edu

## Part 1 Answers

The answers for this section are to help you record what steps  
are needed to create a file locally (in your cloned repo)  
and push them (sync) with GitHub

1. Add a file for tracking: `git add Lab02.md`
2. Commit changes: `git commit -a`
3. Sync local commits with GitHub: `git push`

## Part 2 Answers

For each, write the command used or answer the question posed.

1. `sudo adduser bob`
2. `/home/bob`
3. No, user ubuntu does not have permission to write in bob's home directory. Only bob has write permissions.
4. `su bob`
5. `cd ~`
6. Yes, user bob has write permissions in bob's home directory.
7. `su ubuntu`
8. `cd ~`

## Part 3 Answers

For each, write the command used or answer the question posed.

1. `sudo addgroup crew`
2. `sudo usermod -a -G crew ubuntu`
   `sudo usermod -a -G crew bob`
3. `sudo chgrp crew DirA`
4. `su bob`
5. `touch file.txt`
6. user bob is in the group crew which has permission for directory DirA

## Part 4 Answers

For each, write the command used or answer the question posed.

1. `sudo touch sudowho.txt`
2. `root root`: root is the file owner and root is the group owner
3. `sudo vim sudowho.txt`

## Part 5 Answers

1. `ssh` command before configuring `config` file: `ssh -i ceg2350key.pem ubuntu@3.231.51.220`
2. `HostName: 3.231.51.220`
3. `User: ubuntu`
4. `IdentityFile: ~/.ssh/ceg2350key.pem`
5. `~/.ssh/config` contents:

```
Host ceg2350
        Hostname 3.231.51.220
        user ubuntu
        IdentityFile ~/.ssh/ceg2350key.pem
```

6. `ssh` command after configuring `config` file: `ssh ceg2350`
