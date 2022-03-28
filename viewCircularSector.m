function [x,y,inputVal]=viewCircularSector_(inputVal)
%view cartesian as sphere 2D coordinate
%input form : range*azimuth
%output : surf(x,y,heatmap)
num_range = size(inputVal,1);
num_theta = size(inputVal,2);
startTheta = (180 - num_theta)/2;
[x,y,z] = sph2cart(repmat(deg2rad(startTheta+1:180-startTheta),[num_range 1]),zeros(num_range, num_theta),repmat((1:num_range)',[1 num_theta]));
surf(x,y,abs(inputVal)); view(2);
end
