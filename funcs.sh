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

path() {
  echo -n "$(pwd)/${1}" | xclip -selection clipboard
}



# list every directory on $PATH
all-executables() {
  ls $(echo $PATH | awk 'BEGIN { RS = ":" } {print $0}' | sort | uniq | egrep -v '^$') | sort | uniq
}

quip() {
  (firefox https://wavemm.quip.com/bSTAOAxRxZQ &> /dev/null &)
}

slack() {
  (firefox https://app.slack.com/client/T5XKZ9F8X/CN8UZ316W/thread/C5WUUKNKU-1575667988.299100 &> /dev/null &)
}

# If I background the subshell, how can it prompt for sudo password?
snail() {
  sudo bash <<"EOF"
(
  xhost +SI:localuser:root \
  && sudo xkeysnail -q /home/dmb/xkeysnail_config.py
) &> /dev/null &
EOF
}

up() {
  cp -f "$1" "/home/dmb/uploads/${1}"
}
