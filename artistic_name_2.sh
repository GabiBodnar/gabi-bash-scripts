#!/bin/bash

# Generate array of two-letter syllables 
consonants=(a b c č d ď f g h i j k l ľ m n ň o p q r s š t ť u v w x z ž)
vowels=(a á e é i í o ó u ú y ý)
end_consonants=(a b c č d ď f g h i j k l ľ m n ň o p q r s š t ť u v w x z ž)
end_vowels=(a á e é i í o ó u ú y ý)
declare -a syllables=()

# Build the syllables consonant  + vowel

for c in "${consonants[@]}"; do
    for v in "${vowels[@]}"; do
        syllables+=("$c$v")
    done
done

# Build the syllables vowel + consonant

for v in "${vowels[@]}"; do
 for c in "${consonants[@]}"; do
	syllables+=("$v$c")
     done
done

# Build triplet syllables A

for c in "${consonants[@]}"; do
    for v in "${vowels[@]}"; do
	for e in "${end_consonants[@]}"; do 
        syllables+=("$c$v$e")
	done
    done
done

# Build triplet syllables B

for v in "${vowels[@]}"; do
 for c in "${consonants[@]}"; do
	for e in "${end_vowels[@]}"; do
        syllables+=("$v$c$e")
	done
     done
done

# Pick random three syllables

part1=${syllables[$((RANDOM % ${#syllables[@]}))]}
part2=${syllables[$((RANDOM % ${#syllables[@]}))]}
part3=${syllables[$((RANDOM % ${#syllables[@]}))]}

artistic_name+=("$part1" "$part2" "$part3")

echo "${artistic_name[0]}${artistic_name[1]}${artistic_name[2]}"
