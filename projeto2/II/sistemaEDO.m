function dXdt = sistemaEDO(X, m1, m2, l1, l2, g)    
    alpha1 = X(1);           % Ângulo α1
    dalpha1 = X(2);          % Velocidade α1'
    alpha2 = X(3);           % Ângulo α2
    dalpha2 = X(4);          % Velocidade α2'
    
    theta = alpha1 - alpha2;
    
    % Valores utilizados no cálculo matricial
    detM = l1 * l2 * ( (m1+m2) - m2*cos(theta)^2 );
    A = l2;
    B = -m2 * l2 * cos(theta);
    C = -l1 * cos(theta);
    D = (m1 + m2) * l1;
    c1 = -m2 * l2 * dalpha2^2 * sin(theta) - (m1 + m2) * g * sin(alpha1);
    c2 = l1 * dalpha1^2 * sin(theta) - g * sin(alpha2);
    
    % Expressão obtida da 1.ª equação do sistema isolada para α1''
    d2alpha1 = (A*c1 + B*c2) / detM;
    
    % Expressão obtida da 2.ª equação do sistema isolada para α2''
    d2alpha2 = (C*c1 + D*c2) / detM;
    
    % Devolve o vetor de derivadas [α1'; α1''; α2'; α2'']:
    dXdt = [dalpha1; d2alpha1; dalpha2; d2alpha2];
end