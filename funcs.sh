timer() {
  (
        say $(python3.7 -c 'import datetime; print( datetime.datetime.now().strftime("%I %M")[1:])') ;
        for i in {1..10}; do sleep 120; say $i; done ;
        say $(python3.7 -c 'import datetime; print( datetime.datetime.now().strftime("%I %M")[1:])') ;
  ) &
}

