clc;
clear all;

global n m populasyon v_pop Rn_min Rn_max T_min T_max U_min...
    U_max fd best_q en_uygun_fd test_p  cl c2 sinir_degerleri

n=10;
m=3;
Rn_min=16.3;
Rn_max=18.3;
T_min = 15;
T_max = 29;
U_min = 2.20;
U_max = 2.70;
sinir_degerleri =[Rn_min Rn_max ; T_min T_max; U_min U_max];
%pso r katsayısı oluşturma

for i=1:n
    for j=1:m
        r1(i,j)=rand(1);
        r2(i,j) = rand(1);
    end
end

%pso c1 ve c2 katsayısı oluşturma
while(0<1)
    c1=2*rand(1,1);
    c2=2*rand(1,1);
    if(c1*c2>3.9)
        break
    end
end

j=1;
iterasyon = 10;

populasyon_olustur;
hizlari_belirle;
hesapla_fitness;
%%
best_p=populasyon;
best_g_hesapla;

while(j <= iterasyon)
    konumlari_iyilestir;
    hesapla_fitness;
    best_p_hesapla;
    hesapla_fitness_best_p;
    best_g_hesapla;
    
    j = j + 1;
end