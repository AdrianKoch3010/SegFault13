ODE = @(x,y) ((5*sawtooth(2*pi*(10)*x)-y)*10);
figure; hold on;
[out_x4, out_y4] = RK2N(ODE, 0.001, 0.5, 0, 5, 0);
a4 = plot(out_x4, out_y4);

[out_x5, out_y5] = RK2N(ODE, 0.001, 0.5, 0, 5, 0.5);
a5 = plot(out_x5, out_y5);

[out_x6, out_y6] = RK2N(ODE, 0.001, 0.5, 0, 5, 0.25);
a6 = plot(out_x6, out_y6);

for i=1:2001
    input_x(i) = 0.00025*(i-1); 
    input_y(i) = 5*sawtooth(2*pi*(10)*input_x(i));    
end
a7 = plot(input_x, input_y);

legend([a4; a5; a6; a7], [M1; M2; M3; M4]);
hold off;
title('Test 12: Sawtooth, period 100us');
xlabel('Time/t');
ylabel('Voltage/V');