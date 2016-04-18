clc;
clear all;
syms x y;
f=x-y+2*x^2+2*x*y+y^2;
X=zeros(2,1);
deltaX=zeros(2,1);
count=0;
deltaX(1)=input('Enter the increment on X : \n');
deltaX(2)=input ('Enter the increment on Y : \n');
yplus=X+deltaX(1);
yminus=X-deltaX(1);
fplus=(f(yplus));  % U is taken as the unit vector 
fminus=(f(yminus));
if f(X)<min(double(fplus),double(fminus))
    X=X;
    fplus=double(f(X+deltaX(2)));
    fminus=double(f(X-deltaX(2)));
    count=1;
else if fplus < f(X) && count==0
        X=X+deltaX(1);
    else if count==1
            X=X+deltaX(2);
    else if fminus< f(X) && count==0
            X=X-deltaX(1);
        else if count==1
            X=X-deltaX(2);
        end
    end
end
    end
end
T=double(X);
disp(X);