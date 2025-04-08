function pi = li_funcao(k)

format long

    n = 10^k;
    pi = integral(@(t) 1./log(t), 2, n);
end

% Input: k
% Output: Li(10^k) = integral(@(t) 1./log(t), 2, 10^k)