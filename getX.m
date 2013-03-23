function [ xvar ] = getX( dataset, sigId )
%GETX Summary of this function goes here
%   Detailed explanation goes here

xvar=[];
for x=1:size(dataset,1)
    if(dataset(x,2)==sigId)
        xvar=[xvar;dataset(x,6)];
    end
end

xvar=xvar';

end

