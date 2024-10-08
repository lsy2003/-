clc,clear
prob=optimproblem("ObjectiveSense","min");
u=optimvar('u',4,"LowerBound",0);
v=optimvar('v',4,"LowerBound",0);
m=optimvar('m',1,"LowerBound",0);
c=[1,1,1,1];
a=[1,-1,-1,1;1,-1,1,-3;1,-1,-5,3];
b=[-2;-5;-3];
prob.Objective= m;
prob.Constraints.con1= a*(u-v)<=b;
prob.Constraints.con2= [u-v<=m, v-u<=m];
[sol,fval,flag,out]=solve(prob);
sol.u,sol.v
x=sol.u-sol.v
fval
