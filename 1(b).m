%Analog Signal x(t) =  4cos(2?t) -?<t<+?
clear all;
t = 0:0.0005:100;
x = 4*cos(2*pi*t);
plot(t,x,'r','Linewidth', 1.0);
xlabel('time(s)');
ylabel('x(t)');
axis([-0.1 3 -5 5]);
hold on;

%Discrete Signal 1 x[n] = x(nTs) Ts = 0.1
t = 0:0.1:100;
x = 4*cos(2*pi*t);
stem(t,x,'b.','Linewidth', 1.5);
axis([-0.1 3 -5 5]);
hold on;

%Discrete Signal 1 x[n] = x(nTs) Ts = 0.5
t = 0:0.5:100;
x = 4*cos(2*pi*t);
stem(t,x,'m.', 'Linewidth', 2.0, 'Linestyle', '--');
axis([-0.1 3 -5 5]);
hold on;

%Discrete Signal 1 x[n] = x(nTs) Ts = 0.1
t = 0:1:100;
x = 4*cos(2*pi*t);
stem(t,x,'k.', 'Linewidth', 2.5, 'Linestyle', '-.');
axis([-0.1 3 -5 5]);
hold on;

legend('Analog Signal', 'Ts = 0.1', 'Ts = 0.5', 'Ts = 1');

