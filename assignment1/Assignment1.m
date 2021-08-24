clc;clear;
%%problem 1
A=[1:8;9:16;17:24;25:32;33:40]

%%(a)

B=A([1,3,5],[1,2,4,8])

%%(b)
C=[A(5,1:3),A(5,5),A(5,7:8),A(:,4)',A(:,6)']

%%problem 2

a=0.75;b=11.3;
x=[2,5,1,9];x=[0.2,1.1,1.8,2];z=[-3,2,5,4];
A1=((x.^1.1).*(x.^-2).*(z.^5)/(a+b)^(b/3))+a*((z./x) + x./2)/z.^a


%%problem 3
A=[2 1 1 -1;1 5 -5 6;-7 3 -7 -5;1 -5 2 7]
b=[12 35 7 21]'
x=A\b

%%problem 4
figure(1)
x=0:0.1:2*pi;
subplot(3,1,1);
plot(x,sin(x).^2,'r')
subplot(3,1,2)
plot(x,cos(x).^2,'b--')
subplot(3,1,3)
plot(x,cos(2.*x),'go')

%%problem 5
figure(2)
x=linspace(0,10,100);
y=linspace(0,100,100);
[X Y]=meshgrid(x,y);
Z=0.56.*cos(X.*Y);
surf(X,Y,Z)
shading interp


%%%problem 6
syms x y
f=x^2+y^2-2*x*y+4
%%(a)
grad(f,1,1)

%%(b)
grad(f,1,-2)


%%problem 7

%(a)
syms x
p=solve(x^7-8*x^5+7*x^4+5*x^3-8*x+9,x);
vpa(p,4)


%%(b)

syms x(t)
x=dsolve('D2x+10*Dx+5*x=11','x(0)=1','Dx(0)=-1');
x

%%(c)
syms x
F=x^5 -8*x^4 +5*x^3 -7*x^2 +11*x-9;
f1=diff(F,x)
f2=diff(f1,x)

%%d

syms x
F=1/(0.8*x^2 + 0.5*x +2);
f=int(F,x,0,5);
pretty(f)

%problem 8

year=1930:10:2020
ppl=[249 277 316 350 431 539 689 833 1014 1203];
p=polyfit(year,ppl,2)
x=linspace(1930,2020,500);
y=polyval(p,x);
figure(3)
hold on
plot(x,y)
plot(year,ppl,'o')
hold off
%%b
x=linspace(1930,2020,500);
y=interp1(year,ppl,x,'spline');
y1=interp1(year,ppl,x,'linear');
figure(4)
plot(x,y)
figure(5)
plot(x,y1)
