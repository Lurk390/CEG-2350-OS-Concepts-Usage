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
   - PID of script:
   - Command to kill the script:
   - Effects of killing the script: 
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

1.
2.
3.
4.
5. Confirmed?
6.
7.
8.
9. Confirmed?
10.
