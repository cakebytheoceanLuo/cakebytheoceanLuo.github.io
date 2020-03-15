#!/usr/bin/env python3

import random
from decimal import Decimal

for i in range(10000000):
    print(f'{float(Decimal(random.randrange(0, 100000000) / 1000000))},{float(Decimal(random.randrange(0, 100000000) / 1000000))}')
