#!/bin/bash

# This script has intentional issues for shellcheck testing

# Unquoted variables
unquoted_variable=Hello

# Incorrect command substitution
result=$(ls -l |)

# Using deprecated backticks
deprecated_result=`echo Deprecated`

# Using echo without quotes
echo Multiple words without quotes

# Missing shebang
echo "This script doesn't have a shebang"

# Incorrect if statement syntax
if [ $unquoted_variable == "Hello" ]; then
  echo "Condition is true"
fi

# Using an undefined variable
echo $undefined_variable

# Using a deprecated echo option
echo -e "This uses the -e option"

# Missing quotes around command substitution
echo Result of command substitution is: $(echo "Hello")

# Missing space after shebang
#!/bin/bash
echo "This line has no space after the shebang"

# Unused variables
unused_variable="This variable is unused"

# Incorrect array declaration
my_array=("item1" "item2" "item3")

# Incorrect arithmetic expression
result=$((5 + * 3))

# Using external command without checking if it exists
command_not_exists

# Incorrect function definition
function myFunction {
  echo "Function definition with 'function' keyword"
}

myFunction

# Use of deprecated 'expr' for arithmetic
expr_result=$(expr 5 + 3)

# Incorrect here document
cat <<EOF
This is a here document with an unterminated EOF
