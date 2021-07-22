clear all;
t = 0:0.005:100;
x1 = exp(-0.5t);
x2 = exp(-1t);
subplot(2,1,1);
plot(t,x1,'linewidth',1);
subplot(2,1,2);
plot(t,x2,'linewidth',1);