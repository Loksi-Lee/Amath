clear all; close all; clc
%% 3
clear all; close all; clc
Mat = randn(10,10);
[U,R]=qr(Mat);
Mat = randn(10,10);
[V,R]=qr(Mat);
Sigma = diag(10.^[-9:0]);
A=U*Sigma*V';
x=randn(10,1); %random solution vector
b=A*x;

%Gaussian elimination
xtilde = A\b;
rn1=norm(b-A*xtilde)/(norm(A)*norm(xtilde));

%inverse
Ainv = inv(A);
xtilde2=Ainv*b;
rn2=norm(b-A*xtilde2)/(norm(A)*norm(xtilde2));

%Cramer's rule
xtilde3=zeros(10,1);
for i = 1:length(A)
    AA=A;
    AA(1:end,i)=b;
    xtilde3(i)=det(AA)/det(A);
end
rn3=norm(b-A*xtilde3)/(norm(A)*norm(xtilde3));

%% P116 14
clear all; close all; clc
format long e
f = @(t) cos(4*t);
t=linspace(0,1,50);
y=f(t);

A=zeros(50,11);
for i=1:11
    A(:,i) = t'.^(i-1);
end

b=y';

%QR fractorization
x1=A\b;

%normal equations
x2 = (A'*A)\(A'*b);

k1=cond(A);
k2=cond(A'*A);

%% page 118 16
format short
clear all; close all; clc
A=[1 -1 0 0; -1 0 1 0; 1 0 0 -1; 0 0 1 -1; 0 1 0 -1; 1 1 1 1];
b=[4; 9; 6; 3; 7; 20];
r=A\b;




