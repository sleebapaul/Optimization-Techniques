clc;
clear all;
syms x;
f(x)= .65-.75/[1+x^2]-.65*x*atan(1/x);
d=diff(f);
A=input('Enter the initial value : \n');
a=A;   
t(1)=input('Enter the step size : \n');
B=a+t(1);
k1=d(B);
i=2;
while k1<0
    A=t(i-1);
    t(i)=a+2*t(i-1);
    k1=d(t(i));
    i=i+1;
end
B=t(i-1);
k2=d(A);
k3=1;
while abs(k3)>.01
lambda=A-[k2*(B-A)/(k1-k2)];
k3=d(lambda);
if k3>=0
    B=lambda;
    k1=d(B);
else if k3<0
        A=lambda;
        k2=d(A);
    end
end
end
T=double(lambda);
disp(T);
