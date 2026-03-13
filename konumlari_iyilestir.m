% konumlari_iyilestir.m

function [ ] = konumlari_iyilestir( )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

global n m v_pop c1 c2 best_p best_g populasyon sinir_degerleri

for i=1:n
    for j=1:m
        v_pop(i,j)=(v_pop(i,j)+(c1*rand(1)*(best_p(i,j)-populasyon(i,j))))...
            +(c2*rand(1)*(best_g(1,j)-populasyon(i,j)));
            
        if((populasyon(i,j)+v_pop(i,j)<sinir_degerleri(j,1)))
            populasyon(i,j)=populasyon(i,j);
            
        elseif((populasyon(i,j)+v_pop(i,j)>sinir_degerleri(j,2)))
            populasyon(i,j)=populasyon(i,j);
            
        else
            populasyon(i,j)=populasyon(i,j)+v_pop(i,j);
        end
    end
end
end