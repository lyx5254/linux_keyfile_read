all:Manager  
  
#定义宏  
OBJS = test.o config.o   
  
#which compiler  
CC = gcc  
  
#where are include files kept  
INCLUDE = .  
  
#Options -O for release and -g for development  
#-Wall:输出所有的警告信息  
#-O:在编译时进行优化  
#-g:表示编译debug版本  
CFLAGS = -g -Wall -ansi   
#CFLAGS = -O -Wall -ansi  
  
#前面加@不回显执行的命令在标准输出上  
Manager:$(OBJS)  
	@$(CC)  -o Manager $(OBJS)  
#gcc test.o config.o -o Manager  
test.o:test.c config.h  
	@$(CC) -I$(INCLUDE) $(CFLAGS) -c test.c -o test.o  
config.o:config.c config.h  
	@$(CC) -I$(INCLUDE) $(CFLAGS) -c config.c -o config.o  
clean :  
	@rm -rf *.o  