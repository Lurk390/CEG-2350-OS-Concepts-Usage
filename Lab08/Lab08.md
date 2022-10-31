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
5. `sudo mkfs -t ext4 /dev/xvdb1`
6. `sudo mkdir expanse` in `/mnt/` directory
7. `sudo mount /dev/xvdb1 /mnt/expanse`
8. `sudo vim testfile.txt`
    - contains the text "testing123"
9. `sudo strings /dev/xvdb1`
    - outputs printable character sequences that are at least 4 characters long
    - "testfile.txt" and "testing123" show up in the output
10. `sudo rm testfile.txt`
    - "testfile.txt" and "testing123" are still showing in the `strings` output
11. `shred -u testfile.txt`
    - running `sudo strings /dev/xvdb1` again shows that `testfile.txt` and its contents are removed from the output, confirming that the file has been completely removed off of the disk
12. `sudo umount /dev/xvdb1`
    - `expanse` directory still exists in `/mnt`, however, it is empty

## Part 2 Answers

1. `vim original.txt`
2. For `original.txt` identify:
   - command to find the following info about `original.txt`: `stat original.txt`
   - inode number of `original.txt`: 1036712
   - number of blocks storing `original.txt`: 8
   - number of links to `original.txt`: 1
3. `ln original.txt hltest`
   - running `stat original.txt` shows that the number of links increased to 2 
   - both files point to the same inode on the disk so modifying the contents of either file will reflect on both of them
4. `ln -s original.txt sltest`
   - running `ls -l` shows `sltest` pointing to `original.txt`, indicating that it is a symbolic link
   - deleting and recreating `original.txt` does not break the sym link as it is simply a pointer to a file/directory
5. `cp original.txt cptest`
   - modifying the copied file does not modify `original.txt` as they are seperate files pointing to difference inodes.
6. `mv original.txt testfolder/`
   - moving the file to another directory does not change the inode number as it is still the same file, just in a different location
   - the hard link is unaffected as both files still point to the same inode which was unchanged
   - the symbolic link is broken as it relies on filepath of the source folder which was changed

## Extra Credit Answers

1. `sudo cp /etc/fstab /etc/fstab.bak`
2. Line added to `/etc/fstab` (`UUID` was copied from `blkid` output):
```
UUID="b9441bf5-9f9a-4c4e-98ff-8c95660cd9cf"     /mnt/expanse    ext4    defaults,discard        0 0
```
3. Running `df` after editing `/etc/fstab` and running `sudo mount -a` shows a new line:
`/dev/xvdb1       4045516      24   3819448   1% /mnt/expanse`
    - `/mnt/expanse` mount was successful
4. After rebooting, running `df` still shows the new line:
`/dev/xvdb1       4045516      24   3819448   1% /mnt/expanse`
