from os import system
i = 5
name = "Sully_%d.py"
frmt = """from os import system
i = %d
name = "Sully_%%d.py"
frmt = %c%c%c%s%c%c%c
if i <= 0:
    exit()
else:
    i -= 1
    ename = name %% i
    with open(ename, "w+") as fd:
        fd.write(frmt %% (i,34,34,34,frmt,34,34,34))
    system("python %%s" %% (ename))"""
if i <= 0:
    exit()
else:
    i -= 1
    ename = name % i
    with open(ename, "w+") as fd:
        fd.write(frmt % (i,34,34,34,frmt,34,34,34))
    system("python %s" % (ename))