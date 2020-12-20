clear all; close all; clc
%%
% Question 3

A=randn(3,3);
b=randn(3,1);
x=A\b;

xx=inv(A)*b;

xxx=zeros(3,1);

A1=A;
A1(:,1)=b;
xxx(1)=det(A1)/det(A);

A2=A;
A2(:,2)=b;
xxx(2)=det(A2)/det(A);

A3=A;
A3(:,3)=b;
xxx(3)=det(A3)/det(A);

format long
x
xx
xxx
%%
% Question 4 (p.36, problem 6)
x1=linspace(-3,3,1000);
y1=abs(x1-1);
subplot(4,1,1);
plot(x1,y1);
hold on

x2=linspace(-4,4,1000);
y2=sqrt(abs(x2));
subplot(4,1,2);
plot(x2,y2);

y3=exp(-x2.^2);
subplot(4,1,3);
plot(x2,y3);

x4=linspace(-2,2,1000);
y4=1./(10*(x4.^2)+1);
subplot(4,1,4);
plot(x4,y4);
%%
% Question 5 (p.39, problem12)
load yodapose_low






