#include<stdio.h>

void main(){

int a,b,n;

printf("enter two numbers\n");
scanf("%d %d",&a,&b);

printf("1-addition,2-subtraction,3-multiplication,4-divition,5-modules\n");
scanf("%d",&n);

switch(n){
case 1:printf("%d + %d = %d\n",a,b,a+b);
break;
case 2:printf("%d - %d = %d\n",a,b,a-b);
break;
case 3:printf("%d * %d = %d\n",a,b,a*b);
break;
case 4:if(b==0){
printf("%d / %d = Invalid\n",a,b);}
else
printf("%d / %d = %d\n",a,b,a+b);
break;
case 5:printf("%d\n",a%b);
break;
defalut:printf("invalid operation\n");
break;
}
}
