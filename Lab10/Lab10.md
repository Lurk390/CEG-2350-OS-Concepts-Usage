## Lab 10

- Name: Mahmoud Elbasiouny
- Email: elbasiouny.2@wright.edu

## Part 1 Answers

- [Link to source code](Repeat.java)

## Part 2 Answers

1. Compiler: Java
   - Location: `which java`: `/usr/bin/java`
   - Version: `java -version`: v11.0.16
2. Command to compile: `javac Repeat.java`
3. Command to run: `java Repeat`

- [Link to compiled code](Repeat.class)

## Part 3 Answers

- [Link to Makefile](Makefile)

## Extra Credit - Dependent Answers

- In the `ec` folder:
  - Source code:
    - [Main.java](ec/Main.java)
    - [Sum.java](ec/Sum.java)
  - Compilied code:
    - [Main.class](ec/Main.class)
    - [Sum.class](ec/Sum.class)
  - [Link to Makefile](ec/Makefile)

## Extra Credit - G@M3RS Answers

### Instructions to Install ninvaders

1. Download the package from `https://github.com/pattonsgirl/Fall2021-CEG2350/raw/main/Labs/Lab09/ninvaders-0.1.1.tar.gz`

```
wget https://github.com/pattonsgirl/Fall2021-CEG2350/raw/main/Labs/Lab09/ninvaders-0.1.1.tar.gz
```

2. Extract to your home directory:

```
tar -xf ninvaders-0.1.1.tar.gz
```

3. Install `gcc` and `ncurses` library:

```
sudo apt install build-essential
sudo apt-get install libncurses5-dev libncursesw5-dev
```

4. Compile ninvaders

```
make
```

5. Play ninvaders

```
./nInvaders
```
