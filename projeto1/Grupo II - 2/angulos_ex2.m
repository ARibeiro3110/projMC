
format long

g = 9.81;       % aceleração gravítica (m/s^2)
v = 20;         % velocidade inicial (m/s)
y_0 = 2;        % altura inicial (m)
x = 35;         % distância final (m)

% Iteradas iniciais para u (correr o código para cada uma das iteradas):
%u_0 = sqrt(3)
%u_0 = sqrt(3)/3

% Função h:
h = @(u) 35*u - ((g.*(x.^2))./(2.*(v.^2))).*(1 + u^2)+y_0-1;

% Função elaborada na alínea c) que implementa o método pedido:
metodoIterativo(h,u_0,1e-6,10)     % Consideramos epsilon = 10^(-6) e M = 10

% Resultados obtidos:
%  u = 1.815973794761178     ,   quando u_0 = sqrt(3)
%  u = 0.514010186598950     ,   quando u_0 = sqrt(3)/3