#include<stdlib.h>
#include<stdio.h>
int main(){
    int i = 5;
    char *name;
    char *cmd;
    FILE *f;
    char *fmt="#include<stdlib.h>%c#include<stdio.h>%cint main(){%c    int i = %d;%c    char *name;%c    char *cmd;%c    FILE *f;%cchar *fmt=%c%s%c;%c    if (asprintf(&name, %cSully_%%d.c%c, i) >= 0 && asprintf(&cmd, %cgcc %%s; ./a.out%c, name) >= 0){if (i >= 0 && (f = fopen(name, %cw+%c))){fprintf(f, fmt,10,10,10,i-1,10,10,10,10,34,fmt,34,10,34,34,34,34,34,34);system(cmd);}}}";
    if (asprintf(&name, "Sully_%d.c", i) >= 0 && asprintf(&cmd, "gcc %s; ./a.out", name) >= 0){if (i >= 0 && (f = fopen(name, "w+"))){fprintf(f, fmt,10,10,10,i-1,10,10,10,10,34,fmt,34,10,34,34,34,34,34,34);system(cmd);}}}