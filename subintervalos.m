function [] = subintervalos(f, alpha, beta, epsilon)

% Função que calcula e imprime o número mínimo de subintervalos 
% para obter um erro inferior a epsilon
%   Inputs:
%       f - função integranda
%       alpha - primeiro valor do intervalo de integração
%       beta - último valor do intervalo de integração
%       epsilon - erro pretendido

syms g(x)
g(x) = f;
Dg = diff(g, 2); 
vector = linspace(alpha, beta, 1000); 
derivada = feval(Dg, vector); 
derivada = abs(derivada); 
M = max(derivada); 
n = sqrt((((beta-alpha)^3) * M)/(12 * epsilon)); 
ceil(n) 
end

