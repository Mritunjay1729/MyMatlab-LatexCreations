%Symbolic Integration
syms t1;
for i=0:10
  plot(0:0.01:10,double(int(sin(2*pi*t1),0, 10)),'r','linewidth', 2, 'LineStyle', '--')
endfor
