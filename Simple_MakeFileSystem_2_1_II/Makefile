# A Simple MakeFile to build C programs

# C files to be compiled
CFILES = prog.c mod1.c mod2.C
OBJFILES = prog.o mod1.o mod2.o
DEPFILES = prog.d mod1.d mod2.d
EXEC = prog


# Compiler to use ; Can be changed for cross compilation
CC =  gcc
# Include directories to be used
INCDIRS += . 
INCDIRS += ./Include
# C Flags to be given for compilation - (adding foreach for iterating through each include directory
CFLAGS = -Wall -Wextra  $(foreach includedir, $(INCDIRS), -I $(includedir)) -MD -MP

# make command will run the first build rule, so generally the first one is all
all : $(EXEC)

# prog is the final executable  to be created which isdepeneded on the object files to be available
$(EXEC) : $(OBJFILES)
	$(CC) $^ -o $@

%.o : %.c
	$(CC) $(CFLAGS) -c $^ -o $@

# The @ symbol means while running 'make clean', the command won't be shown 
clean:
	@rm -rf $(OBJFILES) $(DEPFILES)

# The @ symbol means while running 'make clean all', the command won't be shown 
cleanall: clean
	@rm -rf $(EXEC)

# added test to run the program
test : all
	$(info Running the program ...)
	$(info )
	./$(EXEC)
