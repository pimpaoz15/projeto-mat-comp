function [] = findintervals(precisao)
    %   Inputs 
    %       precisao - precisão com que se quer o cálculo do valor dos
    %                  extremos dos intervalos 
    %
    %   Ouputs
    %       (none)
    % 
    %   Explicação
    %       Analizando a função w temos que apenas podemos obter um intervalo porque para 
    %       todo o r > 1 temos que w(r) nunca é > 0.1, isto pode ser vizualizado no 
    %       gráfico aberto automaticamente ao correr a função. O intervalo em que 
    %       w(r) >= 0.1 começa em 0 visto que w(0) > 0.1. Para calcular o limite direito 
    %       do intervalo aplicou-se a função da bissecao à função w(r)-0.1 usando valores 
    %       de r de 0 e 1.
    %       A função bissecao usada foi a que se encontra disponível na página da cadeira 
    
    %gráfico da função w(r)
    fplot(@(r) 1*exp(-2*r)*(2*sin(4*r)+cos(4*r)), [0 10])
    
    % calculo do limite direito do intervalo em que w(r) - 0.1 >= 0
    zero =  bissecao (@(r) exp(-2*r)*(2*sin(4*r)+cos(4*r))-0.1, 0, 1, precisao, precisao, 1000);
    
    fprintf('O intervalo em que w(r) >=  0.1 é de 0 a %.15d\n', zero)

end

