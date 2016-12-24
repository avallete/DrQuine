#define _GNU_SOURCE
#include<stdlib.h>
#include<stdio.h>
#include<string.h>
int main(int ac, char **av){
int i = 5;
char *name;(void)ac;
char *cmd;
FILE *f;
char *fmt="#define _GNU_SOURCE%c#include<stdlib.h>%c#include<stdio.h>%c#include<string.h>%cint main(int ac, char **av){%cint i = %d;%cchar *name;(void)ac;%cchar *cmd;%cFILE *f;%cchar *fmt=%c%s%c;%cif(i<=0){return(0);}if(strchr(av[0], '_')){--i;}if (asprintf(&name, %cSully_%%d.c%c, i) >= 0 && asprintf(&cmd, %cgcc %%s -o %%s.exe; ./%%s.exe%c, name, name, name) >= 0){if ((f = fopen(name, %cw+%c))){fprintf(f, fmt,10,10,10,10,10,i,10,10,10,10,34,fmt,34,10,34,34,34,34,34,34);fclose(f);system(cmd);}}return(0);}";
if(i<=0){return(0);}if(strchr(av[0], '_')){--i;}if (asprintf(&name, "Sully_%d.c", i) >= 0 && asprintf(&cmd, "gcc %s -o %s.exe; ./%s.exe", name, name, name) >= 0){if ((f = fopen(name, "w+"))){fprintf(f, fmt,10,10,10,10,10,i,10,10,10,10,34,fmt,34,10,34,34,34,34,34,34);fclose(f);system(cmd);}}return(0);}