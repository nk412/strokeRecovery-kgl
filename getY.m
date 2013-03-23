function [ yvar ] = getY( dataset, sigId )
%GETX Summary of this function goes here
%   Detailed explanation goes here

yvar=[];
for x=1:size(dataset,1)
    if(dataset(x,2)==sigId)
        yvar=[yvar;dataset(x,7)];
    end
end

yvar=yvar';
end

