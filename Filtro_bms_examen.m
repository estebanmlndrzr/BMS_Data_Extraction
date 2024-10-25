clc;
clear;
close all;

A=readtable("orionbmsBRANDON_log_2024-10-17-18-20-51.csv",'VariableNamingRule','preserve');

t=0.1:0.1:67.7;

Amp=table2array(A(:,1));

Amp_F = lowpass(Amp, 15*pi/180,10 );

subplot(2,1,1);
plot(t,Amp);
xlabel('Time (s)');
ylabel('Amperes');
title('Original Pack Amperage (Current)');
subplot(2,1,2);
plot(t,Amp_F,'g');
xlabel('Time (s)');
ylabel('Amperes');
title('Filtred Pack Amperage (Current)')

