format long

% Dados do problema
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
 
 % Reta de regressão
 reta = polyfit(log_h, log_E, 1);

 % Representação gráfica dos dados e das funções de ajustamento
 x = linspace(-14,2);
 y = polyval(reta,x);
 figure
 plot(log_h,log_E,'ro','MarkerSize', 5)
 hold on
 plot(x,y,'b-')
 grid on
 hold off
 xlabel('log(h)');
 ylabel('log(E)');
 title('Regressão linear para n = 8')
 legend('Dados', 'Regressao linear');