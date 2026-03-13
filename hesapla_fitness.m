function [] = hesapla_fitness_best_p( )
 
global populasyon n fd
    for i=1:n
        fd(i,:)=(populasyon(i)*3)-(populasyon(i,2)*4)/populasyon(i,1)+populasyon(i,3);
    end
end