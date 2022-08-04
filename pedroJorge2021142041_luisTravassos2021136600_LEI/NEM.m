function y = NEM(f,a,b,n,y0)
    h = (b-a)/n;                     
    
    t = a:h:b;                       % Alocação de memória - vetor das abcissas
    y = zeros(1, n+1);               % Alocação de memória - vetor das ordenadas
    
   
    y(1) = y0;                       % O primeiro valor de y é sempre y0 
    
    for i=1:n                        % O número de iterações vai ser igual a n
        k1 = f(t(i),y(i));           % Inclinação no início do intervalo
        k2 = f(t(i+1), y(i) + k1*h); % Inclinação no fim do intervalo
        k = 0.5*(k1+k2);             % Cálculo da média da inclinacao no intervalo
        y(i+1)=y(i)+h*k;            
    end
end