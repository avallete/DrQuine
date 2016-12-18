#include<stdio.h>

/*
   characters escaping
*/
char q = 34;
char s = 47;
char n = 10;
char *frmt="#include<stdio.h>%c%c%c*%c   characters escaping%c*%c%cchar q = 34;%cchar s = 47;%cchar n = 10;%cchar *frmt=%c%s%c;%c%cvoid do_nothing(int c)%c{%c    if (c > 0)%c        do_nothing(--c);%c}%c%cint main(void)%c{%c    %c*%c      comment two%c    *%c%c    printf(frmt, n, n, s, n, n, s, n, n, n, n, q, frmt, q, n, n, n, n, n, n, n, n, n, n, s, n, n, s, n, n, n);%c}%c";

void do_nothing(int c)
{
    if (c > 0)
        do_nothing(--c);
}

int main(void)
{
    /*
      comment two
    */
    printf(frmt, n, n, s, n, n, s, n, n, n, n, q, frmt, q, n, n, n, n, n, n, n, n, n, n, s, n, n, s, n, n, n);
}
