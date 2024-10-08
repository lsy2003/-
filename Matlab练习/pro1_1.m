clc,clear
prob=optimproblem("ObjectiveSense","max");
x=optimvar('x',3,'LowerBound',0);
prob.Objective= [3,-1,-1]*x;
prob.Constraints.con1=[1,-2,1]*x<=11;
prob.Constraints.con2=[-4,1,2]*x>=3;
prob.Constraints.con2=[-2,0,1]*x==1;
[sol,fval,flag,out]=solve(prob);
sol.x,fval
