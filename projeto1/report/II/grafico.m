function [] = grafico(f, iteradas, axis_, legend_)
    x_func = linspace(-2, 10, 100); 
    y_func = f(x_func);
    yiteradas = f(iteradas);
    
    figure;
    hold on;
    plot(x_func, y_func, 'k-', 'LineWidth', 2);
    scatter(iteradas, yiteradas, 20, 'r', 'filled');
    axis(axis_);
    xlabel('X');
    ylabel('Y');
    legend(legend_, 'iteradas');
    grid on;
    hold off;
end