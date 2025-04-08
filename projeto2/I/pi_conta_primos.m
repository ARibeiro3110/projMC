function count = pi_conta_primos(k)
    
format long

    n = 10^k;
    count = length(primes(n));
end

% Input: k
% Output: pi(10^k)

