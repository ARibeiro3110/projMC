function duploPendulo(T, m1, m2, l1, l2, a1, b1, a2, b2)    
    g = 9.81;
    X0 = [a1; b1; a2; b2];  % Vetor de condições iniciais: [α1(0); α1'(0); α2(0); α2'(0)]
    
    [t, X] = ode45(@(t,X) sistemaEDO(X, m1, m2, l1, l2, g), [0, T], X0);
    
    alpha1 = X(:, 1);   % α1(t)
    dalpha1 = X(:, 2);  % α1'(t)
    alpha2 = X(:, 3);   % α2(t)
    dalpha2 = X(:, 4);  % α2'(t)
    
    % Plot dos ângulos α1(t) e α2(t) em função do tempo t
    figure;
    subplot(2, 1, 1);
    plot(t, alpha1, "b-", t, alpha2, "r-"); 
    xlabel("t(s)"); ylabel("\alpha_1(t), \alpha_2(t) (rad)");
    title("Ângulos \alpha_1(t) e \alpha_2(t)");
    legend("\alpha_1(t)", "\alpha_2(t)");
    grid on;
    
    % Plot das velocidades angulares α1'(t) e α2'(t) em função do tempo t
    subplot(2, 1, 2);
    plot(t, dalpha1, "b--", t, dalpha2, "r--");
    xlabel("t(s)"); ylabel("\alpha'_1(t), \alpha'_2(t) (rad/s)");
    title("Velocidades \alpha'_1(t) e \alpha'_2(t)");
    legend("\alpha'_1(t)", "\alpha'_2(t)");
    grid on;
end