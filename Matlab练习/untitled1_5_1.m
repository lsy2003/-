clc,clear
a=load("data_1_5_1.txt");
c=a(1:end-1,1:end-1);
e=a(1:end-1,end); d=a(end,1:end-1);
prob=optimproblem("ObjectiveSense","min");
x=optimvar('x',6,8,"LowerBound",0);
prob.Objective= sum(sum(c.*x));
prob.Constraints.con1=sum(x,1)==d;
prob.Constraints.con2=sum(x,2)<=e;
[sol,fval,flag,out]=solve(prob);
writematrix(sol.x,"solution1_5_1.xlsx");
fval