function t = integratrap(f, alpha, beta, MaxK)

%   Inputs:
%       f - função integranda
%       alpha - primeiro valor do intervalo de integração
%       beta - último valor do intervalo de integração
%       MaxK - número máximo de k
%
%   Output:
%       t - matriz de tamanho [MaxK x 4] da forma:
%           [n.º subintervalos  |Tn|  |T2n-Tn|  |T2n-Tn|/|T4n-T2n|]

   h(1) = (beta-alpha)/2; 
   x = alpha:h(1):beta; 
   y = feval(f,x); 
   t(1, 1) = 2;
   t(1, 2) = h(1)*trapz(y); 
   t(1, 3) = 0;
   t(1, 4) = 0;
   if MaxK > 1
    for k = 2:MaxK
       t(k, 1) = 2^k; 
       h(k) = h(k-1)/2; 
       x = alpha:h(k):beta; 
       y = feval(f,x); 
       t(k, 2) = h(k)*trapz(y); 
       t(k, 3) = abs(t(k, 2) - t(k-1, 2)); 
       t(k, 4) = t(k-1, 3)/t(k, 3); 
    end
   end
end

