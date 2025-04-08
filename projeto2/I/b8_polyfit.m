format long

erros = [0.141592653589793;
         0.041592653589793;
         0.010416183001558;
         0.002604159098704;
         0.000651041548404;
         0.000162760414818;
         0.000040690104138;
         0.000010172526041;
         0.000002543131511];

j = linspace(0,8,9);

h = 1./(2.^j);

log_h = log(h);
log_E = log(erros);

pol = polyfit(log_h, log_E, 1);

pol

fprintf('A ordem de convergência estimada p é aproximadamente: %.15f\n', pol(1));

% Output: 
% pol =
%   1.984188170912992  -1.853917939033811

% A ordem de convergência estimada p é aproximadamente: 1.984188170912992