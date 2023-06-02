function [] = findbetterdelta()
    %   Inputs 
    %       (none)
    %
    %   Ouputs
    %       (none)

    z =  bissecao (@(r) exp(-2*r)*(2*sin(4*r)+cos(4*r))-0.001, 0, 1, power(10,-15), power(10,-15), 1000);
    
    [a, b, c] = newtonquasi(@(r) exp(-2*r)*(2*sin(4*r)+cos(4*r))-0.001, 0.5, 1e-5, 100)
    
    en = abs( z - a)
   
end

