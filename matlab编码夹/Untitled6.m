%GeneVoxelsDemo.m
%
%H. LI@bjfu, 2019.7.11
clear all
openFile = 'Plane20190711T200421.xyz';

R=0.1;
pcdM=dlmread(openFile);
[m,n] = size(pcdM);
fig = figure('Color', 'w');
Vall = [];
Fall = [];
for i=1:1:m
     [Vtx, VoxFaceIdx]=GenCubeFormPt2(pcdM(i,:), R);
     for j=1:1:6
          idx0=VoxFaceIdx(j,:);
          idx = [idx0,idx0(1)];
         plot3(Vtx(idx,1), Vtx(idx,2), Vtx(idx,3),'b-');
         axis equal
         hold on
     end     
     Vall = [Vall;Vtx];
     Fall = [ Fall; VoxFaceIdx+(i-1)*8];
end

%return

%save file
stm =datestr(now,30);
n2 = size(openFile,2);
svFile=[ openFile(1,1:n2-4),'Vox.obj'];
[m1,n1]=size(Vall);
[m2,n2]=size(Fall);
vLbl = repmat('s', m1,1);
fLbl = repmat('f', m2,1);

fid = fopen(svFile,'w');
for i=1:1:m1
    fprintf(fid,'v %f %f %f\n',Vall(i,1),Vall(i,2),Vall(i,3)  );  
end
for i=1:1:m2
    fprintf(fid,'f %d %d %d %d\n', Fall(i,1),Fall(i,2),Fall(i,3),Fall(i,4)); 
end
fclose(fid); 



