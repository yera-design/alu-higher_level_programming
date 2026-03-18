#!/usr/bin/python3
"""Module that defines a Square with area calculation."""

class Square:
    """Represents a square with size validation and area method."""

    def __init__(self, size=0):
        """Initializes the square with size validation."""
        if not isinstance(size, int):
            raise TypeError("size must be an integer")
        if size < 0:
            raise ValueError("size must be >= 0")
        self.__size = size

    def area(self):
        """Returns the area of the square."""
        return self.__size ** 2
