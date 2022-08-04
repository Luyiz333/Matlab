%Função Metodo RK2:
   %INPUT: 
     %f - Função da equação diferencial, em t e y
     %a - Limite esquerdo do intervalo
     %b - Limite direito do intervalo
     %n - Numero de sub-intervalos
     %y0 - Valor (condição) Inicial do PVI
    %OUTPUT:
      %y - vector das soluções aproximadas
      
function y = NRK4(f,a,b,n,y0)
    h = (b-a)/n;                                     
    
    t = a:h:b;                                          % Alocação de memória - vetor das abcissas
    y = zeros(1, n+1);                                  % Alocação de memória - vetor das ordenadas
    
    y(1) = y0;                                          % O primeiro valor de y é sempre y0 (condição inicial do pvi)

    for i=1:n                                           % O número de iterações vai ser igual a n
        k1 = h*f(t(i), y(i));                           % Inclinação no início do intervalo
        k2 = h*f(t(i) + h/2, y(i) + 0.5*k1);            % Inclinação no ponto médio do intervalo
        k3 = h*f(t(i) + h/2, y(i) + 0.5*k2);            % Inclinação (novamente) no ponto médio do intervalo
        k4 = h*f(t(i+1), y(i) + k3);                    % Inclinação no final do intervalo
        
        y(i + 1) = y(i) + (k1 + 2*k2 + 2*k3 + k4)/6;    % Próximo valor aproximado da solução do problema original
    end
end