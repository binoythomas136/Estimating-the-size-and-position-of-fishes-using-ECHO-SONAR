clear all;
clc;
N=500;        %number of elements in the distribution
diff_T=1/N; 
n=0:N;
A=raylrnd(2,1,N+1);     %random rayleigh distribution
t=rand(1,N+1)* pi;
f=1000;               
k=(2*pi*f*diff_T.*n);
X=A.*cos(k+t); 
figure(1)
plot(n,X);
xlabel('n')
ylabel('X(t)');
title('Simulation of X(t) for N=1000')
figure(2)
h=histfit(X)

title('Histogram and the fitted normal distribution')
