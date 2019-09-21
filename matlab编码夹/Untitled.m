clear;clc;
sig=importdata('µãÔÆ.txt');
x=sig(:,1);
y=sig(:,2);
z=sig(:,3);

plot3(x, y, z,'k.','MarkerSize',1)
xlabel('X','Fontsize',13),ylabel('Y','Fontsize',13),zlabel('Z','Fontsize',13);
grid on
