% Universidad Veracruzana
% Tesis
% Angel Trujillo

clear;
clc; 
L1 = 0.152;
L2 = -0.120;
L3 = 0.244;
L4 = 0.104;
L5 = 0.213;
L6 = -0.104;
L7 = 0.085;
qn = [0 0 0 0 0 0];
robotarm = myroboticarm(L1,L2,L3,L4,L5,L6,L7);
robotarm.plot(qn)
T = robotarm.fkine(qn)
qi = robotarm.ikine(T)