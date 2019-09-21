x=1; y=1; z=1;
r=0.5;
x1=x+r;y1=y+r;z1=z+r;
x2=x+r;y2=y+r;z2=z-r;
x3=x+r;y3=y-r;z3=z+r;
x4=x+r;y4=y-r;z4=z-r;
x5=x-r;y5=y+r;z5=z+r;
x6=x-r;y6=y+r;z6=z-r;
x7=x-r;y7=y-r;z7=z+r;
x8=x-r;y8=y-r;z8=z-r;
vertices=[x1 y1 z1;x2 y2 z2;x3 y3 z3;x4 y4 z4;x5 y5 z5;x6 y6 z6;x7 y7 z7;x8 y8 z8];
faces=[1 2 6 5;1 3 4 2;4 3 7 8;7 5 6 8;8 6 2 4;3 1 5 7 ];
for i = 1 : 6
    h = patch(vertices(faces(i,:),1),vertices(faces(i,:),2),vertices(faces(i,:),3),'g');
    set(h,'facealpha',0.2);
end
axis equal
for i = 1 : 8
    text(vertices(i,1),vertices(i,2),vertices(i,3),num2str(i));
end
axis off

view(3)
hold on
plot3(x,y,z,'bo')
text(x,y,z,'(1,1,1)');
