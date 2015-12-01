%-----------------------------------------------------
% Program  : deriv_esleckbl.m
% Author   : Boyd Esleck
% Date     : 12/3/15
% Purpose  : ADD THIS IDIOT
%-----------------------------------------------------

% todo
%----------------------------------------
% fix plotting
% add forward and backwards for endpoints



% Variables 
%

x = -4:2^-4:4;
deriv = (2*x + (1/3)).*cos(x.^2+(x/3));

h = 0.5;
range_5 = -4:h:4;
plus_f = func_esleckbl(range_5 + h);
minus_f = func_esleckbl(range_5 - h);
deriv_num_5 = (plus_f - minus_f)/(2*h);
deriv_actual_5 = (2*range_5 + (1/3)).*cos(range_5.^2+(range_5/3));
error_5 = deriv_num_5 - deriv_actual_5;

h = 0.25;
range_25 = -4:h:4;
plus_f = func_esleckbl(range_25 + h);
minus_f = func_esleckbl(range_25 - h);
deriv_num_25 = (plus_f - minus_f)/(2*h);
deriv_actual_25 = (2*range_25 + (1/3)).*cos(range_25.^2+(range_25/3));
error_25 = deriv_num_25 - deriv_actual_25;


h = 0.125;
range_125 = -4:h:4;
plus_f = func_esleckbl(range_125 + h);
minus_f = func_esleckbl(range_125 - h);
deriv_num_125 = (plus_f - minus_f)/(2*h);
deriv_actual_125 = (2*range_125 + (1/3)).*cos(range_125.^2+(range_125/3));
error_125 = deriv_num_125 - deriv_actual_125;


figure
subplot(2,1,1)
plot(x,deriv,range_5,deriv_num_5,range_25,deriv_num_25,range_125,deriv_num_125)
legend('Derivative','D_hf, h = 0.5','D_hf, h = 0.25','D_hf, h = 0.125')
title('Derivative and Approximations')

subplot(2,1,2)
plot(range_5,error_5,range_25,error_25,range_125,error_125)
legend('Error, h = 0.5','Error, h = 0.25','Error, h = 0.125')
title('Absolute Error of Each Approximation')