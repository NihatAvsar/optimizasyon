% best_p_hesapla.m

function [ ] = best_p_hesapla( )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here

global populasyon fd best_p best_p_fd n

for i=1:n
    if(fd(i,:)<best_p_fd(i,:))
        best_p(i,:)=populasyon(i,:);
    end
end

end