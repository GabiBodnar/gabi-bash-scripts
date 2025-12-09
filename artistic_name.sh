
#!/bin/bash
# Different arrays of syllables

declare -a zero=(
     "bu" "sia" "tek" "či" "kve" "lu" "fi" "mir" "tvr" "stv" "ol" "kev" "al" "okv" "mi" "tu" "keb" "qe" "xi" "gab" "lot" "sen" "pes" "vian" "ba" "ni" "les" "ke" "si" "alt" "ži" "ptá" "jels" "fre" "tuls" "biaf" "trk" "miš" "šveš" "špa"
)


declare -a one=(
     "dok" "puc" "fes" "špik" "fleš" "gam" "čoč" "ok" "vlas" "bruch" "mliek" "staš" "vie" "čuv" "ob" "bľu" "čle" "spiš" "še" "bebe" "bua" "imb" "bi" "bumbo" "sisi" "me" "bali" "kau" "fio" "lej" "obš" "šop" "pu" "ca" "bo" "la" "ha" "vin" "so" "ib"
)

declare -a two=(
    "tan" "kvan" "ece" "ifi" "toto" "ga" "fi" "ke" "okvar" "feke" "seme" "bebu" "fuk" "šik" "les" "viac" "tam" "va" "ce" "ica" "iku" "pik" "rva" "bem" "bef" "ulo" "ele" "epe" "ra" "oba" "la" "sibo" "oko" "imo" "abu" "okie" "an" "lov" "šov" "šku" 
)

# Pick random syllable out of each one

part0=${zero[$((RANDOM % ${#zero[@]}))]}
part1=${one[$((RANDOM % ${#one[@]}))]}
part2=${two[$((RANDOM % ${#two[@]}))]}

# Create array of parts
parts=("${part0}" "${part1}" "${part2}")

for (( i=2; i>0; i-- )); do
    j=$((RANDOM % (i+1)))
    tmp=${parts[i]}
    parts[i]=${parts[j]}
    parts[j]=$tmp
done

echo "${parts[0]}${parts[1]}${parts[2]}"
