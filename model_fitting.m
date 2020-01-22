m=100;
u=randn(m,1);
v=randn(m,1);
a=sqrt(u.^2+v.^2);
%fitting the model on the simulated variable
figure(1)
histogram(a)
hold on
pd=fitdist(a,'rayleigh')
x=0:0.1:4;
y=pdf(pd,x);
plot(x,40*y)
title('The distribution of Ai');
