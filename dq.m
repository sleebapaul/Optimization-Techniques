clc;
clear all;
peak=input('Enter the magnitude of three phase waveform : \n ');
f=input('Enter the frequency : \n');
w=2*pi*f;
t=[0:.0001:.06];
a=peak*sin(w*t);
b=peak*sin(w*t-2*pi/3);
c=peak*sin(w*t+2*pi/3);
abc=[a;b;c];
plot(t,abc);
xlabel('time (in seconds)');
title('Signal versus Time');
k=0;
for i=1:3
    for j=1:3
        if i==1
        T{i,j}=cos(w*t-k);
        else if i==2
                T{i,j}=-sin(w*t-k);
            else if i==3
                    T{i,j}=.5;
                end
            end
        end
        k=k+2*pi/3;
    end
end
disp(T);

