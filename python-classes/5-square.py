#!/usr/bin/python3
"""Module that defines a Square with printing capability."""


class Square:
    """Represents a square that can be printed."""

    def __init__(self, size=0):
        """Initializes the square."""
        self.size = size

    @property
    def size(self):
        """Retrieves the size."""
        return self.__size

    @size.setter
    def size(self, value):
        """Sets the size with validation."""
        if not isinstance(value, int):
            raise TypeError("size must be an integer")
        if value < 0:
            raise ValueError("size must be >= 0")
        self.__size = value

    def area(self):
        """Returns the area."""
        return self.__size ** 2

    def my_print(self):
        """Prints the square using #."""
        if self.__size == 0:
            print()
            return
        for _ in range(self.__size):
            print("#" * self.__size)
