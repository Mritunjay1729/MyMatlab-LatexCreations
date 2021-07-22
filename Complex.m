clc;    % Clear the command window.
close all;  % Close all figures (except those of imtool.)
clear;  % Erase all existing variables. Or clearvars if you want.
workspace;  % Make sure the workspace panel is showing.
format long g;
format compact;
fontSize = 20;
t = linspace(0, 2*pi, 90);
j = sqrt(-1);
complexSignal = t.^2 - j*t.^2
% Get the real component and plot it on the x axis
x = real(complexSignal);
y = imag(complexSignal);
plot(x, y, 'bo-', 'LineWidth', 2);
grid on;
title('Plot of cos(t) + j*sin (t)', 'Fontsize', fontSize);
xlabel('Real Component', 'Fontsize', fontSize);
ylabel('Imaginary Component', 'Fontsize', fontSize);
axis square;
% Enlarge figure to full screen.
set(gcf, 'Units', 'Normalized', 'OuterPosition', [0 0 1 1]);