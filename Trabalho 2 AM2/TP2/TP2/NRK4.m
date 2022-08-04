  function [t,u,v] = NRK4(f,g,a,b,n,u0,v0)
            h = (b-a)/n;                                                  
            
            t = a:h:b;                                                   
            u = zeros(1, n+1);                                            
            v = zeros(1, n+1);                                         
            
            u(1) = u0;                                             
            v(1) = v0;                                                    
            
            for i=1:n                                                     
                uK1 = h*f(t(i), u(i), v(i));                               
                vK1 = h*g(t(i), u(i), v(i));                              
                
                uK2 = h*f(t(i) + h/2, u(i) + 0.5*uK1, v(i) + 0.5*vK1);     
                vK2 = h*g(t(i) + h/2, u(i) + 0.5*uK1, v(i) + 0.5*vK1);      
                
                uK3 = h*f(t(i) + h/2, u(i) + 0.5*uK2, v(i) + 0.5* vK2);    
                vK3 = h*g(t(i) + h/2, u(i) + 0.5*uK2, v(i) + 0.5* vK2); 
                
                uK4 = h*f(t(i+1), u(i) + uK3, v(i) + vK3);                  
                vK4 = h*g(t(i+1), u(i) + uK3, v(i) + vK3);                
                
                uK = (uK1 + 2*uK2 + 2*uK3 + uK4)/6;                       
                vK = (vK1 + 2*vK2 + 2*vK3 + vK4)/6;                      
                
                u(i + 1) = u(i) + uK;                                     
                v(i + 1) = v(i) + vK;                                    
            end
        end