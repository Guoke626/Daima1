clear all
clc
R = 1;
% sita=0:0.1:2*pi;
% fai=-pi:0.1:pi;
% x=R*cos(sita).*cos(fai);
% y=R*sin(sita).*cos(fai);
% z=R*sin(fai);
% plot3(x,y,z,'.')
% axis equal

[sita, fai]=meshgrid(0:0.1:2*pi, -pi:0.1:pi);
x=R*cos(sita).*cos(fai);
y=R*sin(sita).*cos(fai);
z=R*sin(fai);
plot3(x,y,z,'.')
axis equal
dlmwrite('Sphere000.txt',[x(:) y(:) z(:)]);%save point

xyz=dlmread('Sphere000.txt');%read points
xx=xyz(:,1);
yy=xyz(:,2);
zz=xyz(:,3);
plot3(xx,yy,zz,'.')
axis equal

n=1000;
sita=rand(n,1)*2*pi;
fai= rand(n,1)*2*pi-pi;
x=R*cos(sita).*cos(fai);
y=R*sin(sita).*cos(fai);
z=R*sin(fai);
plot3(x,y,z,'.')
axis equal

