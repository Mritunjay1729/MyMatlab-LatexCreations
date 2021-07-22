n = -100:1:100;
y = cos(2*n);
stem(n,y,'linewidth',1,'or');
axis([-30 30 -1.1 1.1]);
xticks([-30:1:30]);