function [x_values, y_values] = RK2(ODE, step_size, final_val, xi, yi)
    % ODE solver
    % @param ODE The ODE to be solved in the form y' = f(x, y)
    % @param step_size aka h The distance on the x-axis between two
    % consecutive steps
    % @param final_val The x-value up to which the ODE is evaluated
    % @param xi The initial x-value
    % @param yi The initial y-value
    

    % Calculate the number of steps
    N = round((final_val - xi) / step_size);

    % Initialise output arrays
    x_values = zeros(1, N);
    y_values = zeros(1, N);
    x_values(1) = xi;
    y_values(2) = yi;

    % For euler
    % Run for N - 1 iterations
    %for i = 1 : N - 1
    %    y_values(i + 1) = y_values(i) + step_size * feval(ODE, x_values(i), y_values(i));
    %end
    
    % For heun
    % Run for N - 1 iterations
    for i = 1 : N - 1
       y_predictor = y_values(i) + step_size * feval(ODE, x_values(i), y_values(i));
       % Gradient at x (current x = x_values(i))
       grad_1 = feval(ODE, x_values(i), y_values(i));
       % Gradient at x + h (step size)
       grad_2 = feval(ODE, x_values(i) + step_size, y_predictor);
       
       % Average the gradient
       y_average = (grad_1 + grad_2) * 0.5;
       
       % Set new x and y
       y_values(i + 1) = y_values(i) + (step_size * y_average);
       x_values(i + 1) = x_values(i) + step_size;
    end
    
    % Return the output arrays
    
    
end

