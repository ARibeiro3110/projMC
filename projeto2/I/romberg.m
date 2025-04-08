function [prev,current] = romberg(f, a, b, n, epsilon)
%romberg Calcula o integral da função f
%   Calcula o integral da função f no intervalo [a, b] usando o método de romberg

cond = true;  % Condição de controle do loop.
j = 0;        % Contador de iterações.
current = []; % Inicializa 'current' como um vetor vazio.
    
% Loop principal do método de Romberg
while j <= n && cond
    prev = current; % Armazena os valores da iteração anterior.
    current = zeros(1, j + 1);% Cria um vetor de zeros com tamanho adequado.
    % Primeira estimativa usando a Regra dos Trapézios com 2^j subdivisões
    current(1) = trapezios(f, a, b, 2^j);

    % Aplicação da extrapolação de Richardson para melhorar a precisão
    for i=1:j
        current(i + 1) = (4^i * current(i) - prev(i)) / (4^i - 1);
    end

    % Critério de parada: verifica a convergência
    if j > 0
        cond = ~(abs(prev(end) - current(end)) < epsilon);
    end

    j = j + 1; % Incrementa o contador de iterações.

end

% Verifica se o método convergiu dentro do número de iterações permitido
if j > n
    warning('O método não convergiu dentro do número de iteradas especificado')
else
    disp(['O método convergiu em ', num2str(j), ' iteradas'])
end
end

%   Entradas:
%   - f: função a ser integrada.
%   - a: limite inferior do intervalo de integração.
%   - b: limite superior do intervalo de integração.
%   - n: número máximo de j.
%   - eps: critério de parada (erro máximo permitido).
%
%   Saídas:
%   - prev: valores da iteração anterior.
%   - current: valores da iteração atual.