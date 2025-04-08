format long

f = @(x) (4./(1 + x.^2));
a = 0;
b = 1;
n = 8;
epsilon = 0.5*10^(-16);

% Resultado:
[I, table] = romberg(f,a,b,n,epsilon)

% I: resultado final da aplicação do método de Romberg
% table: matriz com todas as aproximações calculadas pelo método de Romberg

% Cálculo dos erros absolutos:
3.141592653589793 - table