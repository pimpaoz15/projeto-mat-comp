MaxK = 19; % número máximo de k
alpha = 4; % o primeiro valor do intervalo de integração (igual para os 3 integrais)

% função 1
y1 = @(x) exp(4-x).*sin(50.*(x-4));
beta1 = 10; 
% função 2
y2 = @(x) 1./(2+sin(x-4));
beta2 = 2.*pi+4; 
% função 3
y3 = @(x) exp(-x.^2 + 8.*x - 16);
beta3 = 6;

% determinação da matriz para as 3 funções
int1 = integratrap(y1, alpha, beta1, MaxK)
int2 = integratrap(y2, alpha, beta2, MaxK)
int3 = integratrap(y3, alpha, beta3, MaxK)

