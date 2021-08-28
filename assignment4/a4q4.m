

clear all;clc;
f=@(x) 54*x^6+45*x^5-102*x^4-69*x^3+35*x^2+16*x-4;
tol=10^-5;
sample=-2:0.1:2;
nroot=zeros(1,5);
points=zeros(1,6);
points(1)=sample(1);
a=sample(1);
counter=1;
for h=sample
  if f(h)*f(a)<0
    counter=counter+1;
    points(counter)=h;
    a=h;
  end
end


function y=sect(f,a,b)
  y=b-((b-a)*f(b))/(f(b)-f(a));
end



for i=1:length(nroot)
  fprintf("\n\n\n\n %dth root\n\n\n",i)
  fprintf("\n interation\t xn+1 \t\t xn \t\t xn-1 \t\terr \n\n")
  a=points(i);
  b=points(i+1);
  c=sect(f,a,b);
  counter=1;
  while abs(b-a)>tol
    fprintf("    %d \t\t %f \t %f \t %f \t %f\n",counter,c,b,a,abs(c-b))
    a=b;
    b=c;
    c=sect(f,a,b);
    counter=counter+1;
  end
  nroot(i)=c;
  %fprintf("root value %.9f\n\n\n\n",f(c))
end

fprintf("\n\n")
nroot

