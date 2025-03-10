function roboticarm = myroboticarm(L1,L2,L3,L4,L5,L6,L7,m,r,I1,I2,I3,I4,I5,I6,Jm,B,Tc,G,payload)
%This function crea un objeto del tipo SerialLink
% Con los parametros de mi brazo robotico

s = 'Rz(q1) Tz(L1) Tx(L2) Rx(q2) Tz(L3) Rx(q3) Tx(L4) Tz(L5) Rx(q4) Tx(L6) Rz(q5) Tz(L7) Rx(q6)';
dh = DHFactor(s);
roboticarm = eval(dh.command('roboticarm'))


roboticarm.links(1,1).m = m(1);
roboticarm.links(1,1).r = r(1,:);
roboticarm.links(1,1).I = I1;
roboticarm.links(1,1).Jm = Jm(1);
roboticarm.links(1,1).B = B(1);
roboticarm.links(1,1).Tc = Tc(1);
roboticarm.links(1,1).G = G(1);

roboticarm.links(1,2).m = m(2);
roboticarm.links(1,2).r = r(2,:);
roboticarm.links(1,2).I = I2;
roboticarm.links(1,2).Jm = Jm(2);
roboticarm.links(1,2).B = B(2);
roboticarm.links(1,2).Tc = Tc(2);
roboticarm.links(1,2).G = G(2);

roboticarm.links(1,3).m = m(3);
roboticarm.links(1,3).r = r(3,:);
roboticarm.links(1,3).I = I3;
roboticarm.links(1,3).Jm = Jm(3);
roboticarm.links(1,3).B = B(3);
roboticarm.links(1,3).Tc = Tc(3);
roboticarm.links(1,3).G = G(3);

roboticarm.links(1,4).m = m(4);
roboticarm.links(1,4).r = r(4,:);
roboticarm.links(1,4).I = I4;
roboticarm.links(1,4).Jm = Jm(4);
roboticarm.links(1,4).B = B(4);
roboticarm.links(1,4).Tc = Tc(4);
roboticarm.links(1,4).G = G(4);

roboticarm.links(1,5).m = m(5);
roboticarm.links(1,5).r = r(5,:);
roboticarm.links(1,5).I = I5;
roboticarm.links(1,5).Jm = Jm(5);
roboticarm.links(1,5).B = B(5);
roboticarm.links(1,5).Tc = Tc(5);
roboticarm.links(1,5).G = G(5);

roboticarm.links(1,6).m = m(6);
roboticarm.links(1,6).r = r(6,:);
roboticarm.links(1,6).I = I6;
roboticarm.links(1,6).Jm = Jm(6);
roboticarm.links(1,6).B = B(6);
roboticarm.links(1,6).Tc = Tc(6);
roboticarm.links(1,6).G = G(6);

roboticarm.payload(payload, [0 0 0]);
roboticarm.base = SE3(0, 0, 0); 

