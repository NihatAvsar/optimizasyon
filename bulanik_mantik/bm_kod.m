clc

input1 = [55; 60; 65; 70; 75]; 
input2 = [5; 10; 12; 15; 18];

a = mamfis('Name', 'bulanik');

a = addInput(a, [52 76], 'Name', 'INPUT1');
a = addMF(a, 'INPUT1', 'trimf', [52 52 57], 'Name', 'Düşük');
a = addMF(a, 'INPUT1', 'trimf', [54 58 62], 'Name', 'Orta');
a = addMF(a, 'INPUT1', 'trimf', [58 74 76], 'Name', 'Yüksek');

a = addInput(a, [4 20], 'Name', 'INPUT2');
a = addMF(a, 'INPUT2', 'trimf', [4 4.5 5], 'Name', 'Düşük');
a = addMF(a, 'INPUT2', 'trimf', [4.5 5 6], 'Name', 'Orta');
a = addMF(a, 'INPUT2', 'trimf', [5.5 11 20], 'Name', 'Yüksek');

a = addOutput(a, [8 29], 'Name', 'CIKIS');
a = addMF(a, 'CIKIS', 'trimf', [9 9.5 11], 'Name', 'low');
a = addMF(a, 'CIKIS', 'trimf', [10 11.5 12], 'Name', 'moderate');
a = addMF(a, 'CIKIS', 'trimf', [11 14 29], 'Name', 'high');

ruleList = [
    1 1 1 1 1;
    1 3 3 1 1;
    2 2 1 1 1;
    3 2 3 1 1;
    3 3 2 1 1];
a = addRule(a, ruleList);

writeFIS(a, 'Bulanik.fis');
f = readfis('Bulanik.fis');

tahmin = zeros(5, 1);
x = zeros(5, 1);

for i = 1:5 
    % Modern evalfis kullanımı: evalfis(fis_objesi, giris_matrisi)
    tahmin(i,1) = evalfis(f, [input1(i,1) input2(i,1)]);
    x(i,1) = i;
end

disp('Hesaplanan Tahmin Değerleri:');
disp(tahmin);

plotfis(a);

figure;
plotmf(a, 'input', 1); title('INPUT1 Üyelik Fonksiyonları');
figure;
plotmf(a, 'input', 2); title('INPUT2 Üyelik Fonksiyonları');
figure;
plotmf(a, 'output', 1); title('CIKIS Üyelik Fonksiyonları');

writeFIS(a, 'bm_kd.fis');