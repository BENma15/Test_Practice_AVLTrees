CXX = g++
CXXFLAGS = -std=c++11 -Wall -Wextra -g -O0

# Target executable
TARGET = avl_example

# Source files
SOURCES = avl_example.cpp

# Object files
OBJECTS = $(SOURCES:.cpp=.o)

# Default target
all: $(TARGET)

# Build the executable
$(TARGET): $(OBJECTS)
	$(CXX) $(CXXFLAGS) -o $(TARGET) $(OBJECTS)

# Compile source files to object files
%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

# Run the example
run: $(TARGET)
	./$(TARGET)

# Clean up generated files
clean:
	rm -f $(OBJECTS) $(TARGET)

# Phony targets
.PHONY: all run clean
