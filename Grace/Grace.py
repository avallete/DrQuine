# Comment one
fname='Grace_kid.py'
fmt="# Comment one%cfname='Grace_kid.py'%cfmt=%c%s%c%cdef FT(): fd=open(fname, 'w+');fd.write(fmt %% (10,10,34,fmt,34,10,10))%cFT()"
def FT(): fd=open(fname, 'w+');fd.write(fmt % (10,10,34,fmt,34,10,10))
FT()