function [] = hizlari_belirle()
global n v_pop m
for i=1:n
    for J=1:m
        v_pop(i, J) = abs(rand(1))
    end
end