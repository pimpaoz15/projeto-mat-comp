function [] = finderrorsnewtonquasi()
    %   Inputs 
    %       (none)
    %
    %   Ouputs
    %       (none)
    
    %obtem o valor "correto" para o zero
    z = bissecao (@(r) exp(-2*r)*(2*sin(4*r)+cos(4*r))-0.001, 0, 1, power(10,-12), power(10,-12), 1000);
    
    [a, b, c] = newtonquasi(@(r) exp(-2*r)*(2*sin(4*r)+cos(4*r))-0.001, 0.5, 1e-12, 100)

    %obtem os valores do x e do y
    x = log (abs(z - c(1:length(c)-1))); 
    y = log( abs(z - c(2:length(c))));
    
    %obtem os dados da reta de ajuste
    p1 = polyfit(x,y,1);
    
    %faz o gráfico
    plot(x,y,'o')
    grid
    title(['Line Equation is y = ',num2str(p1(1)),'x + ','(',num2str(p1(2)),')']);
    hold on 
    plot(x,polyval(p1,x),'-r')
    hold off
    legend('Dados','Reta de ajuste')
    xlabel('ln | ek - 1 |') 
    ylabel('ln | ek |') 
    
end


