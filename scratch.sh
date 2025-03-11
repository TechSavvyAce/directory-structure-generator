for Y in {2020..2025}
do
  mkdir $Y
  cd $Y
  for M in {01..12}
  do
    if [ "$Y" -eq "2025" ] && [ "$M" -gt "03" ]; then break; fi  # Stop if it's beyond March 2025
    mkdir $M
    cd $M
    for D in {1..31}
    do
      if [ "$Y" -eq "2025" ] && [ "$M" -eq "03" ] && [ "$D" -gt "10" ]; then break; fi  # Stop if it's beyond March 10, 2025
      
      # Skip days that are not valid in a month (e.g., Feb 30, Apr 31, etc.)
      if ! date -d "$Y-$M-$D" >/dev/null 2>&1; then continue; fi

      # Check if the current day is a weekend (Saturday or Sunday)
      day_of_week=$(date -d "$Y-$M-$D" +%u)
      if [ "$day_of_week" -ge 6 ]; then continue; fi  # Skip weekends

      if [ "0" == "$(($RANDOM%3))" ]; then continue; fi

      mkdir $D
      cd $D
      for i in $(seq 1 $(($RANDOM%7)))
      do
        echo "0$i on $M/$D/$Y" > commit.md
        export GIT_COMMITTER_DATE="$Y-$M-$D 12:0$i:00"
        export GIT_AUTHOR_DATE="$Y-$M-$D 12:0$i:00"
        git add commit.md -f
        git commit --date="$Y-$M-$D 12:0$i:00" -m "0$i on $M $D $Y"
      done
      cd ../
    done
    cd ../
  done
  cd ../
done

git push origin master
git commit -am "cleanup"
git push origin master
