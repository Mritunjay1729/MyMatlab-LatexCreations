clc;
clear all;

t = -20:0.05:20;
t1 = -t;

%Function f(t)
subplot(2,1,1);
f = t.*(t.^2 + 3);
fmin = t1.*(t1.^2 + 3);
plot(t,f,'g', 'linewidth', 1);
xlabel('time(s)');
ylabel('x(t)');
set(gca, ...
    'Box', 'off', ...
    'TickDir', 'out', ...
    'YGrid', 'on', ...
    'FontSize', 15, ...
    'FontName','Typewriter');
axis([-5 5 -150 150]);
hold on;
%Even Function
ef = (f+fmin)/2; 
%Odd Function
of = (f-fmin)/2; 
plot(t,ef,'b', 'linewidth', 1.5);
hold on;
plot(t,of,'k--','linewidth', 2);
hold on;
legend('boxoff', 'location', "Northwest");
legend('f(t)','Even Function: (f(t)+f(-t))/2','Odd Function: (f(t)-f(-t))/2')


%Function g(t)
subplot(2,1,2);
g = t.*(2-t.^2).*(1+4.*t.^2);
gmin = t1.*(2-t1.^2).*(1+4.*t1.^2);
plot(t,g,'g','linewidth', 1);
xlabel('time(s)');
ylabel('x(t)');
set(gca, ...
    'Box', 'off', ...
    'TickDir', 'out', ...
    'YGrid', 'on', ...
    'FontSize', 15, ...
    'FontName','Typewriter');
axis([-5 5 -12000 12000]);
hold on;
%Even Function
eg = (g+gmin)/2; 
plot(t,eg,'b', 'linewidth', 1.5);
hold on;
%Odd Function
og = (g-gmin)/2;
plot(t,og,'k--','linewidth', 2);
hold on;
legend('boxoff', 'location', "best");
legend('g(t)','Even Function: (g(t)+g(-t))/2','Odd Function: (g(t)-g(-t))/2');


