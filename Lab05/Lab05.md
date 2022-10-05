## Lab 05

- Name: Mahmoud Elbasiouny
- Email: elbasiouny.2@wright.edu

## namechange Usage Guide

Renames a given file.

Usage: `./namechange.sh -f 'find' -r 'replace' 'file to modify`

Examples:
 - `./namechange.sh -f '\s' -r '' 'file name.txt'` will change the file `file name.txt` to `filename.txt`


## bulkrename Usage Guide - Remove if not doing extra credit

Renames all files in the current directory.

Usage: `./bulkrename.sh -f 'find' -r 'replace`

Examples:
 - `./bulkrename.sh -f '.jgp' -r '.jpg'` will rename all files that end with .jgp to .jpg
 - `./bulkrename.sh -f '\s' -r '-'` will replace all spaces with `-`
 - `./bulkrename.sh -f 'foo' -r 'bar'` will replace all files with `foo` with `bar`