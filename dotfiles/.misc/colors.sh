#!/bin/bash

t='gYw'

printf '            '
printf '%8s' {40..47}m
printf '\n'

fg_colors=({,1}m)
for n in {30..37}m; do
  fg_colors+=({,1\;}"$n")
  done

  for fgc in "${fg_colors[@]}"; do
    printf " %5s \033[%s  $t  " "$fgc" "$fgc"
      for bgc in {40..47}m; do
          printf " \033[%s\033[%s  $t  \033[0m" "$fgc" "$bgc"
	    done
	      printf '\n'
	      done
