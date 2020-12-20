clear all; close all; clc
%%
clear all; close all; clc
M=[1, 0, 1/3, 0, 0, 0, 0; 0, 0, 0, 0, 1/2, 0, 0;
    0, 0, 0, 0, 0, 1/2, 0; 0, 0, 1/3, 1, 1/2, 0, 1/2;
    0, 1, 0, 0, 0, 0, 0; 0, 0, 1/3, 0, 0, 0, 1/2; 
    0, 0, 0, 0, 0, 1/2, 0];

p=0.85;

M_tilde = p*M + (1-p)/7;

[eig_vectors,eig_values]=(eig(M_tilde));

eigvalues=eig(M_tilde);

s=(eigvalues(2)+min(eigvalues))/2;

v=[0;0;1;0;0;0;0];

format long
for i=1:20
    y=v/norm(v);
    v=(M_tilde-s*eye(7,7))*y;
end
v=v/norm(v);
%% 1
clear all; close all; clc
A=[2 -1 0 0 0; -1 2 -1 0 0; 0 -1 2 -1 0; 0 0 -1 2 -1; 0 0 0 -1 2];
format rational

[QQ,RR] = qr (A);
[Q, R] = TriQR(A);
function [Q,R] = TriQR(A)
 [m,n]=size(A);
 Q=zeros(m,n);
 R=zeros(n,n);
  for j=1:n
     v=A(:,j)
     for i=1:j-1
        R(i,j)=Q(:,i)'*A(:,j);
        v=v-R(i,j)*Q(:,i);
    end
    R(j,j)=norm(v);
    Q(:,j)=v/R(j,j);
  end
end

%% problem 2
% 
% f(x)=@(x) c0+c1*sin(pi*x)+c2*cos(pi*x);
% 
% x_i=[-1;-0.5;0;0.5];
% y_i=[1;3;2;4];















