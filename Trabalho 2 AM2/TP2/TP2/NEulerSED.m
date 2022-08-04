     function [t,u,v]=NEulerSED(f,g,a,b,n,u0,v0)
            h=(b-a)/n;                                  % Valor de cada (passo)
            
            t=a:h:b;                                    % Alocação de memória
            u=zeros(1,n+1);                             % Alocação de memória
            v=zeros(1,n+1);                             % Alocação de memória
                
            u(1)=u0;                                    % O primeiro valor de u é sempre u0
            v(1)=v0;                                    % O primeiro valor de v é sempre v0
            
            for i=1:n                                   % O número de iterações vai ser igual a n
                u(i+1)=u(i)+h*f(t(i),u(i),v(i));        % Aproximação do método de Euler para a iésima iteração
                v(i+1)=v(i)+h*g(t(i),u(i),v(i));        % Aproximação do método de Euler para a iésima iteração
            end
    end