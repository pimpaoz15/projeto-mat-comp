format shortE;

%%Generate Data Table
x = 1:0.25:4;
y = [0.757, 0.578, 0.223, -0.247, -0.311, -0.536, 0.191, 0.761, 0.877, 1.57, 2.5, 2.87, 3.9];

%p(0) não é possível ser realizado dentro do for uma vez que não dá para
%criar um array P que inclua o 0 logo tem de ser feito à parte

[P0, e0] = polyfit(x, y, 0);
W0 = polyval(P0, x);
SSE0 = e0.normr^2;
MSEm0 = SSE0 / (13 - 1);
MSEmplus0 = SSE0 / (13 - 2);
divMSE0 = MSEm0 / MSEmplus0;

disp(P0);

for i = 1:11 %o i comportar-se à como o grau do polinómio
    
    %dentro dos cases o i das formulas sera previamente substituido 
    %MSEm = SSE / (13 - (i + 1));
    %MSEmplus = SSE / (13 - ((i + 1) + 1));
    
   [P, e] = polyfit(x, y, i);
   disp(P);
   switch i
       case 1
           [P1] = polyval(P, x);
           AuxSSE1 = (P1 - y).^2; %Variável auxiliar no cálculo do SSE
           SSE1 = sum(AuxSSE1); %Realiza a soma de todos os valores do array AuxSSE1
           MSEm1 = SSE1 / 11; %Realiza o cálculo do MSE = nº de pontos - nº de parâmetros a estimar
           MSEmplus1 = SSE1 / 10; %Cálculo do MSE(m+1) = nº de pontos - nº de parâmetros a estimar + 1
           divMSE1 = MSEm1 / MSEmplus1; %Realiza o cálculo do ultimo valor pedido na tabela
       case 2
           [P2] = polyval(P, x);
           AuxSSE2 = (P2 - y).^2;
           SSE2 = sum(AuxSSE2);
           MSEm2 = SSE2 / 10;
           MSEmplus2 = SSE2 / 9;
           divMSE2 = MSEm2 / MSEmplus2;
       case 3
           [P3] = polyval(P, x);
           AuxSSE3 = (P3 - y).^2;
           SSE3 = sum(AuxSSE3);
           MSEm3 = SSE3 / 9;
           MSEmplus3 = SSE3 / 8;
           divMSE3 = MSEm3 / MSEmplus3;
       case 4
           [P4] = polyval(P, x);
           AuxSSE4 = (P4 - y).^2;
           SSE4 = sum(AuxSSE4);
           MSEm4 = SSE4 / 8;
           MSEmplus4 = SSE4 / 7;
           divMSE4 = MSEm4 / MSEmplus4;
       case 5
           [P5] = polyval(P, x);
           AuxSSE5 = (P5 - y).^2;
           SSE5 = sum(AuxSSE5);
           MSEm5 = SSE5 / 7;
           MSEmplus5 = SSE5 / 6;
           divMSE5 = MSEm5 / MSEmplus5;
       case 6
           [P6] = polyval(P, x);
           AuxSSE6 = (P6 - y).^2;
           SSE6 = sum(AuxSSE6);
           MSEm6 = SSE6 / 6;
           MSEmplus6 = SSE6 / 5;
           divMSE6 = MSEm6 / MSEmplus6;
       case 7
           [P7] = polyval(P, x);
           AuxSSE7 = (P7 - y).^2;
           SSE7 = sum(AuxSSE7);
           MSEm7 = SSE7 / 5;
           MSEmplus7 = SSE7 / 4;
           divMSE7 = MSEm7 / MSEmplus7;
       case 8
           [P8] = polyval(P, x);
           AuxSSE8 = (P8 - y).^2;
           SSE8 = sum(AuxSSE8);
           MSEm8 = SSE8 / 4;
           MSEmplus8 = SSE8 / 3;
           divMSE8 = MSEm8 / MSEmplus8;
       case 9
           [P9] = polyval(P, x);
           AuxSSE9 = (P9 - y).^2;
           SSE9 = sum(AuxSSE9);
           MSEm9 = SSE9 / 3;
           MSEmplus9 = SSE9 / 2;
           divMSE9 = MSEm9 / MSEmplus9;
       case 10
           [P10] = polyval(P, x);
           AuxSSE10 = (P10 - y).^2;
           SSE10 = sum(AuxSSE10);
           MSEm10 = SSE10 / 2;
           MSEmplus10 = SSE10 / 1;
           divMSE10 = MSEm10 / MSEmplus10;
       case 11
           [P11] = polyval(P, x);
           AuxSSE11 = (P11 - y).^2;
           SSE11 = sum(AuxSSE11);
           MSEm11 = SSE11 / 1;
           MSEmplus11 = SSE11 / 0;
           divMSE11 = MSEm11 / MSEmplus11;
   end
end
s = "--------------------------------"; %método de separação dos valores representados no output

disp(s);

%realização do display no output dos valores pedidos na tabela
disp(SSE0);
disp(SSE1);
disp(SSE2);
disp(SSE3);
disp(SSE4);
disp(SSE5);
disp(SSE6);
disp(SSE7);
disp(SSE8);
disp(SSE9);
disp(SSE10);
disp(SSE11);

disp(s);

disp(MSEm0);
disp(MSEm1);
disp(MSEm2);
disp(MSEm3);
disp(MSEm4);
disp(MSEm5);
disp(MSEm6);
disp(MSEm7);
disp(MSEm8);
disp(MSEm9);
disp(MSEm10);
disp(MSEm11);

disp(s);

disp(divMSE0);
disp(divMSE1);
disp(divMSE2);
disp(divMSE3);
disp(divMSE4);
disp(divMSE5);
disp(divMSE6);
disp(divMSE7);
disp(divMSE8);
disp(divMSE9);
disp(divMSE10);
disp(divMSE11);


f1 = figure;
plot(x, y, "o");
xlim([1 4])
hold on;

plot(x, W0);
plot(x, P1);
plot(x, P2);
plot(x, P3);
plot(x, P4);
plot(x, P5);

legend('(x, f(x))','grau 0','grau 1','grau 2','grau 3','grau 4','grau 5') 
title('Polinómios não interpoladores com grau entre 0 e 5')
xlabel('x','FontSize',12);
ylabel('f(x)','FontSize',12); 
hold off

f2 = figure;
plot(x, y, "o");
xlim([1 4])
hold on;

plot(x, P6);
plot(x, P7);
plot(x, P8);
plot(x, P9);
plot(x, P10);
plot(x, P11);

legend('(x, f(x))','grau 6','grau 7','grau 8','grau 9','grau 10','grau 11') 
title('Polinómios não interpoladores com grau entre 6 e 11')
xlabel('x','FontSize',12);
ylabel('f(x)','FontSize',12); 
hold off