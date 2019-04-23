import sys
from time import sleep
import random

def write(c):
    sys.stdout.write(c)
    sys.stdout.flush()

SLEEP_MIN = 0.05

def sample_sleep (mean, stddev):
    return max([SLEEP_MIN, random.normalvariate(mean, stddev)])

def CHAR_SLEEP():
    return sample_sleep(0.1, 0.05)
def WORD_SLEEP():
    return sample_sleep(0.2, 0.05)

def LINE_SLEEP ():
    return sample_sleep(1.0, 0.5)

def type_word(w):
    for c in w:
        #print c
        write(c)
        sleep(CHAR_SLEEP())


def type_line (l):
    words = l.split()
    for w in words:
        type_word(w)
        write(' ')
        sleep(WORD_SLEEP())


def main():
    i=0
    for line in sys.stdin.readlines():
        if not line:
            break
        type_line(line)
        sleep(LINE_SLEEP())
        write('\n')

if __name__ == "__main__":
    main()
