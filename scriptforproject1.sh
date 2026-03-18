#!/bin/bash

mkdir -p python-exceptions
cd python-exceptions || exit

# 0-safe_print_list.py
cat > 0-safe_print_list.py << 'EOF'
#!/usr/bin/python3
def safe_print_list(my_list=[], x=0):
    count = 0
    try:
        for i in range(x):
            print(my_list[i], end="")
            count += 1
    except:
        pass
    print()
    return count
EOF

# 1-safe_print_integer.py
cat > 1-safe_print_integer.py << 'EOF'
#!/usr/bin/python3
def safe_print_integer(value):
    try:
        print("{:d}".format(value))
        return True
    except:
        return False
EOF

# 2-safe_print_list_integers.py
cat > 2-safe_print_list_integers.py << 'EOF'
#!/usr/bin/python3
def safe_print_list_integers(my_list=[], x=0):
    count = 0
    for i in range(x):
        try:
            print("{:d}".format(my_list[i]), end="")
            count += 1
        except:
            continue
    print()
    return count
EOF

# 3-safe_print_division.py
cat > 3-safe_print_division.py << 'EOF'
#!/usr/bin/python3
def safe_print_division(a, b):
    result = None
    try:
        result = a / b
    except:
        result = None
    finally:
        print("Inside result: {}".format(result))
    return result
EOF

# 4-list_division.py
cat > 4-list_division.py << 'EOF'
#!/usr/bin/python3
def list_division(my_list_1, my_list_2, list_length):
    new_list = []
    for i in range(list_length):
        try:
            result = my_list_1[i] / my_list_2[i]
        except ZeroDivisionError:
            print("division by 0")
            result = 0
        except TypeError:
            print("wrong type")
            result = 0
        except IndexError:
            print("out of range")
            result = 0
        finally:
            new_list.append(result)
    return new_list
EOF

# 5-raise_exception.py
cat > 5-raise_exception.py << 'EOF'
#!/usr/bin/python3
def raise_exception():
    raise TypeError
EOF

# 6-raise_exception_msg.py
cat > 6-raise_exception_msg.py << 'EOF'
#!/usr/bin/python3
def raise_exception_msg(message=""):
    raise NameError(message)
EOF

# README
echo "# Python Exceptions Project" > README.md

# Make all python files executable
chmod +x *.py


