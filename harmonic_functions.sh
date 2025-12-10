#!/bin/bash

# list of supported keys
declare -a LIST=("C" "G" "D" "A" "E" "B" "F_SHARP" "C_SHARP" "F" "Bb" "Eb" "Ab" "Db" "Gb" "Cb" "Am" "Em" "Bm" "F_SHARP_m" "C_SHARP_m" "G_SHARP_m" "D_SHARP_m" "Dm" "Gm" "Cm" "Fm" "Bbm" "Ebm" "Abm")

# chords in major and minor keys
declare -a CHORDS_C=("C" "Dm" "Em" "F" "G" "Am")
declare -a CHORDS_G=("G" "Am" "Bm" "C" "D" "Em")
declare -a CHORDS_D=("D" "Em" "F#m" "G" "A" "Bm")
declare -a CHORDS_A=("A" "Bm" "C#m" "D" "E" "F#m")
declare -a CHORDS_E=("E" "F#m" "G#m" "A" "B" "C#m")
declare -a CHORDS_B=("B" "C#m" "D#m" "E" "F#" "G#m")
declare -a CHORDS_F_SHARP=("F#" "G#m" "A#m" "B" "C#" "D#m")
declare -a CHORDS_C_SHARP=("C#" "D#m" "E#m" "F#" "G#" "A#m")
declare -a CHORDS_F=("F" "Gm" "Am" "Bb" "C" "Dm")
declare -a CHORDS_Bb=("Bb" "Cm" "Dm" "Eb" "F" "Gm")
declare -a CHORDS_Eb=("Eb" "Fm" "Gm" "Ab" "Bb" "Cm")
declare -a CHORDS_Ab=("Ab" "Bbm" "Cm" "Db" "Eb" "Fm")
declare -a CHORDS_Db=("Db" "Ebm" "Fm" "Gb" "Ab" "Bbm")
declare -a CHORDS_Gb=("Gb" "Abm" "Bbm" "Cb" "Db" "Ebm")
declare -a CHORDS_Cb=("Cb" "Dbm" "Ebm" "Fb" "Gb" "Abm")
declare -a CHORDS_Am=("Am" "C" "Dm" "E" "G" "F")
declare -a CHORDS_Em=("Em" "G" "Am" "B" "D" "C")
declare -a CHORDS_Bm=("Bm" "D" "Em" "F#" "A" "G")
declare -a CHORDS_F_SHARP_m=("F#m" "A" "Bm" "C#" "E" "D")
declare -a CHORDS_C_SHARP_m=("C#m" "E" "F#m" "G#" "B" "A")
declare -a CHORDS_G_SHARP_m=("G#m" "B" "C#m" "D#" "F#" "E")
declare -a CHORDS_D_SHARP_m=("D#m" "F#" "G#m" "A#" "C#" "B")
declare -a CHORDS_Dm=("Dm" "F" "Gm" "A" "C" "Bb")
declare -a CHORDS_Gm=("Gm" "Bb" "Cm" "D" "F" "Eb")
declare -a CHORDS_Cm=("Cm" "Eb" "Fm" "G" "Bb" "Ab")
declare -a CHORDS_Fm=("Fm" "Ab" "Bbm" "C" "Eb" "Db")
declare -a CHORDS_Bbm=("Bbm" "Db" "Eb" "F" "Ab" "Gb")
declare -a CHORDS_Ebm=("Ebm" "Gb" "Ab" "Bb" "Db" "Cb")
declare -a CHORDS_Abm=("Abm" "B" "Dbm" "Ebm" "Gb" "Fb")

# regexes to identify MAJ or MIN scale
MAJ='^[A-G](b|_SHARP)?_?$'
MIN='^[A-G](b|_SHARP)?_?m$'

# take the chord
read -p "Harmonic functions of: " CHORD

# check if the chord is supported 
for k in "${LIST[@]}"; do
		if [[ $k == $CHORD ]]; then
	echo "Chord found"
	fi
done
# regex patterns for sharp chords
MAJSHARP='[A-G]\#'
MINSHARP='[A-G]\#\m'


# rename sharp chords for bash to be able to process
if [[ $CHORD =~ $MAJSHARP ]]; then
	CHORD=${CHORD//#/_SHARP}
elif [[  $CHORD =~ $MINSHARP ]]; then
	CHORD=${CHORD//#m/_SHARP_m}
fi


# function to iterate chords in key and compare them to chord
search_in_array() {
	# turn input into local array (key)
	local ARR=("$@")
	# idx is one chord in the key
	for idx in "${!ARR[@]}"; do
		# if chords match
		if [[ "${ARR[idx]}" == "$CHORD" ]]; then
	# echo key name and chord`s harmonic function 
	echo "Key ${ARR[0]}" : "${HARM[idx]}"
	return 0
	fi
	done	
}

# iterate the LIST of keys
for k in "${LIST[@]}"; do
	# determine harmonic functions according to key type (MAJ , MIN)
	if [[ $k =~ $MIN ]]; then
	   ROMAN=("i." "III." "iv." "V." "VI." "VII.")
	elif [[ $k =~ $MAJ ]]; then
	   ROMAN=("I." "ii." "iii." "IV." "V." "vi.")
	fi
	# place Key name (k) at the end of CHORDS_ variable , to iterate through all chords in  whole $LIST	
	KEYVAR=("CHORDS_$k[@]")
	KEY=("${!KEYVAR}")
	# Assign the harmonic function of the CHORD in each KEY
	ROMANVAR=("ROMAN[@]")
	HARM=("${!ROMANVAR}")
	# call the function
	search_in_array "${KEY[@]}"
done	
