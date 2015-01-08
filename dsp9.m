%% 
% author: XIEchenhao(11300720041)
% date:2015-01-08


%% 9.12
fs = 5000;
f1 = 50;
f2 = 100;
a=2;
b=1;

t = 0:1/fs:1;
xt = a*cos(2*pi*f1*t)+b*cos(2*pi*f2*t);

figure(1)
stem(xt(1:200))

y_interp = interp(xt,4);
figure(2)
stem(y_interp(1:200))

figure(3)
y_decim = deciminate(xt,4);
stem(y_decim(1:200))


%% 9.16

fs = 240000;
f1=100;
f2=1000;
f3=3400;
t = 0:1/fs:1;
a=2;
b=3;
c=2;

xt = a*sin(2*pi*f1*t)+b*sin(2*pi*f2*t)+c*sin(2*pi*f3*t);


figure(4)
stem(xt(1:200))

figure(5)
y_decim = deciminate(xt,15);
stem(y_decim(1:200));

y_interp = interp(xt,4);
figure(2)
stem(y_interp(1:200))
