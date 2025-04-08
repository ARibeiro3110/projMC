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
         0.000002543131511;
         0.000000635782878;
         0.000000158945721;
         0.000000039736428;
         0.000000009934108;
         0.000000002483528;
         0.000000000620884;
         0.000000000155218;
         0.000000000038807;
         0.000000000009701;
         0.000000000002425];

j = linspace(0,18,19);

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
 title('Regressão linear para n = 18')
 legend('Dados', 'Regressao linear');
 