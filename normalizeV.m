function [ normalizedV ] = normalizeV( a,resolution )
%MEANV Summary of this function goes here
%   Detailed explanation goes here

if(size(a,2)==1)
    a=a';
end

if(nargin<2)
    resolution=100;
end

bins=zeros(resolution,1);
counts=zeros(resolution,1);
for x=1:size(a,2)
    val=a(x);
    ind=int64((x/size(a,2))*(resolution));
    if(ind==0)
        ind=1;
    end
    bins(ind)=bins(ind)+val;
    counts(ind)=counts(ind)+1;
end

normalizedV=bins./counts;
normalizedV=normalizedV';

for x=1:size(normalizedV,2)
    if(isnan(normalizedV(x)))
        if(x==1)
            normalizedV(x)=0;
        else
            normalizedV(x)=normalizedV(x-1);
        end
    end
end

        

end


