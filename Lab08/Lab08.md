## Lab 08

- Name: Mahmoud Elbasiouny
- Email: elbasiouny.2@wright.edu

## Part 1 Answers

1. `blkid` shows `xvda1` as the currently mounted block device
2. Yes, `xvda`, `xvda1`, and `xvdb`
3. `gdisk` main menu options
   - `p`: Displays basic partition summary data 
   - `o`: Clears out all partition data
   - `n`: Creates a new partition
   - `i`: Displays a summary of partition types
   - `w`: Writes data
4. Using the `gdisk` utility on the disk: `sudo gdisk /dev/xvdb`
   ```
   GPT fdisk (gdisk) version 1.0.5

   Partition table scan:
     MBR: not present
     BSD: not present
     APM: not present
     GPT: not present

   Creating new GPT entries in memory.

   Command (? for help): n
   Partition number (1-128, default 1):
   First sector (34-8388574, default = 2048) or {+-}size{KMGTP}:
   Last sector (2048-8388574, default = 8388574) or {+-}size{KMGTP}:
   Current type is 8300 (Linux filesystem)
   Hex code or GUID (L to show codes, Enter = 8300):
   Changed type of partition to 'Linux filesystem'

   Command (? for help): w

   Final checks complete. About to write GPT data. THIS WILL OVERWRITE EXISTING
   PARTITIONS!!

   Do you want to proceed? (Y/N): Y
   OK; writing new GUID partition table (GPT) to /dev/xvdb.
   The operation has completed successfully.
   ```
5. `mkfs -t ext4 /dev/xvdb1`
6. 
7. 
8. Skip - trust you to do it ;)
9. 
10. 
11. 
12. 

## Part 2 Answers

1.
2. For `original.txt` identify:
   - Command to find the following info about `original.txt`:
   - inode number of `original.txt`:
   - number of blocks storing `original.txt`:
   - number of links to `original.txt`:
3. Command to create a hard link to `original.txt`:
   - What identifiers indicate a hard link was created?
   - Does modifying the hard linked file modify `original.txt`? Explain
4. Command to create a symbolic link to `original.txt`
   - What identifiers indicate a symbolic link was created?
   - If `original.txt` was deleted, and a new `original.txt` was created, would the sym link still work? Explain
5. Command to create a copy of `original.txt`
   - Does modifying the copied file modify `original.txt`? Explain
6. Command to move `original.txt` to another directory.
   - Does it have the same inode? Explain
   - Was the hard link you created affected? Explain
   - Was the symbolic link you created affected? Explain

## Extra Credit Answers

Line added to `/etc/fstab`:

```
Insert line here
```
