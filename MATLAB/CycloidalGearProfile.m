clear;
clc;

% Ecuacion para el perfil de un engrane cicloidal.

r = 60; % Distance between the ring gear rollers [mm]
q = 5; % Radius of the ring gear roller [mm]
N = 20; % Number of rollers of the ring gear;
e = 2; % Eccentricity value [mm]
t = 0:1:360

psi = atand( sind((1-N)*t)/ (r/e*N)-cosd((1-N)*t)  ) 


x = r*cosd(t) - q*cosd(t+psi) -  e*cosd(N*t);
y = -r*sind(t) - q*sind(t+psi) - e*sind(N*t);
plot(x,y)
xlim([-150 150]) 
ylim([-150 150])