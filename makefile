#----Makefile----#

CC = gcc 
CFLAG = -Wall

Files =  my_project.c comment_remove.o  header_include.o macro_replace.c
exe = prepro

$(exe): $(Files)
    $(CC) $(Files) -o $(exe)

mypro.o: my_project.c header.h
    $(CC) $(CFLAG) -c my_project.c

remove_com.o: comment_remove.c header.h
    $(CC) $(CFLAG) -c comment_remove.c

header_inc.o: header_include.c header.h
    $(CC) $(CFLAG) -c header_include.c

macro_rep.o: macro_replace.c header.h
    $(CC) $(CFLAG) -c macro_replace.c


clear:
    rm -f $(Files) $(exe)   #remove all .o file and execuatable file
