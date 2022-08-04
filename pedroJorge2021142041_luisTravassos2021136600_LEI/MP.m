%Método Mid Point (Ponto médio)
function y = MP(f,a,b,n,y0)
     h=(b-a)/n;
                t=a:h:b;
                y = zeros(1, n+1);
                y(1) = y0;
                
                for i = 1:n
                    G=f(t(i),y(i));
                    A=t(i)+(h/2);
                    B=y(i)+(h/2)*G;
                    y(i+1)=y(i)+h*f(A,B);
                end
end