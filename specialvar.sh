echo $1
echo $2
echo $#     #no: of arguments
echo $@     #All the arguments are individually double quoted. If a script receives two \\           arguments, $@ is equivalent to $1 $2.
echo $*	    #The number of arguments supplied to a script.
echo $?     #exit status of last command executed
echo $!	    #The process number of the last background command.
echo $$     #PID of the current shell
for i in $*
do
   echo $i
done

