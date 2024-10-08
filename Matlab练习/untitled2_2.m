clc,clear
prob=optimproblem("ObjectiveSense","max");
x=optimvar('x',3,'LowerBound',0);
c=[2,3,-5];
eq1=[1,1,1];
prob.Objective= c*x;
prob.Constraints.con1= eq1*x==7;
prob.Constraints.con2= [2,-5,1]*x>=10;
prob.Constraints.con3= [1,3,1]*x<=12;

[sol,fval,flag,out]=solve(prob);

sol.x,fval