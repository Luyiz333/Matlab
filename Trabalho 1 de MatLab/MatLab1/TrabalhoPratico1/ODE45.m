%Input e Output -> Igual aos outros metodos...

%%Não Funciona -> Precisa de Melhoria
%!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
%!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
%!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
function y = ODE45(f,a,b,n,y0)
    h = (b-a)/n;                        % Tamanho de cada subintervalo (passo)
    tspan = a:h:b;                          % Alocação de memória - vetor das abcissas

    y = ode45(isfloat(f), tspan, y0);            % Aproximação através da função ODE45 e colocação dos valores no vetor y
    
                                   
end
