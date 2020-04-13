#!/usr/bin/env python3
from faker import Faker
fake = Faker()

for _ in range(1000000):
  print(fake.email())