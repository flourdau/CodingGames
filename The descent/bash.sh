#set -xv  # to debug

function find_highest {
    # return the index of the highest value

    local array=($*)
    local index=0
    local max=0

    for i in {0..7}; do
        if [ ${array[i]} -gt $max ]; then
            max=${array[i]}
            index=$i
        fi
    done

    echo $index  # avoid return!
}

while true; do
    heights=()

    #for (( i=0; i<8; i++ )); do
    for _ in {0..7}; do
        read -r mountainH
        
        # quote your variables: https://unix.stackexchange.com/a/169765
        heights+=( "${mountainH//[!0-9]}" )  # integer only
    done

    echo ${heights[*]} >&2  # debug: display all values

    index=$( find_highest ${heights[@]} )
    echo $index
done