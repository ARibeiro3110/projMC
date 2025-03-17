format long

f3 = @(x) cos(x) - x;
x3_0 = 1;
epsilon3 = 10^-5;
M3 = 100;

% Tabela
[iteradas3, tabela3] = tabela(f3, x3_0, epsilon3, M3)

% Grafico
grafico(f3, iteradas3, [0.73 1 -0.5 0.04], 'f3(x)')
