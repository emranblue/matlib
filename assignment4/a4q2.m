clear all;clc;
g1=@(x) x^3+exp(x);
g2=@(x) log(x-x^3);
g3=@(x) nthroot(x-exp(x),3);
tol=10^-5;
x0=0;

fprintf("x1 \t \t  g(x) \t \terr\n")
fprintf("%f \t %f \t %f\n",x0,g3(x0),abs(x0-g3(x0)))

function r=FixPoint(g,x0,tol)
  counter=0;
  while abs(x0-g(x0))>tol
    x0=g(x0);
    fprintf("%5.7f \t %5.7f \t %f5.7\n",x0,g(x0),abs(x0-g(x0)))
    counter+=1;
  end
  fprintf("FINISHED FIX point")
  fprintf("\n\n\n")
  r=counter;
  return 
end

first=FixPoint(g1,x0,tol)
second=FixPoint(g2,x0,tol)
thrid=FixPoint(g3,x0,tol)

max([first,second,thrid])