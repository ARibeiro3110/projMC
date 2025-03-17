function [iteradas] = metodoIterativo(f, x_0, epsilon, M)
    N = M+1;
    iteradas = zeros(N, 1); % Alocacao de memoria para
                            % o vetor das iteradas
    iteradas(1) = x_0;
    
    for n=2:N
        x_n = iteradas(n-1);
        f_x_n = f(x_n);
        
        x_n1 = x_n - (2*f_x_n^2) / ( f(x_n + f_x_n) - f(x_n - f_x_n));
        iteradas(n) = x_n1; % x_{n+1}

        delta = abs(x_n1 - x_n) / abs(x_n1);
        if delta < epsilon || f(x_n1) == 0 % Criterios de paragem
            iteradas = iteradas(1:n); % Ao atingir um criterio de
                                      % paragem, o vetor tem mais
                                      % posicoes alocadas do que
                                      % usadas, portanto trunca-se
            break
        end
    end
end