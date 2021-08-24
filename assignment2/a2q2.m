
%%(a)
clear all;clc;
syms x y z
u(x,y)=(1/2)*x^2-(1/3)*x^3;
v(x,y)=x*(x-1)*(y+1);
w=0;
div=divergence([u,v],[x,y]);

if simplify(div)==0
  disp("flow is possible")
else
  disp("flow is not possible")
end


%%(b)
crl=curl([u,v,w],[x,y,z]);
if simplify(norm(crl))==0
    disp("irrotational")
else
    disp("rotational")
end


%%(c)
[x,y] = solve(u==0,v==0,x,y);
x
y
