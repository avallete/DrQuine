#comment one
def do_nothing(c):
    if c > 0:
        do_nothing(c - 1)

def main():
    # comment two
    frmt = """#comment one
def do_nothing(c):
    if c > 0:
        do_nothing(c - 1)

def main():
    # comment two
    frmt = %c%c%c%s%c%c%c
    print frmt %% (34,34,34,frmt,34,34,34,34,34)

if __name__ == %c__main__%c:
    main()"""
    print frmt % (34,34,34,frmt,34,34,34,34,34)

if __name__ == "__main__":
    main()
