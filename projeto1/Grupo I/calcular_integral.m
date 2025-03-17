function resultado = calcular_integral(n)
    % Função para calcular a integral de (x^n)/(x+5) no intervalo de 0 a 1
    % A função recebe o valor de n como argumento.
    
    % Defina a função a ser integrada
    f = @(x) (x.^n) ./ (x + 5);

    % Calcule a integral de 0 a 1
    resultado = integral(f, 0, 1);
end


