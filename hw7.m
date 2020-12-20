clear all; close all; clc
%%
load(imglist{5},'X','map');
imagesc(X);
colormap(map);
axis off;

%%imagedemo
print -depsc original.eps

[U,Sigma,V]=svd(X);
Vp=V';
X1 = U(:,1)*Sigma(1,1)*Vp(1,:);
X10 = U(:,1:10)*Sigma(1:10,1:10)*Vp(1:10,:);
X50 = U(:,1:50)*Sigma(1:50,1:50)*Vp(1:50,:);
X100 = U(:,1:100)*Sigma(1:100,1:100)*Vp(1:100,:);

figure(2)
subplot(2,2,1)
imagesc(X1); colormap(map); axis off
title('Rank 1')
subplot(2,2,2)
imagesc(X10); colormap(map); axis off
title('Rank 10')
subplot(2,2,3)
imagesc(X50);colormap(map); axis off
title('Rank 50')
subplot(2,2,4)
imagesc(X100);colormap(map); axis off
title('Rank 100')
print -depsc approximations.eps





