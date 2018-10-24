echo "Enter the no: of students :"
read n
i=$n

for i in $(seq 1 $n);
do
    echo "Enter student$i Name :"
    read name
    echo "Enter Register number"
    read reg_no
    echo 'Register no: '$reg_no >$reg_no.txt
    echo 'Name : ' $name >>$reg_no.txt 
    echo "Enter the marks in the order of Computer science,Chemistry,Physics,Maths"
    read m1
    read m2
    read m3
    read m4
    echo ' MARKS ' >>$reg_no.txt
    echo '=======' >>$reg_no.txt
    echo 'Computer Science :'$m1 >>$reg_no.txt
    echo 'Chemistry :'$m2 >>$reg_no.txt
    echo 'Physics :'$m3 >>$reg_no.txt
    echo 'Maths :'$m4 >>$reg_no.txt    
    tot=$(expr $m1 + $m2 + $m3 + $m4)
    avg=$(expr $tot / 4)
    if [ $avg -gt 90 ]
    then
        g='A+'
    elif [ $avg -gt 80 ]
    then
        g='A'
    elif [ $avg -gt 75 ] 
    then
        g='B+'
    elif [ $avg -gt 60 ]
    then
	  g='B'
    elif [ $avg -gt 55 ]
    then
        g='C+'
    elif [ $avg -gt 50 ]
    then
        g='C'
    elif [ $avg -gt 45 ] 
    then
        g='D+'
    elif [ $avg -gt 40 ]
    then
        g='D'
    else 
        g='F'
    fi
    echo 'Grade :' $g >>$reg_no.txt     
done
