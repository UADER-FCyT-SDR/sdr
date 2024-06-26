from math import factorial
from decimal import Decimal, getcontext
from math   import pi as PI
import time

def prn_pi(pi, PI, t):

    message = "pi is approximately %.16f, error is %.16f time(%.6f)"
    print  (message % (float(pi), abs(float(pi) - PI), t))

# Chudnovsky algorithm for figuring out pi
getcontext().prec=1000

pi_input = 10
n = int(pi_input)
start = time.time()

def cal(n):
    t= Decimal(0)
    pi = Decimal(0)
    deno= Decimal(0)

    for k in range(n):
        t = ((-1)**k)*(factorial(6*k))*(13591409+545140134*k)
        deno = factorial(3*k)*(factorial(k)**3)*(640320**(3*k))
        pi += Decimal(t)/Decimal(deno)
    pi = pi * Decimal(12) / Decimal(640320 ** Decimal(1.5))
    pi = 1/pi
    return round(pi,n)

prn_pi(cal(n), PI,(time.time()-start))

