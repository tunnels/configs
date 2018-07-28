import sys
import random

if (len(sys.argv) != 3):
	print("usage: rand [lower-bound] [upper-bound]")
else:
	print(random.randint(int(sys.argv[1]), int(sys.argv[2])))
