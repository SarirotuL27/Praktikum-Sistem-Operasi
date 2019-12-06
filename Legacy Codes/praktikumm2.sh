#!/bin/bash

echo "Masukan Bilangan : ";
read bilangan
jam=3600
menit=60

if [ $bilangan -ge $jam ]
then
	let a1=$bilangan%$jam
	let a2=$a1%$menit
	let b1=$bilangan/$jam
	let b2=$a1/$menit
	echo $b1 "jam" $b2 "menit" $a2 "detik" 
elif [ $bilangan -ge $menit ]
then
	let aa2=$bilangan%$menit
	let bb2=$bilangan/$menit
	echo $bb2 "menit" $aa2 "detik"
else
	echo $bilangan "detik"
fi