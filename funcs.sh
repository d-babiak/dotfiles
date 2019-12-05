timer() {
  (
    espeak "$(python3.7 -c 'import datetime; print( datetime.datetime.now().strftime("%I %M")[:])')" ;
    for i in {1..10}; do sleep 120; espeak $i; done ;
    espeak "$(python3.7 -c 'import datetime; print( datetime.datetime.now().strftime("%I %M")[:])')" ;
  ) &
}

pow() {
  my_batt=/org/freedesktop/UPower/devices/battery_BAT0  # get by upower -e
  upower -i $my_batt  | awk '/percentage|time to/' 
}

todo() {
  echo "o $@" >> ~/todo.log
  echo >> ~/todo.log
}

amend() {
  git commit --amend --no-edit
}

resync-prod() {
     git checkout prod         \
  && git pull                  \
  && git merge --ff-only "$1"  \
  && git push origin prod:prod
}
