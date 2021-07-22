clc;
clear all;

%Problem
flock = [1000,2000,4000,2500, 3200]

a = 0.60;
b = 0.40;
dr = 0.30;
m_cs = 0;
f_cs = 0;
p(1,1) = 0;
for i=1:length(flock)
  j = 1;
  survived(i) = a*flock(i) + (m_cs + f_cs)*b;
  r1 = rand(1);
  f_survived = survived(i) * r1;
  p(i,j+1) = p(i,j) + survived(i);
  j++;
  if (r1 <0.5)
      m_cb = f_survived;
      f_cb = f_survived;
  else
      m_cb = survived(i)-f_survived;
      f_cb = survived(i)-f_survived;
  endif
  r2 = rand(1);
  f_cs = r2 * m_cb/2;
  m_cs= (1-r2) * m_cb/2; 
  p(i,j+1) = p(i,j) + (m_cs + f_cs);
  j++;
  ch_var(i) =  (m_cs + f_cs)*b;
  p(i,j+1) = p(i,j) - (m_cs + f_cs)*b;
  j++;
  d(i) = survived(i) * dr;
  p(i,j+1) = p(i,j) - d(i);
  p(i+1,1) = 0;
endfor

i = 1:1:length(flock);
subplot(2,2,1);
bar(p);
xlabel('Year');
ylabel('Bird Population in Sanctuary');
  set(gca, ...
      'Box', 'off', ...
      'TickDir', 'out', ...
      'FontSize', 20, ...
      'FontName', 'Calibri');
  lgd = legend('Month[1-4]','Month 5', ...
             'Month 6', 'Month 7', 'Month 8');
set(lgd, 'FontName', 'Times', 'FontSize', 15);

subplot(2,2,2);
bar(p);
xlabel('Year');
ylabel('Bird Population in Sanctuary');
  set(gca, ...
      'Box', 'off', ...
      'TickDir', 'out', ...
      'FontSize', 20, ...
      'FontName', 'Calibri');
  lgd = legend('Month[1-4]','Month 5', ...
             'Month 6', 'Month 7', 'Month 8');
set(lgd, 'FontName', 'Times', 'FontSize', 15);

subplot(2,2,3);
bar(i,d,0.6, 'r');
xlabel('Year');
ylabel('Number of Bird Deaths');
  set(gca, ...
      'Box', 'off', ...
      'TickDir', 'out', ...
      'FontSize', 20, ...
      'FontName', 'Calibri');
      
subplot(2,2,4);
bar(i,ch_var,0.6, 'b');
xlabel('Year');
ylabel('Chicks leaving to Join Arriving birds');
  set(gca, ...
      'Box', 'off', ...
      'TickDir', 'out', ...
      'FontSize', 20, ...
      'FontName', 'Calibri');

  