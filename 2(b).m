clc;
clear all;

xRange = [-10:10];
xPoints = [-20:20];
scale = 0.1;

%Symbolic Integrationrn
syms t;
F(t) = sin(t)
f(t) = int(F);

f_ = @(t) sin(t);
points = f_(xPoints);

hold on;
fplot(matlabFunction(F),[0,2*pi],'r-', 'linewidth', 1);
xlabel('t------>');
ylabel('f(t)');
fplot(matlabFunction(f),[0,2*pi],'k--', 'linewidth', 1);

%Numerical Integration
      %1)Cummulative Integration
stairs(xPoints, cumsum(points), '-.b', 'linewidth', 2);
      %2) Trapezoidal Integration
stairs(xPoints,cumtrapz(points),':m', 'linewidth', 2);
lgd = legend('f(t) = sin(t)','int(f) = -cos(t)', ...
             'Cummulative Sum', 'Trapezoidal Sum');
set(lgd, 'FontName', 'Times', 'FontSize', 15);

set(gca, ...
       'Box', 'off', ...
       'TickDir', 'out', ...
       'FontSize', 15);
axis([0 2*pi*(1+scale) -1.5 1.5 ]);
pbaspect([2, 1, 1]);

print(gcf, ['symbolicInt', '.eps'], '-depsc');

       