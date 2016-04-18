clc;
clear all;
syms x
f(x) = x^5-5*x^3-20*x+5;
A=input('Enter initial value : \n');
t(1)=input('Enter the step size : \n');
dk=diff(f);
k1=dk(A);
k2=dk(t(1));
B=t(1);
i=2;
p=41;
if k2<k1
    while k2<k1
        t(i)=2*t(i-1);
        k2=dk(t(i));
        i=i+1;
    end
    B=t(i-1);
end
while abs(p)>.0001
    k1=dk(A);
    k2=dk(B);
z=3*[(f(A)-f(B))/[B-A]]+k1+k2;
q=(z^2-k1*k2)^.5;
lambda1=A+(k1+z+q)*(B-A)/(2*z+k1+k2);
lambda2=A+(k1+z-q)*(B-A)/(2*z+k1+k2);
lambda3=max(double(lambda1),double(lambda2));
p=dk(lambda3);
if p<0
    A=lambda3;
else if p>0
        B=lambda3;
    end
end
end
T=double(lambda3);
disp(T);





