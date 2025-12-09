#!/bin/bash

# choose the key for chords
read -p "Key:" KEY

# Harmonical functions and chords defined for each key
if [[ "$KEY" = "C" ]]; then

    CHORDS=(C Dm Em F G Am)
    ROMAN=(I. ii. iii. IV. V. vi.)
    declare -a CHORD_ROLL=()
    declare -a ROMAN_ROLL=()

elif [[ "$KEY" = "G" ]]; then

    CHORDS=(G Am Bm C D Em)
    ROMAN=(I. ii. iii. IV. V. vi.)
    declare -a CHORD_ROLL=()
    declare -a ROMAN_ROLL=()

elif [[ "$KEY" = "D" ]]; then

    CHORDS=(D Em F#m G A Bm)
    ROMAN=(I. ii. iii. IV. V. vi.)
    declare -a CHORD_ROLL=()
    declare -a ROMAN_ROLL=()

elif [[ "$KEY" = "A" ]]; then

    CHORDS=(A Bm C#m D E F#m)
    ROMAN=(I. ii. iii. IV. V. vi.)
    declare -a CHORD_ROLL=()
    declare -a ROMAN_ROLL=()

elif [[ "$KEY" = "E" ]]; then

    CHORDS=(E F#m G#m A B C#m)
    ROMAN=(I. ii. iii. IV. V. vi.)
    declare -a CHORD_ROLL=()
    declare -a ROMAN_ROLL=()

elif [[ "$KEY" = "B" ]]; then

    CHORDS=(B C#m D#m E F# G#m)
    ROMAN=(I. ii. iii. IV. V. vi.)
    declare -a CHORD_ROLL=()
    declare -a ROMAN_ROLL=()

elif [[ "$KEY" = "F#" ]]; then

    CHORDS=(F# G#m A#m B C# D#m)
    ROMAN=(I. ii. iii. IV. V. vi.)
    declare -a CHORD_ROLL=()
    declare -a ROMAN_ROLL=()

elif [[ "$KEY" = "C#" ]]; then

    CHORDS=(C# D#m E#m F# G# A#m)
    ROMAN=(I. ii. iii. IV. V. vi.)
    declare -a CHORD_ROLL=()
    declare -a ROMAN_ROLL=()

elif [[ "$KEY" = "F" ]]; then

    CHORDS=(F Gm Am Bb C Dm)
    ROMAN=(I. ii. iii. IV. V. vi.)
    declare -a CHORD_ROLL=()
    declare -a ROMAN_ROLL=()

elif [[ "$KEY" = "Bb" ]]; then

    CHORDS=(Bb Cm Dm Eb F Gm)
    ROMAN=(I. ii. iii. IV. V. vi.)
    declare -a CHORD_ROLL=()
    declare -a ROMAN_ROLL=()

elif [[ "$KEY" = "Eb" ]]; then

    CHORDS=(Eb Fm Gm Ab Bb Cm)
    ROMAN=(I. ii. iii. IV. V. vi.)
    declare -a CHORD_ROLL=()
    declare -a ROMAN_ROLL=()

elif [[ "$KEY" = "Ab" ]]; then

    CHORDS=(Ab Bbm Cm Db Eb Fm)
    ROMAN=(I. ii. iii. IV. V. vi.)
    declare -a CHORD_ROLL=()
    declare -a ROMAN_ROLL=()

elif [[ "$KEY" = "Db" ]]; then

    CHORDS=(Db Ebm Fm Gb Ab Bbm)
    ROMAN=(I. ii. iii. IV. V. vi.)
    declare -a CHORD_ROLL=()
    declare -a ROMAN_ROLL=()

elif [[ "$KEY" = "Gb" ]]; then

    CHORDS=(Gb Abm Bbm Cb Db Ebm)
    ROMAN=(I. ii. iii. IV. V. vi.)
    declare -a CHORD_ROLL=()
    declare -a ROMAN_ROLL=()

elif [[ "$KEY" = "Cb" ]]; then

    CHORDS=(Cb Dbm Ebm Fb Gb Abm)
    ROMAN=(I. ii. iii. IV. V. vi.)
    declare -a CHORD_ROLL=()
    declare -a ROMAN_ROLL=()

elif [[ "$KEY" = "Am" ]]; then

    CHORDS=(Am C Dm E G F)
    ROMAN=(i. III. iv. V. VI. VII.)
    declare -a CHORD_ROLL=()
    declare -a ROMAN_ROLL=()

elif [[ "$KEY" = "Em" ]]; then

    CHORDS=(Em G Am B D C)
    ROMAN=(i. III. iv. V. VI. VII.)
    declare -a CHORD_ROLL=()
    declare -a ROMAN_ROLL=()

elif [[ "$KEY" = "Bm" ]]; then

    CHORDS=(Bm D Em F# A G)
    ROMAN=(i. III. iv. V. VI. VII.)
    declare -a CHORD_ROLL=()
    declare -a ROMAN_ROLL=()

elif [[ "$KEY" = "F#m" ]]; then

    CHORDS=(F#m A Bm C# E D)
    ROMAN=(i. III. iv. V. VI. VII.)
    declare -a CHORD_ROLL=()
    declare -a ROMAN_ROLL=()

elif [[ "$KEY" = "C#m" ]]; then

    CHORDS=(C#m E F#m G# B A)
    ROMAN=(i. III. iv. V. VI. VII.)
    declare -a CHORD_ROLL=()
    declare -a ROMAN_ROLL=()

elif [[ "$KEY" = "G#m" ]]; then

    CHORDS=(G#m B C#m D# F# E)
    ROMAN=(i. III. iv. V. VI. VII.)
    declare -a CHORD_ROLL=()
    declare -a ROMAN_ROLL=()

elif [[ "$KEY" = "D#m" ]]; then

    CHORDS=(D#m F# G#m A# C# B)
    ROMAN=(i. III. iv. V. VI. VII.)
    declare -a CHORD_ROLL=()
    declare -a ROMAN_ROLL=()

elif [[ "$KEY" = "Dm" ]]; then

    CHORDS=(Dm F Gm A C Bb)
    ROMAN=(i. III. iv. V. VI. VII.)
    declare -a CHORD_ROLL=()
    declare -a ROMAN_ROLL=()

elif [[ "$KEY" = "Gm" ]]; then

    CHORDS=(Gm Bb Cm D F Eb)
    ROMAN=(i. III. iv. V. VI. VII.)
    declare -a CHORD_ROLL=()
    declare -a ROMAN_ROLL=()

elif [[ "$KEY" = "Cm" ]]; then

    CHORDS=(Cm Eb Fm G Bb Ab)
    ROMAN=(i. III. iv. V. VI. VII.)
    declare -a CHORD_ROLL=()
    declare -a ROMAN_ROLL=()

elif [[ "$KEY" = "Fm" ]]; then

    CHORDS=(Fm Ab Bbm C Eb Db)
    ROMAN=(i. III. iv. V. VI. VII.)
    declare -a CHORD_ROLL=()
    declare -a ROMAN_ROLL=()

elif [[ "$KEY" = "Bbm" ]]; then

    CHORDS=(Bbm Db Eb F Ab Gb)
    ROMAN=(i. III. iv. V. VI. VII.)
    declare -a CHORD_ROLL=()
    declare -a ROMAN_ROLL=()

elif [[ "$KEY" = "Ebm" ]]; then

    CHORDS=(Ebm Gb Ab Bb Db Cb)
    ROMAN=(i. III. iv. V. VI. VII.)
    declare -a CHORD_ROLL=()
    declare -a ROMAN_ROLL=()

elif [[ "$KEY" = "Abm" ]]; then

    CHORDS=(Abm B Dbm Ebm Gb Fb)
    ROMAN=(i. III. iv. V. VI. VII.)
    declare -a CHORD_ROLL=()
    declare -a ROMAN_ROLL=()

else
    echo "Key not supported."
    exit 1
fi


    
# loop for dice roll
    for i in {1..4} 
    do 
        roll=$(( $RANDOM % 6 )) 

        echo  "    _____      "
        echo "   |     |  "
        echo "   |  $((roll + 1))  |  "
        echo "   |_____| " 

# assign number from dice roll to a chord and its function from arrays
        CHORD_ROLL+=("${CHORDS[$roll]}")
	ROMAN_ROLL+=("${ROMAN[$roll]}")	
    done


# echo "${ROMAN_ROLL[*]}"
# echo "${CHORD_ROLL[*]}"

for r in "${ROMAN_ROLL[@]}"; do
	printf "%-7s" "$r"
   done
   echo
for c in "${CHORD_ROLL[@]}"; do
	printf "%-7s" "$c"
   done
   echo
