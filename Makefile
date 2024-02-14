CC = /usr/local/cuda/bin/nvcc
INCLUDE = -I/usr/local/include
FLAGS = -L/usr/local/lib
#LIBS = -lm
LIBS =
#ARCH = -arch sm_52
ARCH =
SRC = nn1.c
EXE = nn1

all:
	$(CC) -o $(EXE) $(ARCH) $(SRC) $(FLAGS) $(LIBS)

install:
	rm -f /home/oper/bin/$(EXE); cp $(EXE) /home/oper/bin/

clean:
	rm -f *.o $(EXE)
