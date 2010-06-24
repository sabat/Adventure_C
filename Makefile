# NOTE: This version of Adventure was developed by the author on private
# equipment, and has been ported to Sun for entertainment purposes only.
# The author (Don Woods) retains full rights to the work.

OBJS=main.o init.o actions1.o actions2.o score.o misc.o datime.o

.c.o:
	gcc -g $(DBX) -c $<

adventure:	$(OBJS)
	gcc -g $(DBX) -o adventure $(OBJS)

all:	adventure

clean:
	rm -f *.o adventure

main.o:		misc.h funcs.h

init.o:		misc.h main.h share.h funcs.h

actions1.o:	misc.h main.h share.h funcs.h

actions2.o:	misc.h main.h share.h funcs.h

score.o:	misc.h main.h share.h

misc.o:		misc.h main.h
