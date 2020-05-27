The following table shows a number of special variables that you can use in your shell scripts −

###Variable & Description
1.  $0    - The filename of the current script.

1.  $n    - These variables correspond to the arguments with which a script was invoked. 
                Here n is a positive decimal number corresponding to the position of an argument 
                (the first argument is $1, the second argument is $2, and so on).

1.  $#    - The number of arguments supplied to a script.

1.  $*    - All the arguments are double quoted. If a script receives two arguments, $* is equivalent to $1 $2.

1.  $@    - All the arguments are individually double quoted. 
                If a script receives two arguments, $@ is equivalent to $1 $2.

1.  $?    - The exit status of the last command executed.

1.  $$    - The process number of the current shell. 
                For shell scripts, this is the process ID under which they are executing.

1.  $!    - The process number of the last background command.

> sample.sh
````
#!/bin/sh

echo "File Name: $0"
echo "First Parameter : $1"
echo "Second Parameter : $2"
echo "Quoted Values: $@"
echo "Quoted Values: $*"
echo "Total Number of Parameters : $#"
````

> Output
````
$./sample.sh ysree reddy
File Name : ./sample.sh
First Parameter : ysree
Second Parameter : reddy
Quoted Values: ysree reddy
Quoted Values: ysree reddy
Total Number of Parameters : 2
````
