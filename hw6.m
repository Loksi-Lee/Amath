clear all; close all; clc
%%
n=10;
a1 = [2, 2, 2, 2, 2, 2, 2, 2, 2, 2];
A = diag(a1);
a2 = [-1,-1,-1,-1,-1,-1,-1,-1,-1];
A1 = diag(a2,1);
A2 = diag(a2,-1);
A = A + A1 + A2;

% power method to get the largest eigenvalue and eigenvector
[eig_vectors,eig_values]=(eig(A));

max_value = max(max(eig_values));

v = randn(n,1);
yk = v/norm(v);

y = A*yk;
lambda = yk'*y;
err = norm(y - lambda*yk);
tol=1e-6;

while err > tol
yk = y/norm(y);
y = A*yk;
lambda = yk'*y;
err = norm(y - lambda*yk);
end

% QR 
a = 0;
AA = A;
subdiag(:,1) = diag(AA,-1);
while norm(AA-diag(diag(AA)), 'fro') > 1.e-6,
 [Qk,Rk] = qr(AA);
 AA = Rk*Qk;
 a = a+1;
 subdiag(:,a+1) = diag(AA,-1);
end
diag(AA)
ratio=abs(subdiag(:,a-5:a) ./ subdiag(:,a-6:a-1))

%shift
num=AA(4,4);
v=randn(n,1);
yk=v/norm(v);
b=0;
err = norm(A*yk - yk*num);
while err > tol
    y = (A - num*eye(n,n))\yk;
    yk = y/norm(y);
    b = b+1;
    err= norm(A*yk - yk*num);
end






