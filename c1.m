clear all;
t = -1:0.005:100;

%Analog Signal 1
x1 = (t>=0).*exp(-0.5*t);
subplot(2,3,1:2);
plot(t,x1,'b','linewidth',1);
xlabel('time(s)');
set(gca, 'Ygrid', 'on');
axis([-1 12 -0.1 1.05]);
ylabel('x(t)');
hold on;

%Analog Signal 2
x2 = (t>=0).*exp(-1*t);
subplot(2,3,1:2);
plot(t,x2,'r','linewidth',1);

legend('e^{-0.5t}','e.^{-t}');

t = -2:1:100;
t1 = -1:0.005:100;


%Sampled Signal 1
x1 = (t>=0).*exp(-0.5*t);
subplot(2,3,3);
norm = (t1>=0).*exp(-0.5*t1);
plot(t1,norm,'r','linewidth',1);
set(gca, 'Ygrid', 'on');
hold on;
stem(t,x1,'b','filled','linewidth',1);
xlabel('time(s)');
axis([-1 12 -0.1 1.05]);
ylabel('x[nTs]');
legend('e^{-t}','Ts = 0.5')
hold on;

%Discrete Equivalent Signal Approxmation 1
  subplot(2,3,4);
  norm = (t1>=0).*exp(-0.5*t1);
  plot(t1,norm,'r','linewidth',1);
  set(gca, 'Ygrid', 'on');
  hold on;
for i = -1:12
  subplot(2,3,4);
  stem(i,(i>=0).*((0.7).^i),'Marker', 'o','b','linewidth', 1.5, 'LineStyle', '--');
  hold on;
  stem(i,(i>=0).*((0.6).^i),'Marker', 'o','k','linewidth', 2.0, 'LineStyle', '-.');
  hold on;
  stem(i,(i>=0).*((0.5).^i),'Marker', 'o','m','linewidth', 2.5, 'LineStyle', ':');
  hold on;
  legend('e^{-0.5t}','0.7^n','0.6^n','0.5^n');
  xlabel('time(s)');
  axis([-1 12 -0.1 1.05]);
  ylabel('\alpha [n]');
end

%Sampled Signal 2
x2 = (t>=0).*exp(-1*t);
subplot(2,3,5);
norm = (t1>=0).*exp(-t1);
plot(t1,norm,'r','linewidth',1);
set(gca, 'Ygrid', 'on');
hold on;
stem(t,x2,'b','filled','linewidth',1);
axis([-1 12 -0.1 1.05]);
xlabel('time(s)');
ylabel('\alpha [n]');
legend('e^{-t}','Ts = 1')
hold on;

%Discrete Equivalent Signal Approxmation 2
  subplot(2,3,6);
  norm = (t1>=0).*exp(-t1);
  plot(t1,norm,'r','linewidth',1);
  set(gca, 'Ygrid', 'on');
  hold on;
for i = -1:12
  subplot(2,3,6);
  stem(i,(i>=0).*((0.25).^i),'Marker', 'o','b', 'linewidth', 1.5,'LineStyle','--');
  hold on;
  stem(i,(i>=0).*((0.35).^i),'Marker', 'o','k','linewidth', 2.0, 'LineStyle', '-.');
  hold on;
  stem(i,(i>=0).*((0.45).^i),'Marker', 'o','m','linewidth', 2.5, 'LineStyle', ':');
  hold on;
  legend('e^{-t}','0.25^n','0.35^n','0.45^n');
  xlabel('time(s)');
  axis([-1 12 -0.1 1.05]);
  ylabel('\alpha [n]');
end

