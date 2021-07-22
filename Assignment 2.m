clc;
clear all;
%Sample Signal
n = -50:1:50;
for i=1:length(n)
  if n(i)<-4
    f(i) = -2;
  elseif n(i)<1
    f(i) = n(i);
  else
    f(i) = 4/n(i);
  endif
end

subplot(2,2,1);
stem(n,f,'filled', 'r', 'MarkerSize', 3, 'linewidth', 1);
xlabel('n------>');
ylabel('f[n]');
set(gca, ...
    'Box', 'off', ...
    'TickDir', 'out', ...
    'YGrid', 'on', ...
    'FontSize', 20, ...
    'FontName', 'Calibri');
axis([-10 10 -4.2 4.2]);

%Signal Transformation

sample = [2-n; n/2; 2*n];
for i=2:4
  subplot(2,2,i);
  stem(sample(i-1, :),f,'filled', 'b', 'MarkerSize', 3, 'linewidth',1);
  xlabel('n------->');
  ylabel('g[n]');
  set(gca, ...
      'Box', 'off', ...
      'TickDir', 'out', ...
      'YGrid', 'on', ...
      'FontSize', 20, ...
      'FontName', 'Calibri');
  
  axis([-10 10 -4.2 4.2]);
end
  


  
  
    

    