clc, clear

prob=optimproblem('ObjectiveSense','max');
c=[4,3]; b=[10;8;7]; a=[2,1;1,1;0,1];
lb=[0;1]; ub=[6;6];
x=optimvar('x',2,'LowerBound',lb,'UpperBound',ub);
prob.Objective=c*x; prob.Constraints.con=a*x<=b;
[sol,fval,flog,out]=solve(prob);
sol.x

