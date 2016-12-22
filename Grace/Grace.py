# Comment one
fname='Grace_kid.py'
fmt="# Comment one%cfname='Grace_kid.py'%cfmt=%c%s%c%cdef FT(): fd=open('%s', 'w+');fd.write(fmt %% (10,10,34,fmt,34,10,fname,10))%cFT()"
def FT(): fd=open('Grace_kid.py', 'w+');fd.write(fmt % (10,10,34,fmt,34,10,fname,10))
FT()