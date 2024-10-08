clc,clear
c=[-2 -3 5];

eqa=[1 1 1]; eqb=7;

a=[-2 5 -1; 1 3 1]; b=[-10;12];
lb=[0;0;0];
[x,fval]=linprog(c,a,b,eqa,eqb,lb);
z=-fval

