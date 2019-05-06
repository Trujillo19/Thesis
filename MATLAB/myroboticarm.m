function roboticarm = myroboticarm(a1,b1,c1,d1,d2,e1,f1)
%This function crea un objeto del tipo SerialLink
% Con los parametros de mi brazo robotico
L1 = a1;
L2 = b1;
L3 = c1;
L4 = d1;
L5 = d2;
L6 = e1;
L7 = f1;
s = 'Tz(L1).Rz(q1).Tx(L2).Rx(q2).Tz(L3).Rx(q3).Tx(L4).Tz(L5).Rx(q4).Tx(L6).Rz(q5).Tz(L7).Rx(q6)';
dh = DHFactor(s);
roboticarm = eval(dh.command('roboticarm') )


