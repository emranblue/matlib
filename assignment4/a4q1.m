clear all;clc;
a=0.5;
b=1.5;
c=(a+b)/2;
f=@(x) exp(x)-2-cos(exp(x)-2);
tol=10^-5;
fprintf(" a \t b\t c\t |f(c)|\n")
fprintf("%.3f \t %.3f \t %.3f \t %.7f\n",a,b,c,f(c))

while abs(f(c))>tol
    if f(a)*f(c)>0
        a=c;
    else 
        b=c;
    end 
    c=(a+b)/2;
    fprintf("%.3f \t %.3f \t %.3f \t %.7f\n",a,b,c,abs(f(c)))
end