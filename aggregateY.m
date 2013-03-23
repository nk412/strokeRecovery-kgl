function [ meanY ] = agreggateY( dataset, res, plt )
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
    ya=getY(dataset,sigid);
    if(plt==1)
         plot(normalizeV(ya,res));
    end
    if(size(meanY,1)==0)
        meanY=meanV(ya,ya,res);
    else
        meanY=meanV(meanY,ya,res);
    end
end


if(plt==1)
    plot(meanY,'red');   
end


end

