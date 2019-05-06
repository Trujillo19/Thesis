% Universidad Veracruzana
% Tesis
% Angel Trujillo
clear;
clc; 
%medidas del brazo robótico
L1 = 0.152;
L2 = -0.120;
L3 = 0.244;
L4 = 0.104;
L5 = 0.213;
L6 = -0.104;
L7 = 0.085;
% Parámetros dinpamicos
m = [1 2 3 4 5 6]; % Vector de masas de los eslabones 1 al 6.
r1 = [0; 0; 0;];     % Vector de centro de gravedad cada fila es un eslabon
I1 = [1 2 3; 2 4 5; 3 5 8;];
I2 = [0 0 0; 0 0 0; 0 0 0;];
I3 = [0 0 0; 0 0 0; 0 0 0;];
I4 = [0 0 0; 0 0 0; 0 0 0;];
I5 = [0 0 0; 0 0 0; 0 0 0;];
I6 = [0 0 0; 0 0 0; 0 0 0;];
% Posición inicial
qn = [0 0 0 0 0 0];
robotarm = myroboticarm(L1,L2,L3,L4,L5,L6,L7);

robotarm.links(1).m = m(1);
robotarm.links(1).r = r1;
robotarm.links(1).I = I1;
robotarm.links(1).Bm = 0.2;
robotarm.links(1).Tc = 0.2;

robotarm.links(2).m = m(1);
robotarm.links(2).r = r1;
robotarm.links(2).I = I1;

robotarm.links(2).m = m(1);
robotarm.links(2).r = r1;
robotarm.links(2).I = I1;

robotarm.links(3).m = m(1);
robotarm.links(3).r = r1;
robotarm.links(3).I = I1;

robotarm.links(4).m = m(1);
robotarm.links(4).r = r1;
robotarm.links(4).I = I1;

robotarm.links(5).m = m(1);
robotarm.links(5).r = r1;
robotarm.links(5).I = I1;

robotarm.links(6).m = m(1);
robotarm.links(6).r = r1;
robotarm.links(6).I = I1;

robotarm.links(1).dyn
robotarm.rne(qn, qn, qn);


