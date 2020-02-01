%____________test with step function_________%

y = 2.5; %t>=0
y = 0; %t< 0

%%
%_____________test with impulse and decay signal___%

T = 100; %microseconds
y = @(t,y) 2.5*(exp((-t^2)/T));
y(0) = 2.5;

%_______test with impulse and decay signal 2______%

T = 100; %microseconds
y = @(t,y) 2.5*(exp(-t/T));
y(0) = 2.5;




%%

%need to decide how large tf should be%

%_____test with sine wave and time period 100microsec__%

y = @(t,y) 5*sin(2*pi*(10^4)*t);

%_____test with sine wave and time period 10microsec__%

y = @(t,y) 5*sin(2*pi*(10^5)*t);

%_____test with sine wave and time period 500microsec__%

y = @(t,y) 5*sin(((2*pi*(10^4))/5 )*t);

%_____test with sine wave and time period 1000microsec__%

y = @(t,y) 5*sin(2*pi*(10^3)*t);

%%

%need to decide how large tf should be%


%_____test with square wave and time period 100microsec__%

y = @(t,y) 5*square(2*pi*(10^4)*t);

%_____test with square wave and time period 10microsec__%

y = @(t,y) 5*square(2*pi*(10^5)*t);

%_____test with square wave and time period 500microsec__%

y = @(t,y) 5*square(((2*pi*(10^4))/5 )*t);

%_____test with square wave and time period 1000microsec__%

y = @(t,y) 5*square(2*pi*(10^3)*t);

%%


%need to decide how large tf should be%


%_____test with sawtooth wave and time period 100microsec__%

y = @(t,y) 5*sawtooth(2*pi*(10^4)*t);

%_____test with sawtooth wave and time period 10microsec__%

y = @(t,y) 5*sawtooth(2*pi*(10^5)*t);

%_____test with sawtooth wave and time period 500microsec__%

y = @(t,y) 5*sawtooth(((2*pi*(10^4))/5 )*t);

%_____test with sawtooth wave and time period 1000microsec__%

y = @(t,y) 5*sawtooth(2*pi*(10^3)*t);
