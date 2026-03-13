function [ ] = populasyon_olustur()
%parametre sınır değerleri
global n m populasyon Rn_min Rn_max T_min T_max U_min U_max

for i=1:n
    for j=1:m
        if(j==1)
            sinir_ust= Rn_max;
            sinir_alt= Rn_min;
        end
        if(j==2)
            sinir_ust = T_max;
            sinir_alt = T_min;
        end
        if(j==3)
            sinir_ust=U_max;
            sinir_alt=U_min;
        end

        populasyon(i, j) = sinir_alt + (sinir_ust - sinir_alt) * rand(1); % Generate random values within the limits
        %populasyon=unifrnd(sinir_alt, sinir_ust, n, m);
    end
end
end