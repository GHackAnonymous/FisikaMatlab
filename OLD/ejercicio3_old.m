function [f3x, f3y] = ejercicio3()
%% DATUEN BLOKEA

% Constante de Coulomb (8.987x10^9)
c = 8.987e9; 

%Variables de la carga 1
q1 = 5e-9;
p1 = [0,0];

%Variables de la carga 2
q2 = -2e-9;
p2 = [4,0];

%Variables de la carga 3
q3 = 6e-9;
p3 = [4,3];

%%

% f31 INDARRAREN KALKULUA
[d31, f31, r31, angulo31] = Fuerza(q1, q3, p1, p3, c)    


%%
% f32 INDARRAREN KALKULUA
[d32, f32, r32, angulo32] = Fuerza(q2, q3, p2, p3, c) 

%% 
% INDAR TOTALAREN KALKULUA

[f3x, f3y] = Superposicion(f31,f32) 

function [d, f, r, angulo] = Fuerza (var1q, var2q, var1, var2,kc)

%Calcular distancia
d = sqrt((var2(1)-var1(1))^2+(var2(2)-var1(2))^2);

%Calcular fuerza que ejercera las cargas
f = kc*(var1q*var2q)/d^2;
r = (var2 - var1/d^2)*sign(var1q*var2q);
fVector = f*r;
angulo = atan2(r(2),r(1)); % Para sacar en Grados (* 180/pi)


function [fqx, fqy] = Superposicion (f1, f2)
fqx = f1(1) + f2(1);
fqy = f1(2) + f2(2);