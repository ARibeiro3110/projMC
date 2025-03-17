format long

f1 = @(x) sin(x) - exp(-x);
x1_0 = 0.7;
epsilon1 = 10^-5;
M1 = 10;

% Tabela
[iteradas1, tabela1] = tabela(f1, x1_0, epsilon1, M1)

% Grafico
grafico(f1, iteradas1, [0.58 0.7 -0.05 0.16], 'f1(x)')