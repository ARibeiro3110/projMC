function animarDuploPendulo(T, m1, m2, l1, l2, a1, b1, a2, b2)
    g = 9.81;
    X0 = [a1; b1; a2; b2];

    [t, X] = ode45(@(t, X) sistemaEDO(X, m1, m2, l1, l2, g), [0 T], X0);

    alpha1 = X(:,1);
    alpha2 = X(:,3);

    % Coordenadas das massas
    x1 =  l1 * sin(alpha1);
    y1 = -l1 * cos(alpha1);
    x2 = x1 + l2 * sin(alpha2);
    y2 = y1 - l2 * cos(alpha2);

    figure;
    axis equal;
    axis([-l1-l2, l1+l2, -l1-l2, l1+l2]);
    grid on;
    title('Animação do sistema de dois pêndulos acoplados');
    xlabel('x(m)');
    ylabel('y(m)');
    hold on;

    % Animação
    for i = 1:2:length(t) % Ajustar o passo para controlar a velocidade
        cla;
        plot([0 x1(i)], [0 y1(i)], 'b-', 'LineWidth', 2);
        plot([x1(i) x2(i)], [y1(i) y2(i)], 'r-', 'LineWidth', 2);
        plot(x1(i), y1(i), 'bo', 'MarkerSize', 10, 'MarkerFaceColor', 'b');
        plot(x2(i), y2(i), 'ro', 'MarkerSize', 10, 'MarkerFaceColor', 'r');
        plot(0, 0, 'ko', 'MarkerSize', 5, 'MarkerFaceColor', 'k');
        axis equal;
        axis([-l1-l2, l1+l2, -l1-l2, l1+l2]);
        drawnow;
    end
end
