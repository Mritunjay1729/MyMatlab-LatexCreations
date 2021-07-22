clear all;
clc;

syms t x(t) y(t);
x(t) = sin(t) * heaviside(t);
eqn = diff(y, t) + 5*y == 3*diff(x, t) - x;
Sol = dsolve(eqn);

range = [-100:100];

%Zero Input Response {Input x(t) = 0}
eqn = diff(y, t) + 5*y == 0;
cond = y(0) == 3;
sol1 = dsolve(eqn, cond);
ZIR = function_handle(rhs(sol1))
VarZIR = double(ZIR(range));
subplot(3,1,1);
plot(range, VarZIR, 'r', 'linewidth', 1);

xlabel('t------>');
ylabel('Zero Input Response(ZSR)');
set(gca, ...
    'Box', 'off', ...
    'TickDir', 'out', ...
    'YGrid', 'on', ...
    'FontSize', 20, ...
    'FontName', 'Calibri');
axis([-2 55 -0.2 2]);

%Zero State Response {Initial Condition = 0}
x(t) = sin(t) * heaviside(t);
eqn = diff(y, t) + 5*y == 3*diff(x, t) - x;
cond = y(0) == 0;
sol2 = dsolve(eqn, cond);
ZSR = function_handle(rhs(sol2));
VarZSR = double(ZSR(range));
subplot(3,1,2);
plot(range, VarZSR, 'b', 'linewidth', 1);

xlabel('t------>');
ylabel('Zero State Response(ZSR)');
set(gca, ...
    'Box', 'off', ...
    'TickDir', 'out', ...
    'YGrid', 'on', ...
    'FontSize', 20, ...
    'FontName', 'Calibri');
axis([-2 55 -0.75 0.75]);

%Complete Response = ZSR + ZIR
subplot(3,1,3);
plot(range, VarZSR + VarZIR , 'g', 'linewidth', 1);

xlabel('t------>');
ylabel('Complete Response');
set(gca, ...
    'Box', 'off', ...
    'TickDir', 'out', ...
    'YGrid', 'on', ...
    'FontSize', 20, ...
    'FontName', 'Calibri');
axis([-2 55 -0.75 10]);

%Total Response {Input x(t) = 0}
x(t) = sin(t) * heaviside(t);
eqn = diff(y, t) + 5*y == 3*diff(x,t) - x;
cond = y(0) == 3;
finalRes = dsolve(eqn, cond);
