# layton CV128 number-lock
# [1,None,2]
# [1,  2, 2]
# [1,None,2]

import random

possible_numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9]


def solve():
    found = False

    while not found:
        local_numbers = possible_numbers[:]
        random.shuffle(local_numbers)

        list_1 = [local_numbers.pop(), None, local_numbers.pop()]
        list_2 = [local_numbers.pop(),local_numbers.pop(),local_numbers.pop()]
        list_3 = [local_numbers.pop(), None, local_numbers.pop()]

        found = validate(list_1, list_2, list_3)

    print "{}\n{}\n{}".format(list_1,list_2,list_3)


def validate(a,b,c):
    return a[0] * b[0] * c[0] == a[2] * b[2] * c[2] == b[0] * b[1] * b[2]
