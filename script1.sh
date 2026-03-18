#!/bin/bash

# Create project directory
mkdir -p python-inheritance
cd python-inheritance || exit

# Create README.md
echo "# Python - Inheritance" > README.md
echo "This project contains tasks on inheritance in Python." >> README.md

# 0-lookup.py
cat > 0-lookup.py << 'EOF'
#!/usr/bin/python3
"""Module for lookup function."""

def lookup(obj):
    """Returns the list of available attributes and methods of an object."""
    return dir(obj)
EOF
chmod +x 0-lookup.py

# 1-my_list.py
cat > 1-my_list.py << 'EOF'
#!/usr/bin/python3
"""Module for MyList class."""

class MyList(list):
    """A subclass of list with a method to print sorted list."""

    def print_sorted(self):
        """Prints the list in ascending order."""
        print(sorted(self))
EOF
chmod +x 1-my_list.py

# tests/1-my_list.txt
mkdir -p tests
cat > tests/1-my_list.txt << 'EOF'
This file contains tests for MyList class (optional).
EOF

# 2-is_same_class.py
cat > 2-is_same_class.py << 'EOF'
#!/usr/bin/python3
"""Module for is_same_class function."""

def is_same_class(obj, a_class):
    """Returns True if obj is exactly an instance of a_class, else False."""
    return type(obj) is a_class
EOF
chmod +x 2-is_same_class.py

# 3-is_kind_of_class.py
cat > 3-is_kind_of_class.py << 'EOF'
#!/usr/bin/python3
"""Module for is_kind_of_class function."""

def is_kind_of_class(obj, a_class):
    """Returns True if obj is an instance of or inherited from a_class."""
    return isinstance(obj, a_class)
EOF
chmod +x 3-is_kind_of_class.py

# 4-inherits_from.py
cat > 4-inherits_from.py << 'EOF'
#!/usr/bin/python3
"""Module for inherits_from function."""

def inherits_from(obj, a_class):
    """Returns True if obj is an instance of a class that inherited from a_class."""
    return isinstance(obj, a_class) and type(obj) is not a_class
EOF
chmod +x 4-inherits_from.py

# 5-base_geometry.py
cat > 5-base_geometry.py << 'EOF'
#!/usr/bin/python3
"""Module for BaseGeometry class."""

class BaseGeometry:
    """An empty base geometry class."""
    pass
EOF
chmod +x 5-base_geometry.py

# 6-base_geometry.py
cat > 6-base_geometry.py << 'EOF'
#!/usr/bin/python3
"""Module for BaseGeometry class with area method."""

class BaseGeometry:
    """Base geometry class with area method."""

    def area(self):
        """Raises an exception indicating area not implemented."""
        raise Exception("area() is not implemented")
EOF
chmod +x 6-base_geometry.py

# 7-base_geometry.py
cat > 7-base_geometry.py << 'EOF'
#!/usr/bin/python3
"""Module for BaseGeometry class with integer validator."""

class BaseGeometry:
    """Base geometry class with area and integer validator."""

    def area(self):
        """Raises an exception indicating area not implemented."""
        raise Exception("area() is not implemented")

    def integer_validator(self, name, value):
        """Validates that value is a positive integer."""
        if type(value) is not int:
            raise TypeError("{} must be an integer".format(name))
        if value <= 0:
            raise ValueError("{} must be greater than 0".format(name))
EOF
chmod +x 7-base_geometry.py

# tests/7-base_geometry.txt
cat > tests/7-base_geometry.txt << 'EOF'
This file contains tests for BaseGeometry class (optional).
EOF

# 8-rectangle.py
cat > 8-rectangle.py << 'EOF'
#!/usr/bin/python3
"""Module for Rectangle class inheriting from BaseGeometry."""
BaseGeometry = __import__('7-base_geometry').BaseGeometry

class Rectangle(BaseGeometry):
    """Rectangle class that inherits from BaseGeometry."""

    def __init__(self, width, height):
        """Initialize rectangle with width and height."""
        self.integer_validator("width", width)
        self.integer_validator("height", height)
        self.__width = width
        self.__height = height
EOF
chmod +x 8-rectangle.py

# 9-rectangle.py
cat > 9-rectangle.py << 'EOF'
#!/usr/bin/python3
"""Module for Rectangle class with area and string representation."""
BaseGeometry = __import__('7-base_geometry').BaseGeometry

class Rectangle(BaseGeometry):
    """Rectangle class that inherits from BaseGeometry."""

    def __init__(self, width, height):
        """Initialize rectangle with width and height."""
        self.integer_validator("width", width)
        self.integer_validator("height", height)
        self.__width = width
        self.__height = height

    def area(self):
        """Return the area of the rectangle."""
        return self.__width * self.__height

    def __str__(self):
        """Return string representation of rectangle."""
        return "[Rectangle] {}/{}".format(self.__width, self.__height)
EOF
chmod +x 9-rectangle.py

# 10-square.py
cat > 10-square.py << 'EOF'
#!/usr/bin/python3
"""Module for Square class inheriting from Rectangle."""
Rectangle = __import__('9-rectangle').Rectangle

class Square(Rectangle):
    """Square class that inherits from Rectangle."""

    def __init__(self, size):
        """Initialize square with size."""
        self.integer_validator("size", size)
        self.__size = size
        super().__init__(size, size)

    def area(self):
        """Return the area of the square."""
        return self.__size ** 2
EOF
chmod +x 10-square.py

# 11-square.py
cat > 11-square.py << 'EOF'
#!/usr/bin/python3
"""Module for Square class with proper string representation."""
Rectangle = __import__('9-rectangle').Rectangle

class Square(Rectangle):
    """Square class that inherits from Rectangle."""

    def __init__(self, size):
        """Initialize square with size."""
        self.integer_validator("size", size)
        self.__size = size
        super().__init__(size, size)

    def area(self):
        """Return the area of the square."""
        return self.__size ** 2

    def __str__(self):
        """Return string representation of square."""
        return "[Square] {}/{}".format(self.__size, self.__size)
EOF
chmod +x 11-square.py

echo "All files created successfully in python-inheritance/"
