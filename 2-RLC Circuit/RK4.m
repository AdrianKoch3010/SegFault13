function [x_values, y_values, z_values] = RK4(ODE_y, ODE_z, step_size, final_val, yi, zi)
    % ODE Coupled second order ODE solver
    % @param ODE_y The ODE to be solved in the form y' = f(x, y, z)
    % @param ODE_z The ODE to be solved in the form z' = g(x, y, z)
    % @param step_size aka h The distance on the x-axis between two
    % consecutive steps
    % @param final_val The x-value up to which the ODE is evaluated
    % @param yi The initial y-value
    % @param zi The initial z-value
    

    % Calculate the number of steps
    N = round(final_val / step_size);

    % Initialise output arrays
    x_values = zeros(1, N);
    y_values = zeros(1, N);
    z_values = zeros(1, N);
    % xi is defined to be 0
    x_values(1) = xi;
    y_values(2) = yi;
    z_values(1) = zi;
    
    
    for i = 1 : N - 1
        k0 = step_size * feval(ODE_y, x_values(i), y_values(i), z_values(1));
        l0 = step_size * feval(ODE_z, x_values(i), y_values(i), z_values(1));
        k1 = step_size * feval(ODE_z, x_values(i), y_values(i), z_values(1));
        l1 = 
        k2 =
        l2 =
        k3 =
        l3 =
        
    end



end