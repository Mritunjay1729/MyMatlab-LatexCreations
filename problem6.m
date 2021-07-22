clc;
clear all;

s_rate = 1e-6;
t = [0:s_rate:1e-3];
ideal_sgl = 10*sin(8000*pi*t);
subplot(2,1,1);
hold on;
plot(t, ideal_sgl, 'b', 'linewidth', 1);
set(gca, ...
    'Box', 'off', ...
    'Ytick', [-10:5:10], ...
    'TickDir', 'out', ...
    'YGrid', 'on', ...
    'FontSize', 20);

real_sgl = ideal_sgl;
real_sgl(real_sgl>7) = 7;
real_sgl(real_sgl<-7) = -7;
plot(t, real_sgl, 'r', 'linewidth', 1);

error = ideal_sgl-real_sgl;
plot(t, error, 'm', 'linewidth', 1);

legend('Ideal Response', 'Real Response', 'Error',...
        'Location','northoutside', ...
        'Orientation', 'horizontal');
legend('boxoff');
pbaspect([4,1,1]);
hold off;

ft = fft(real_sgl);
len = int32(length(ft)/2);

fndmtl = ft;
fndmtl(fndmtl < max(ft)) = 0;
fndharm = ifft(fndmtl,'symmetric');
subplot(2,1,2);
hold on;
plot(t, fndharm, 'b', 'linewidth', 1);
set(gca, ...
    'Box', 'off', ...
    'Ytick', [-10:5:10], ...
    'TickDir', 'out', ...
    'YGrid', 'on', ...
    'FontSize', 20);

highft = ft;
highft(highft >= max(ft)) = 0;
highharm = ifft(highft, 'symmetric');
plot(t, highharm, 'r', 'linewidth', 1);

legend('Fundamental Harmonic', 'Higher Harmonic',...
        'Location','northoutside', ...
        'Orientation', 'horizontal');
legend('boxoff');
pbaspect([4,1,1]);
hold off;


