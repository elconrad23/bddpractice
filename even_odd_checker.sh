#!/bin/bash
#shebang above tells the system to use the Bash shell to interpret the script

# This script checks numbers from 1 to 20 and tells if each is EVEN or ODD

for number in {1..20}
do
  if (( number % 2 == 0 )); then
    echo "$number is an EVEN number."
  else
    echo "$number is an ODD number."
  fi
done
#!/bin/bash

# This script checks numbers from 1 to 20 and tells if each is EVEN or ODD

for number in {1..20}
do
  if (( number % 2 == 0 )); then
    echo "$number is an EVEN number."
  else
    echo "$number is an ODD number."
  fi
done