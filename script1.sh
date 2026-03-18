#!/bin/bash

mkdir -p python-inheritance
cd python-inheritance || exit

# 0-lookup.py
cat > 0-lookup.py << 'EOF'
#!/usr/bin/python3
"""Returns attributes and methods of an object."""
def lookup(obj):
    """Return list of available attributes and methods."""
    return dir(obj)
EOF

# 1-my_list.py
cat > 1-my_list.py << 'EOF'
#!/usr/bin/python3
"""Defines MyList class."""
class MyList(list):
    """Inherits from list."""
    def print_sorted(self):
        """Print sorted list."""
        print(sorted(self))
EOF

# 2-is_same_class.py
cat > 2-is_same_class.py << 'EOF'
#!/usr/bin/python3
"""Checks exact class."""
def is_same_class(obj, a_class):
    """Return True if same class."""
    return type(obj) is a_class
EOF

# 3-is_kind_of_class.py
cat > 3-is_kind_of_class.py << 'EOF'
#!/usr/bin/python3
"""Checks instance or inherited."""
def is_kind_of_class(obj, a_class):
    """Return True if instance or inherited."""
    return isinstance(obj, a_class)
EOF

# 4-inherits_from.py
cat > 4-inherits_from.py << 'EOF'
#!/usr/bin/python3
"""Checks subclass only."""
def inherits_from(obj, a_class):
    """Return True if subclass only."""
    return isinstance(obj, a_class) and type(obj) is not a_class
EOF

# 5-base_geometry.py
cat > 5-base_geometry.py << 'EOF'
#!/usr/bin/python3
"""Defines empty BaseGeometry."""
class BaseGeometry:
    """Empty class."""
    pass
EOF

# 6-base_geometry.py
cat > 6-base_geometry.py << 'EOF'
#!/usr/bin/python3
"""Defines BaseGeometry with area."""
class BaseGeometry:
    """Base geometry."""
    def area(self):
        raise Exception("area() is not implemented")
EOF

# 7-base_geometry.py
cat > 7-base_geometry.py << 'EOF'
#!/usr/bin/python3
"""Defines BaseGeometry with validator."""
class BaseGeometry:
    """Base geometry."""
    def area(self):
        raise Exception("area() is not implemented")
    def integer_validator(self, name, value):
        """Validate integer."""
        if type(value) is not int:
            raise TypeError("{} must be an integer".format(name))
        if value <= 0:
            raise ValueError("{} must be greater than 0".format(name))
EOF

# 8-rectangle.py
cat > 8-rectangle.py << 'EOF'
#!/usr/bin/python3
"""Rectangle inherits BaseGeometry."""
BaseGeometry = __import__('7-base_geometry').BaseGeometry
class Rectangle(BaseGeometry):
    """Rectangle class."""
    def __init__(self, width, height):
        self.integer_validator("width", width)
        self.integer_validator("height", height)
        self.__width = width
        self.__height = height
EOF

# 9-rectangle.py
cat > 9-rectangle.py << 'EOF'
#!/usr/bin/python3
"""Full Rectangle."""
BaseGeometry = __import__('7-base_geometry').BaseGeometry
class Rectangle(BaseGeometry):
    """Rectangle class."""
    def __init__(self, width, height):
        self.integer_validator("width", width)
        self.integer_validator("height", height)
        self.__width = width
        self.__height = height
    def area(self):
        return self.__width * self.__height
    def __str__(self):
        return "[Rectangle] {}/{}".format(self.__width, self.__height)
EOF

# 10-square.py
cat > 10-square.py << 'EOF'
#!/usr/bin/python3
"""Square inherits Rectangle."""
Rectangle = __import__('9-rectangle').Rectangle
class Square(Rectangle):
    """Square class."""
    def __init__(self, size):
        self.integer_validator("size", size)
        super().__init__(size, size)
EOF

# 11-square.py
cat > 11-square.py << 'EOF'
#!/usr/bin/python3
"""Square with custom print."""
Rectangle = __import__('9-rectangle').Rectangle
class Square(Rectangle):
    """Square class."""
    def __init__(self, size):
        self.integer_validator("size", size)
        super().__init__(size, size)
    def __str__(self):
        return "[Square] {}/{}".format(self._Rectangle__width, self._Rectangle__height)
EOF

# Make executable
chmod +x *.py

echo "✅ All python-inheritance files created successfully!"
