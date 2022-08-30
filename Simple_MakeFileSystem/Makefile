# A Simple MakeFile to build C programs

# C files to be compiled
CFILES = prog.c mod1.c mod2.C
OBJECTS = prog.o mod1.o mod2.o
EXEC = prog


# Compiler to use ; Can be changed for cross compilation
CC =  gcc
# Include directories to be used
INCDIRS = ./Include
# C Flags to be given for compilation
CFLAGS = -Wall -Wextra -I $(INCDIRS)

# make command will run the first build rule, so generally the first one is all
all : $(EXEC)

# prog is the final executable  to be created which isdepeneded on the object files to be available
$(EXEC) : $(OBJECTS)
	$(CC) $^ -o $@

%.o : %.c
	$(CC) $(CFLAGS) -c $^ -o $@

# The @ symbol means while running 'make clean', the command won't be shown 
clean:
	@rm -rf $(OBJECTS) $(EXEC)


# added test to run the program
test : all
	$(info Running the program ...)
	$(info )
	./$(EXEC)
