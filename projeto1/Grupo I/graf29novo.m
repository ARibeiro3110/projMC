n = 29; % Definir o número de iterações (pode ser alterado conforme necessário)
x = 1:n; % Criar um vetor de valores para o eixo x, de 1 até n
y1 = []; % Inicializar o vetor para armazenar os valores de I_n
y2 = []; % Inicializar o vetor para armazenar os valores de calcular_integral

% Calcular os valores das funções I_n e calcular_integral para cada n
for num = 1:n
    %Calcular e armazenar a valor o I_n e calcular_integral
    y1 = [y1, I_n(num)];
    y2 = [y2, calcular_integral(num)];
end

hold on
scatter(x, y1, 'b', 'filled'); % Criar um gráfico de dispersão (scatter) dos pontos de I_n, na cor azul e preenchidos
plot(x, y2, 'k-', 'MarkerFaceColor', 'k'); % Criar uma linha preta para representar os valores da integral

% Destacar o ponto n = 29 em vermelho
scatter(29, y1(29), 'r', 'filled'); % Ponto vermelho para y1(29)

grid on;
xlabel('n');
ylabel('I_n');
title('Gráfico de I_n')
hold off

tira os pontos a vermelho deixa so os azuis e a linha?
