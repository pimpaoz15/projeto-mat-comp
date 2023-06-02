function [z,fz,iter] = newtonquasi(f,x0,TolX,MaxIter)
    %   Inputs 
    %       f - função a aplicar o método
    %       x0 - aproximação inicial
    %       TolX - precisão mínima exigida
    %       MaxIter - número máximo de iteradas
    %
    %   Ouputs
    %       z - aproximação da raiz 
    %       fz - valor da função na raiz 
    %       iter - vector que contem as iteradas
    %       

%Inicialização das variáveis auxiliares
Delta = 1e-5
NIter = 0;
    
    iter(1) = x0;

while NIter < MaxIter
    
    %cálculo de x(n+1)
    iter(NIter+2) = iter(NIter+1) - ( Delta / ( f(iter(NIter+1) + Delta) -  f(iter(NIter+1)) ) ) * f(iter(NIter+1));
    NIter = NIter + 1;
    
    %verificação da precisão 
    if( (abs(iter(NIter+1) - iter(NIter)) / abs(iter(NIter)) ) < TolX )
        z = iter(NIter+1);
        fz = f(z);
        break;
    end   
end



