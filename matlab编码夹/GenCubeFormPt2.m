function [Vtx, faceIdx]=GenCubeFormPt2(P, r)

Vtx=zeros(8,3);
CubeEidx=ones(12,2);
xMin = P(1)-r;
yMin = P(2)-r;
zMin = P(3)-r;
xMax = P(1)+r;
yMax = P(2)+r;
zMax = P(3)+r;
Vtx(1,1:3)=[xMin, yMin, zMin];
Vtx(2,1:3)=[xMax, yMin, zMin];
Vtx(3,1:3)=[xMax, yMax, zMin];
Vtx(4,1:3)=[xMin, yMax, zMin];
Vtx(5,1:3)=[xMin, yMin, zMax];
Vtx(6,1:3)=[xMax, yMin, zMax];
Vtx(7,1:3)=[xMax, yMax, zMax];
Vtx(8,1:3)=[xMin, yMax, zMax];

CubeEidx(1,1:2) = [1,2];
CubeEidx(2,1:2) = [2,3];
CubeEidx(3,1:2) = [3,4];
CubeEidx(4,1:2) = [1,4];
CubeEidx(5,1:2) = [1,5];
CubeEidx(6,1:2) = [2,6];
CubeEidx(7,1:2) = [3,7];
CubeEidx(8,1:2) = [4,8];
CubeEidx(9,1:2) = [5,6];
CubeEidx(10,1:2) = [6,7];
CubeEidx(11,1:2) = [7,8];
CubeEidx(12,1:2) = [5,8];
%
faceIdx=[1 2 3 4
                8 7 6 5
                1 5 6 2
                2 6 7 3
                3 7 8 4
                4 8 5 1];


%show figure
% fig=figure('Color','w');
% hold on
% for I=1:1:12
%     idx=CubeEidx(I,:);
%     plot3(Vtx(idx,1), Vtx(idx,2), Vtx(idx,3),'b-');
% end