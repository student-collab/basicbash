#!/bin/bash

place=World
echo "Hello ${place} "

echo "Filnavnet $0 er akronym for BasicBash nr 2"

my_array=(apple banana "Fruit Basket" orange)
my2_array[2]=apricot
echo "content of my_array: ${my_array[@]}"
echo "size of my_array ${#my_array[@]}"

echo "content of my2_array: ${my2_array[@]}"
echo "size of my2_array ${#my2_array[@]}"
