clear all; close all; clc
%%
format short
B=[4 -1 -1; -1 4 -1; -1 -1 4];
[L,U]=lu(B);

%%
A=[10^(-16) 1; 1 1];
b=[2; 3];
n=length(b);

for j=1:n-1
    for i=j+1;n
        mult = A(i,j)/A(j,j);
        A(i,j+1:n)=A(i,j+1:n)-mult*A(j,j+1:n);
        A(i,j)=mult;
    end
end

% Solve Ly=b
y=zeros(n,1);
for i=1:n
    y(i)=b(i);
    for j=1:i-1
        y(i)=y(i)-A(i,j)*y(j);
    end
end

% Solve Ux=y
x=zeros(n,1);
for i=n:-1:1
    x(i)=y(i);
    for j=1+i:n
        x(i)=x(i)-A(i,j)*x(i);
    end
    x(i)=x(i)/A(i,i);
end

%%
M=[10^(-16) 1; 1 1];
n=[2; 3];
xx=M\n

%%
function x = usolve(U,y)

  n=length(y);
  for i=n:-1:1
    x(i)=y(i);
    for j=i+1:n
        x(i)=x(i)-U(i,j)*x(j);
    end
    x(i)=x(i)/U(i,i);
  end
end



