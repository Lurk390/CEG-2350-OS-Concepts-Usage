## Lab 09

- Name: Mahmoud Elbasiouny
- Email: elbasiouny.2@wright.edu

## Part 1 Answers

1. `vim infinity`
2. [Link to script](infinity) 
3. `chmod u+x infinity`

## Part 2 Answers

1. Getting started
   - Command to find the PID: `ps -e`
   - PID of "Terminal A": 1659
   - PID of "Terminal B": 1800
2. Using `./` to run `infinity` in Terminal B
   - PID of script: 1861
   - Command to kill script: `kill 1861`
   - Cannot use terminal while script is running
3. Using `source` to run `infinity` in Terminal B
   - PID of script: 1800 (PID of `bash` for Terminal B; `source` runs the script in current shell)
   - Command to kill the script: `kill -INT 1800`
   - Effects of killing the script: script stops after executing the next command
4. Running `infinity` as a background job in Terminal B
   - Command to run script in background: `./infinity &`
   - Job ID of script: 1
   - PID of script: 2811
   - Command to kill script via job id: `kill %1`
   - Closing the terminal will stop the script as it was executed via the terminal
5. Run `infinity` in a `screen` or `tmux` session
   - Command(s) to run `infinity` in a screen session:
   - Detach from `screen` / `tmux` session: `Ctrl` + `a` then `d` to detach
   - Command to show `screen` / `tmux` sessions: `screen -list`
   - Closing the terminal does not stop the script as it is detached
   - Command / steps to kill the `screen` / `tmux` session: `screen -X -S 3778 quit`
      - 3778 is the PID of the screen session

## Part 3 Answers

1. `git branch updates`
2. `gitch checkout updates`
3.
```
#!/bin/bash

# infinite while loop
while [ True ]
do
    # print "Still going!" into still-going.txt
    echo "Still going!" >> still-going.txt
    # sleep for 15 seconds
    sleep 15
done
```
4. `git commit -a -m "Added comments"`, then `git push`
5. Edits confirmed only in `updates` branch
6. `git checkout main`
7. `git merge updates`
8. `git push`
9. Edits confirmed on `main` branch
10. `git checkout`
