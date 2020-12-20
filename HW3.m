clear all; close all; clc
%% problem 2
%(a)
x=1782;
y=1841;
z=1922;
n=12;

format short
a1=(1782^12 + 1841^12)^(1/12)

format long
a2=(1782^12 + 1841^12)^(1/12)

%(b)
abs_err= abs(z^n-(x^n+y^n));
rel_err=abs_err/(x^n+y^n);

%(d)

xx=3987;
yy=4365;
zz=4472;

abs_err2= abs(zz^n-(xx^n+yy^n))
rel_err2=abs_err2/(xx^n+yy^n)


%% problem 3
n=2^(-4)+2^(-5)+2^(-8)+2^(-9)+2^(-12)+2^(-13)+2^(-16)+2^(-17)+2^(-20)+2^(-21);

%b
abs_err3b=abs(n-0.1);

%c
time_err=abs(3600000*(0.1-n));

%d
hour_err=time_err/3600
d=3750*hour_err;


%% 5
x=0.05;

for j=0:15
    k=10^j;
    X(j+1)=(1+x/k)^(k);
end

%%
x=0.05;
fn=@(n) (1+x./n).^n;
y=zeros(16,1);

for k=1:16
    y(k) = fn(10.^(k-1));
end


%%
clear all; close all; clc
format long e
x=0.5;
A=zeros(16,1);
f=@(n)((1+0.05./n).^n);
for n=1:16
    A(n)=10^(n-1);
end
B=f(A)

%%
clear all; close all; clc
x=0.05;
n=10^15;
sum=0;
for i=1:15
    sum=sum+((-1)^(i-1)*(x/n).^i)/i;
end
exp(n*sum)





