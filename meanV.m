function [ norm_c ] = meanV( a,b,resolution )
%MEANV Summary of this function goes here
%   Detailed explanation goes here

if(nargin<3)
    resolution=100;
end

if(size(a,2)==1)
    a=a';
    b=b';
end

norm_a=normalizeV(a,resolution);
norm_b=normalizeV(b,resolution);
norm_c=[norm_a;norm_b];
norm_c=mean(norm_c);

end


