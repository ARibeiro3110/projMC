
f = @(t) (1./log(t));
a = 2;
b = 10^(20);  % alterar o valor de k = 1,2,3,...,20,... 
             % consoante o pretendido
n = 20;
epsilon = 0.5*10^(-16);

I = romberg(f,a,b,n,epsilon)
