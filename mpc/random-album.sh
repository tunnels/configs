/usr/local/bin/mpc clear; /usr/local/bin/mpc search album "$(/usr/local/bin/mpc list album | /usr/local/bin/gshuf -n1)" | /usr/local/bin/mpc add && /usr/local/bin/mpc play