function [ meanX ] = agreggateX( dataset,res, plt )
%AGREGGATE Summary of this function goes here
%   Detailed explanation goes here


if(nargin<2)
    res=100;
end
if(nargin<3)
    plt=0;
end


meanX=[];
meanY=[];

if(plt==1)
    figure
    hold on
end


for sigid=1:605
    xa=getX(dataset,sigid);
    if(plt==1)
        plot(normalizeV(xa,res));
    end
    
    if(size(meanX,1)==0)
        meanX=meanV(xa,xa,res);
    else
        meanX=meanV(meanX,xa,res);
    end
end

if(plt==1)
    plot(meanX,'red');   
end

end

