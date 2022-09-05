## Lab 02

- Name: Mahmoud Elbasiouny
- Email: elbasiouny.2@wright.edu

## Part 1 Answers

The answers for this section are to help you record what steps  
are needed to create a file locally (in your cloned repo)  
and push them (sync) with GitHub

1. Add a file for tracking: git add Lab02.md
2. Commit changes: git commit -a
3. Sync local commits with GitHub: git push

## Part 2 Answers

For each, write the command used or answer the question posed.

1.
2.
3.
4.
5.
6.
7.
8.

## Part 3 Answers

For each, write the command used or answer the question posed.

1.
2.
3.
4.
5.
6.

## Part 4 Answers

For each, write the command used or answer the question posed.

1.
2.
3.

## Part 5 Answers

1. `ssh` command before configuring `config` file: ssh -i ceg2350key.pem ubuntu@3.231.51.220
2. HostName: 3.231.51.220
3. User: ubuntu
4. IdentityFile: ~/.ssh/ceg2350key.pem
5. `~/.ssh/config` contents:

```
Host ceg2350
        Hostname 3.231.51.220
        user ubuntu
        IdentityFile ~/.ssh/ceg2350key.pem
```

6. `ssh` command after configuring `config` file: ssh ceg2350
