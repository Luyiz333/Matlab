%Input e Output -> Igual aos outros metodos...

function y = ODE45(f,a,b,n,y0)
    h = (b-a)/n;                        % Tamanho de cada subintervalo 
    t = a:h:b;                          % Alocação de memória - vetor das abcissas

    [~,y] = ode45(f, t, y0);            % Aproximação através da função ODE45 e colocação dos valores no vetor y
    y = y';
                                   
end
