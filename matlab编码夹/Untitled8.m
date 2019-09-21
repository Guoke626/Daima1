%genePCDonPlane.m
%生成平面上的点
%
clear all
dx = 0.4;
xSpan=-1:dx:1;
ySpan = -1:dx:1;
[x, y]=meshgrid(xSpan, ySpan);
[m,n] = size(x);
z=ones(m,n);
plot3(x,y,z,'b.')
axis equal
stm =datestr(now,30);
svFile=['Plane',stm,'.xyz'];
dlmwrite(svFile,[x(:) y(:) z(:)]);%save point