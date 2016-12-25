from sys import argv
from os import system
i = 5
name = "Sully_%d.py"
frmt = """from sys import argv
from os import system
i = %d
name = "Sully_%%d.py"
frmt = %c%c%c%s%c%c%c
if i <= 0:
    exit()
else:
    if argv[0].find('_') > -1:
        i -= 1
    ename = name %% i
    try:
        with open(ename, "w+") as fd:
            fd.write(frmt %% (i,34,34,34,frmt,34,34,34))
        system("python %%s" %% (ename))
    except:
        print "Error with file opening."
"""
if i <= 0:
    exit()
else:
    if argv[0].find('_') > -1:
        i -= 1
    ename = name % i
    try:
        with open(ename, "w+") as fd:
            fd.write(frmt % (i,34,34,34,frmt,34,34,34))
        system("python %s" % (ename))
    except:
        print "Error with file opening."
