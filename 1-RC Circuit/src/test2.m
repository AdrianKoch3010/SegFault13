for i=1:101
    input_x(i) = 0.0003*(i-1); 
    input_y(i) = 2.5*exp(-(input_x(i)/100)*10000);    
end
a7 = plot(input_x, input_y);
ylim([0, 5]);

