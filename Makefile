# Makefile for Writing Make Files Example

# *****************************************************
# Variables to control Makefile operation

CXX = g++
CXXFLAGS = -Wall -g

BUILD    := ./build

# ****************************************************
# Targets needed to bring the executable up to date

main: main.o Point.o Rectangle.o
	$(CXX) $(CXXFLAGS) -o main main.o Point.o Rectangle.o

# The main.o target can be written more simply

main.o: main.cpp Point.h Rectangle.h
	$(CXX) $(CXXFLAGS) -c main.cpp

Point.o: Point.h

Rectangle.o: Rectangle.h Point.h

clean:
	rm -Rf ./bin