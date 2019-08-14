% Universidad Veracruzana
% Tesis
% Angel Trujillo
clear;
clc; 
%Medidas del brazo robotico
L1 = 0.152;
L2 = 0.104;
L3 = 0.244;
L4 = 0.104;
L5 = 0.213;
L6 = -0.104;
L7 = 0.085;
% Parametros dinamicos
m = [0 1 1 0.8 0.8 0.2]; % Vector de masas de los eslabones 1 al 6.
r = [0 0 0; 0 0 0; 0 0 0; 0 0 0; 0 0 0; 0 0 0];     % Vector de centro de gravedad cada fila es un eslabon
I1 = [0 0 0; 0 0 0; 0 0 0;];
I2 = [0 0 0; 0 0 0; 0 0 0;];
I3 = [0 0 0; 0 0 0; 0 0 0;];
I4 = [0 0 0; 0 0 0; 0 0 0;];
I5 = [0 0 0; 0 0 0; 0 0 0;];
I6 = [0 0 0; 0 0 0; 0 0 0;];
Jm = [0.002 0.002 0.002 3.3e-05 3.3e-05 3.3e-05]; % Motor inertia
B = [0.00148 0.000817 0.00138 7.12e-05 8.26e-05 3.67e-05];  %  Motor viscous friction
Tc = [0.395 0.126 0.132 0.0112 0.00926 0.00396]; %link coulomb friction
G = [1 1 1 1 1 1]; %Gear ratio
payload = 2;
qn = [0 0 0 0 0 0];
qz = [0 -90 0 0 0 0];
q = jtraj(qz,qn,10);
q1 

robotarm = myroboticarm(L1,L2,L3,L4,L5,L6,L7,m,r,I1,I2,I3,I4,I5,I6,Jm,B,Tc,G,payload);

torque = robotarm.rne(qz, [0 1 0 0 0 0], [0 0 0 0 0 0])
robotarm.teach



