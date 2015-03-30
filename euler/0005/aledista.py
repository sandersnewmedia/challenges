divisors = [11, 12, 13, 14, 15, 16, 17, 18, 19, 20]
found = False
i = divisors[-1]

while not found:
    for div in divisors:
        if i % div != 0:
            i += divisors[-1]
            break
    else:
        found = True

print i
