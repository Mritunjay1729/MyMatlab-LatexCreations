clear all;
clc;

%Analog Signal x(t) =  4cos(2?t) -?<t<+?
t = 0:0.0005:100;
x = 4*cos(2*pi*t);
subplot(2,2,1);
plot(t,x,'r', 'Linewidth', 1);
xlabel('time(s)');
ylabel('x(t)');
axis([-0.1 3 -4.2 4.2]);
hold on;

%Discrete Signal 1 x[n] = x(nTs) Ts = 0.1
t = 0:0.1:100;
x = 4*cos(2*pi*t);
subplot(2,2,2);
stem(t,x,'b','filled','Linewidth',1,'MarkerSize', 2.5);
xlabel('time(s)');
ylabel('x [nTs]');
axis([-0.1 3 -4.2 4.2]);

%Discrete Signal 2 x[n] = x(nTs) Ts = 0.5
t = 0:0.5:100;
x = 4*cos(2*pi*t);
subplot(2,2,3);
stem(t,x,'b','filled', 'Linewidth',1,'MarkerSize', 2.5);
xlabel('time(s)');
ylabel('x [nTs]');
axis([-0.1 3 -4.2 4.2]);

%Discrete Signal 3 x[n] = x(nTs) Ts = 0.1
t = 0:1:100;
x = 4*cos(2*pi*t);
subplot(2,2,4);
stem(t,x,'b','filled', 'Linewidth',1, 'MarkerSize', 2.5);
xlabel('time(s)');
ylabel('x [nTs]');
axis([-0.1 3 -4.2 4.2]);