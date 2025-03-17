function resultado = I_n(n)
format long g  % Define o formato de saída para maior precisão

% I_n calcula o n-ésimo termo da sucessão I_n

resultado = log(6/5); % Inicializa o resultado com log(6/5)

i = 1; % Inicializa o contador i

% Loop para calcular o termo n da sequência
while i <= n
    resultado = 1/i - 5 * resultado; % Atualiza o valor de resultado com a fórmula da sequência
    i = i + 1; % Incrementa o contador i
end

end
