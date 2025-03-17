format long

f2 = @(x) x.^3 - 2;
x2_0 = 2;
epsilon2 = 10^-5;
M2 = 15;

% Tabela
[iteradas2, tabela2] = tabela(f2, x2_0, epsilon2, M2)

% Grafico
grafico(f2, iteradas2, [1.25 2 -0.2 6], 'f2(x)')