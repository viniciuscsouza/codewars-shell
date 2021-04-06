#!/bin/bash
# Challenge: https://www.codewars.com/kata/55e2adece53b4cdcb900006c/

race() {
    # your code
     if [ "$2" -lt "$1" ]
     then 
        echo "" 
     else
        speed_a_per_second=$(echo "scale=5;$1/3600" | bc)
        speed_b_per_second=$(echo "scale=5;$2/3600" | bc)
        initial_distance=$3
 
        delta_speed=$(echo "$speed_b_per_second-$speed_a_per_second" | bc)
        total_time=$(echo "$initial_distance/$delta_speed" | bc)

        hour=$(echo "$total_time/3600" | bc)
        minute=$(echo "(($total_time-($hour*3600))/60)" | bc)
        second=$(echo "$total_time % 60" | bc)

        echo "$hour $minute $second"
      fi
}
race $1 $2 $3

