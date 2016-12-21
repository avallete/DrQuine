#include<stdio.h>
#define FNAME(X) "Sully_"#X".c"
#define FT(x) int main(){int i=x;char* fmt="#include<stdio.h>%c#define FNAME(X) %cSully_%c#X%c.c%c%c#define FT(x) int main(){int i=%d;char* fmt=%c%s%c;FILE* f;if(x > 0 && (f = fopen(FNAME(x), %cw+%c))){fprintf(f,fmt,10,34,34,34,34,10,x-1,34,fmt,34,34,34,10);}}%cFT(%d)";FILE* f;if(x > 0 && (f = fopen(FNAME(x), "w+"))){fprintf(f,fmt,10,34,34,34,34,10,x-1,34,fmt,34,34,34,10,x-1);}}
FT(5)