# A simple makefile for compiling java classes

# define a makefile variable for the java compiler abd java runtime environment
JCC = javac
JRE = java

# define a makefile variable for compilation flags
# the -g flag compiles with debugging information

JFLAGS = -g

# typing 'make' will invoke the first target entry in the makefile 
# (the default one in this case)

default: Repeat.class
	
# this target entry builds the Repeat class
# the Repeat.class file is dependent on the Repeat.java file
# and the rule associated with this entry gives the command to create it

Repeat.class: Repeat.java
	$(JCC) $(JFLAGS) Repeat.java

# if Repeat.class exists, then make run will execute the program
# if Repeat.class does not exist, then make will create the class file
# and then execute the program

run: Repeat.class
	$(JRE) Repeat

# To start over from scratch, type 'make clean'.  
# Removes all .class files, so that the next make rebuilds them

clean: 
	$(RM) *.class