% Universidad Veracruzana
% Facultad de la Construccion y el Habitat
% T E S I S
% Diseno y construccion de un brazo robotico colaborativo para sistemas de
% manufactura flexible
% Angel Ernesto Trujillo Elizondo
% Anexo 1.

clear;
clc;

tetha = [90,0,0,0,0,0]; % Vector de angulos para el brazo robotico en grados

T0_1 = [0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0;]
T1_2 = [0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0;]
T2_3 = [0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0;]
T3_4 = [0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0;]
T4_5 = [0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0;]
T5_6 = [0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0;]

T0_6 = T0_1*T1_2*T2_3*T3_4*T4_5*T5_6

x=sind(90)
% Mas codigo aqui.




