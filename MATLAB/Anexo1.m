clear;
clc;
import ETS3.*
% Vector de posicion de articulaciones en grados
q = [0,0,0,0,0,0]
% Distancias del robot
a1=0.152;
b1=-0.120;
c1=0.244;
d1=0.093;
d2=0.213;
e1=-0.104;
f1=0.083;
% Matriz de transformacion homogenea
E = Tz(a1)*Rz('q1')*Tx(b1)*Rx('q2')*Tz(c1)*Rx('q3')*Tx(d1)*Tz(d2)*Rx('q4')*Tx(e1)*Rz('q5')*Tz(f1)*Rx('q6');
% Cinematica directa
E.fkine(q)
