/usr/local/bin/mpc clear; /usr/local/bin/mpc find album "$(/usr/local/bin/mpc list album | /usr/local/bin/rl -c 1)" | /usr/local/bin/mpc add && /usr/local/bin/mpc play
