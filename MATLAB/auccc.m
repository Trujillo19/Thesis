clear;
clc;
import ETS3.*
L1 = 0.152;
L2 = 0.120;
L3 = 0.244;
L4 = 0.104;
L5 = 0.213;
L6 = -0.104;
L7 = 0.085;
E = Tz(L1)*Rz('q1')*Tx(L2)*Rx('q2')*Tz(L3)*Rx('q3')*Tx(L4)*Tz(L5)*Rx('q4')*Tx(L6)*Rz('q5')*Tz(L7)*Rx('q6');
E1 = Rz('q1')*Tz(L1)*Rx(90)*Rz('q2')*Tx(L2)*Rz('q3')*Tx(L3)*Rz('q4')*Tz(L4)*Rx(-90)*Rz('q5')*Tz(L5)*Rx(90)*Rz('q6')*Rx(-90)
qn = [0 0 0 0 0 0].*(pi/180);

E.plot(qn)
%E.teach