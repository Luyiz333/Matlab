function [t,u,v] = NEM(f,g,a,b,n,u0,v0)
            h = (b-a)/n;                                       % Valor de cada  (passo)
            
            t = a:h:b;                                         % Alocação de memória
            u = zeros(1, n+1);                                 % Alocação de memória
            v = zeros(1, n+1);                                 % Alocação de memória
           
            u(1) = u0;                                         % O primeiro valor de u é sempre u0
            v(1) = v0;                                         % O primeiro valor de v é sempre v0
            
            for i=1:n                                          % O número de iterações vai ser igual a n
                uK1 = f(t(i),u(i),v(i));                       % Inclinação no início do intervalo
                vK1 = g(t(i),u(i),v(i));                       % Inclinação no início do intervalo
                
                uK2 = f(t(i+1), u(i) + uK1*h, v(i) + vK1*h);   % Inclinação no fim do intervalo
                vK2 = g(t(i+1), u(i) + uK1*h, v(i) + vK1*h);   % Inclinação no fim do intervalo  
                
                uK = 0.5*(uK1 + uK2);                          % Cálculo da média das inclinações
                vK = 0.5*(vK1 + vK2);                          % Cálculo da média das inclinações
                
                u(i + 1) = u(i) + h*uK;                     
                v(i + 1) = v(i) + h*vK;                       
            end
    end