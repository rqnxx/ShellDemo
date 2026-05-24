CXX = g++
CPPFLAGS = -Wall -ggdb

MAIN = test
OBJ = $(MAIN).o HStack.o

$(MAIN).exe: $(OBJ)
	$(CXX) $(CPPFLAGS) $(OBJ) -o $(MAIN).exe

$(MAIN).o: $(MAIN).cpp HStack.hpp
	$(CXX) $(CPPFLAGS) -c $(MAIN).cpp

HStack.o: HStack.cpp HStack.hpp
	$(CXX) $(CPPFLAGS) -c HStack.cpp

clean:
	rm -f $(OBJ) $(MAIN).exe

all: $(MAIN).exe

run: $(MAIN).exe
	./$(MAIN).exe

.PHONY: all clean run
