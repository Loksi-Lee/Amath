clear all; close all;clc
%%
B=[1 1 1; -1 1 2; 1 1 1; 1 -1 0];
K=colspace(sym(B))
B=[1 0 1; 1 1 0; 0 0 1; 0 -1 0];

x=range(B,'all');
y=range(B,'all');

Q=orth(B)
K=colspace(sym(B))

%%
C=[2 2 3; 1 1 2; 0 4 5];
[L,U,P]=lu(C);

%%
close all; clear all; clc

A=[2 -1 0 0 0; -1 2 -1 0 0; 0 -1 2 -1 0; 0 0 -1 2 -1; 0 0 0 -1 2];

%[L,U]=lu(A);

%Alu=TriLU(A);
function A = TriLU(A)

n=length(A);
m=1;
for j=1:n-1
    for i=j+1:j+m
        mult = A(i,j)/A(j,j);
        A(i,j+1:n)=A(i,j+1:n)-mult*A(j,j+1:n);
        A(i,j)=mult;
    end
end
end


% %Ly=b
% y=zeros(n,1);
% for i=1:n
%     y(i)=b(i);
%     for j=1:i-1
%         y(i)=y(i)-A(i,j)*y(j);
%     end
% end
% 
% %Ux=y
% x=zeros(n,1);
% for i=n:-1:1
%     x(i)=y(i);
%     for j=1+i:n
%         x(i)=x(i)-A(i,j)*x(i);
%     end
%     x(i)=x(i)/A(i,i);
% end









