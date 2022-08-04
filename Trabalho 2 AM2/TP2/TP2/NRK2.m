 function [t,u,v] = NRK2(f,g,a,b,n,u0,v0)
            h = (b-a)/n;                                        % Valor de cada(passo)
           
            t = a:h:b;                                          % Alocação de memória
            u = zeros(1, n+1);                                  % Alocação de memória
            v = zeros(1, n+1);                                  % Alocação de memória
                
            u(1) = u0;                                          % O primeiro valor de u é sempre u0
            v(1) = v0;                                          % O primeiro valor de v é sempre v0
            
            for i=1:n                                           % O número de iterações vai ser igual a n
                uK1 = h*f(t(i), u(i), v(i));                    % Inclinação no início do intervalo
                vK1 = h*g(t(i), u(i), v(i));                    % Inclinação no início do intervalo
                
                uK2 = h*f(t(i + 1), u(i) + uK1, v(i) + vK1);    % Inclinação no fim do intervalo
                vK2 = h*g(t(i + 1), u(i) + uK1, v(i) + vK1);    
                
                uK = (uK1 + uK2)/2;                           
                vK = (vK1 + vK2)/2;                           
                
                u(i + 1) = u(i) + uK;      
                v(i + 1) = v(i) + vK;        
            end
    end