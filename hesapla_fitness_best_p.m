% functions/hesapla_fitness_best_p.m
function [] = hesapla_fitness_best_p()
global best_p best_p_fd n

for i=1:n
    % Her bir değişkeni sütun bazlı çekiyoruz
    x1 = best_p(i, 1);
    x2 = best_p(i, 2);
    x3 = best_p(i, 3);
    
    % Sadece i. indekse atama yapıyoruz
    best_p_fd(i, 1) = (x1 * 3) - (x2 * 4) / x1 + x3;
end
end