## Lab 12

- Name: Mahmoud Elbasiouny
- Email: elbasiouny.2@wright.edu

## Part 1 Answers:

1. `tar` options:
   - `-c`: creates a new archive
   - `-v`: verbosely lists files processed
   - `-f`: uses file archives
   - `-z`: filters the archive through gzip
   - `-x`: extracts files from an archive
2. Command(s): `tar -zcvf testfolder.tar.gz testfolder/`

## Part 2 Answers:

1. Command: `sftp ceg2350`
2. `sftp` options:
   - `ls`: Displays remote directory listing
   - `lls`: Displaus local directory listing
   - `put`: Uploads file
   - `get`: Downloads file
3. Command(s): `get testfolder.tar.gz`
4. Command(s): `tar –xvzf testfolder.tar.gz`

## Part 3 Answers:

1. `sudo adduser mahmoud`
2. `ssh-keygen -t ed25519 -C "elbasiouny.2@wright.edu"`
3. Copied the contents of `ed25519.pub` into `~/.ssh/authorized_keys`
4. `ssh ceg2350-mahmoud`

## Part 4 Answers

1. Translate to network prefixes + CIDR notation:
   - Sample: `10.0.0.0 - 10.0.1.255` = `10.0.0.0/23` OR `10.0.1.0/23`
   - `130.108.0.0 - 130.108.255.255` =
   - `10.0.0.0 - 10.0.0.255` =
   - `your_public_ip - your_public_ip` =
2. How you confirmed current rules are bad, and why are they bad.
3. Your implementation details and **screenshot**
4. Something invalid:

## Extra Credit Answers:

### Solve the conflict

1.
2.
3.
4.
5.
