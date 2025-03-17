function [iteradas, tabela] = tabela(f, x_0, epsilon, M)
    iteradas = metodoIterativo(f, x_0, epsilon, M);
    z = iteradas(end);
    e_n = abs(z - iteradas(1:end-1));
    
    num = e_n(2:end);   % e_1 ate e_{n+1}
    den = e_n(1:end-1); % e_0 ate e_n
    K_1 = num ./ den;
    K_2 = num ./ den.^2;
    K_3 = num ./ den.^3;
    
    n = (0:length(iteradas)-1)';
    col_e_n = [e_n; NaN];
    col_K_1 = [K_1; NaN; NaN];
    col_K_2 = [K_2; NaN; NaN];
    col_K_3 = [K_3; NaN; NaN];

    tabela = table(n, iteradas, col_e_n, col_K_1, col_K_2, col_K_3);
end