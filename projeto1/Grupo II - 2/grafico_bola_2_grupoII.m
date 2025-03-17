
format long

% Dados:
g = 9.81;       % aceleração gravítica (m/s^2)
v = 20;         % velocidade inicial (m/s)
y_0 = 2;        % altura inicial (m)
xf = 35;        % distância final (m)

% Ângulos de lançamento (radianos); correr o código para cada um dos ângulos:
%theta = 0.474792835517415;
%theta = 1.067439833438722;

% Definir as abcissas dos pontos que vão ser representados
x = 0:0.1:xf;

% Expressão que define a relação de x (distância em m) e y (altura em m)
y = tan(theta).*x - (g.*(x.^2))./(2.*(v.^2).*(cos(theta)).^2) + y_0;


hold on

plot(x,y, 'b--');   % gráfico da altura da bola em função da distância percorrida
title('Trajetória da bola, definida pelas coordenadas (x,y)')
xlabel('x (m)')
ylabel('y (m)')
legend('Trajetória')
grid on
axis([0 36 0 18]);  % ajustar os limites da janela de visualização

% Criar uma visualização da bola
bola = plot(NaN, NaN, 'go', 'MarkerSize', 10,'MarkerFaceColor', 'g', 'LineWidth', 2, 'HandleVisibility', 'off');

% Construção de um gráfico que permite percepcionar a trajetória da bola
for i = 1:length(x)-1
    plot(x(i:i+1), y(i:i+1), 'r', 'LineWidth', 2, 'HandleVisibility', 'off');  % Gráfico da trajetória percorrida
    set(bola, 'XData', x(i), 'YData', y(i));   % Atualizar a posição da bola
    pause(0.005) % Pequena pausa para efeito de animação
end

hold off


