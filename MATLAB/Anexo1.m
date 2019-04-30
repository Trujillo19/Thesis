% Universidad Veracruzana
% Facultad de la Construccion y el Habitat
% T E S I S
% Diseno y construccion de un brazo robotico colaborativo para sistemas de
% manufactura flexible
% Angel Ernesto Trujillo Elizondo
% Anexo 1. Cinematica directa

clear;
clc;

% Datos iniciales
tetha = [0,0,0,0,0,0]; % Vector de angulos para el brazo robotico en grados
a1 = 10;
b1 = 10;
c1 = 10;
c2 = 10;
d1 = 10;
d2 = 10;
e1 = 10;
e2 = 10;
f1 = 10;
f2 = 10;
g1 = 10;

T0_1 = [1 0 0 0; 0 1 0 0; 0 0 1 a1; 0 0 0 1;];
T1_2 = [0 -sind(tetha(1)) cosd(tetha(1)) -b1*cosd(tetha(1)); 0 cosd(tetha(1)) sind(tetha(1)) b1*sind(tetha(1)); -1 0 0 0; 0 0 0 1;];
T2_3 = [-cosd(tetha(2)) -sind(tetha(2)) 0 c1*cosd(tetha(2)); -sind(tetha(2)) cosd(tetha(2)) 0 c1*sind(tetha(2)); 0 0 -1 -c2; 0 0 0 1;];
T3_4 = [-cosd(tetha(3)) -sind(tetha(3)) 0 -d1*cosd(tetha(3)); -sind(tetha(3)) cosd(tetha(3)) 0 d1*sind(tetha(2)); 0 0 -1 -d2; 0 0 0 1;];
T4_5 = [0 -sind(tetha(4)) cosd(tetha(4)) e1*cosd(tetha(4)); 0 cosd(tetha(4)) sind(tetha(4)) e1*sind(tetha(4)); -1 0 0 e2; 0 0 0 1;];
T5_6 = [0 -sind(tetha(5)) -cosd(tetha(5)) -f2*cosd(tetha(5)); 0 cosd(tetha(5)) -sind(tetha(5)) f2*sind(tetha(5)); 1 0 0 f1; 0 0 0 1;];
T6_7 = [cosd(tetha(6)) -sind(tetha(6)) 0 0; sind(tetha(6)) cosd(tetha(6)) 0 0;  0 0 1 g1; 0 0 0 1;];
T0_6 = T0_1*T1_2*T2_3%*T3_4*T4_5*T5_6*T6_7







