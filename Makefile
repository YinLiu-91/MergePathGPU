EXECUTABLE := debug/main
NVCC := nvcc
BLOCKTESTARRAYSIZE := 100000000
ONETOHUNDREDSIZE := 56 

all: main.cu xmalloc.cu util.cu
	$(NVCC) -g -G -lcudart -arch=sm_75 main.cu  -o $(EXECUTABLE)


