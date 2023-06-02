% 1.ª instrução - imprimir os gráficos lado a lado
% 2.ª instrução - função integranda
% 3.ª instrução - fazer gráfico com eixo dos xx entre alpha e beta
% 4.ª instrução - limite do eixo dos yy
% 5.ª instrução - título do gráfico

subplot(1, 3, 1) 
y1 = @(x) exp(4-x).*sin(50.*(x-4)); 
fplot(y1, [4 10]) 
ylim([-1 1]) 
title('exp(4-x)*sin(50*(x-4))')

subplot(1, 3, 2)
y2 = @(x) 1./(2+sin(x-4));
fplot(y2, [4 2.*pi+4])
ylim([0 1.1])
title('1/(2 + sin(x-4))')

subplot(1, 3, 3)
y3 = @(x) exp(-x.^2 + 8.*x - 16);
fplot(y3, [4 6])
ylim([0 1.1])
title('exp(-x^2 + 8*x - 16)')
