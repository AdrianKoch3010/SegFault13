function [x_values, y_values, z_values] = RK4(ODE_y, ODE_z, h, final_val, yi, zi)
    % ODE Coupled second order ODE solver
    % @param ODE_y The ODE to be solved in the form y' = f(x, y, z)
    % @param ODE_z The ODE to be solved in the form z' = g(x, y, z)
    % @param step_size aka h The distance on the x-axis between two
    % consecutive steps
    % @param final_val The x-value up to which the ODE is evaluated
    % @param yi The initial y-value
    % @param zi The initial z-value
    

    % Calculate the number of steps
    N = round(final_val / h);

    % Initialise output arrays
    x_values = zeros(1, N);
    y_values = zeros(1, N);
    z_values = zeros(1, N);
    % xi is defined to be 0
    x_values(1) = xi;
    y_values(2) = yi;
    z_values(1) = zi;
    
    
    for i = 1 : N - 1
        % Calculate the coefficients
        k0 = h * feval(ODE_y, x_values(i), y_values(i), z_values(1));
        l0 = h * feval(ODE_z, x_values(i), y_values(i), z_values(1));
        k1 = h * feval(ODE_y, x_values(i) + (0.5 * h), y_values(i) + (0.5 * k0), z_values(1) + (0.5 * l0));
        l1 = h * feval(ODE_z, x_values(i) + (0.5 * h), y_values(i) + (0.5 * k0), z_values(1) + (0.5 * l0));
        k2 = h * feval(ODE_y, x_values(i) + (0.5 * h), y_values(i) + (0.5 * k1), z_values(1) + (0.5 * l1));
        l2 = h * feval(ODE_z, x_values(i) + (0.5 * h), y_values(i) + (0.5 * k1), z_values(1) + (0.5 * l1));
        k3 = h * feval(ODE_y, x_values(i) + h, y_values(i) + k2, z_values(i) + l2);
        l3 = h * feval(ODE_z, x_values(i) + h, y_values(i) + k2, z_values(i) + l2);
        
        x_values(i + 1) = x_values(i) + h;
        y_values(i + 1) = y_values(i) + ((1.0 / 6.0) * (k0 + 2*k1 + 2*k2 + k3));
        z_values(i + 1) = z_values(i) + ((1.0 / 6.0) * (l0 + 2*l1 + 2*l2 + l3));
    end

end