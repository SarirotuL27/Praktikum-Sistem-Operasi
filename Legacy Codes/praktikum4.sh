#!/bin/bash

echo -n "Masukan Angka : ";
read angka

for ((a=1; a<=angka; a=a+1))
do
	let tiga=$a%3
	let lima=$a%5
	let tili=$a%15
	if [ $tili -eq 0 ]
		then
		echo "FizzBuzz";
	elif [ $tiga -eq 0 ]
		then
		echo "Fizz";
	elif [ $lima -eq 0 ]
		then
		echo "Buzz";
	else
		echo "$a";
	fi
done
