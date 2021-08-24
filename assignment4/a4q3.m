clear all;clc;
f=@(x) 14*x*exp((x-2))-12*exp((x-2))-7*x^3+20*x^2-26*x+12;
x=0:0.1:3;
y=zeros(size(x));
for i=1:length(x)
  y(i)=f(x(i));
endfor
plot(x,y)

tol=10^-5;

function y=iter(f,x0)
  syms x;
  dydx=diff(sym(f));
  df=double(subs(dydx,{x},{x0}));
  y=x0-f(x0)/df;
endfunction

function NewtonRapson(f,a,tol)
  counter=1;
  fprintf("iter \t err ")
  b=iter(f,a)
  while abs(b-a)>tol
    fprintf("%d \t %f \t %f \t %f",counter,a,b,abs(b-a))
    counter++;
    a=b
    b=iter(f,a)
  endwhile
endfunction


NewtonRapson(f,3,tol)
