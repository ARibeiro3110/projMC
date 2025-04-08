function I = trapezios(f, a, b, n)

    format long

    % Verifica se n é um número inteiro positivo
    if mod(n, 1) ~= 0 || n <= 0
        error("O número de divisões deve ser um inteiro positivo");
    end
    
    % Calcula o tamanho do intervalo de cada subintervalo (passo)
    h = (b - a) / n;
    
    % Gera n+1 pontos igualmente espaçados entre a e b
    xi = linspace(a, b, n + 1);

    % Avalia a função f em cada ponto do vetor xi
    y = f(xi);
    
    % Aplica a fórmula da Regra dos Trapézios:
    % I ≈ h * [(y_0 + y_n) / 2 + soma(y_1 até y_(n-1))]
    I = h * ((y(1)+y(end))/2 + sum(y(2:end-1)));
end
