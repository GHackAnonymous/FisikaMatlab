%% DATUEN BLOKEA

% Constante de Coulomb (8.987x10^9)
c = 8.987e9; 

%Variables de la carga 1
q1 = 5e-9;
p1x = 0e-2;   p1y = 0e-2;

%Variables de la carga 2
q2 = -2e-9;
p2x = 4e-2;   p2y = 0e-2;

%Variables de la carga 3
q3 = 6e-9;
p3x = 4e-2;   p3y = 3e-2;

%%

% f31 INDARRAREN KALKULUA
[d31, f31, angulo31] = Coulomb1(q1, q3, p1x, p3x, p1y, p3y, c) 


%%
% f32 INDARRAREN KALKULUA
[d32, f32, angulo32] = Coulomb1(q2, q3, p2x, p3x, p2y, p3y, c) 

%% 
% INDAR TOTALAREN KALKULUA

%Componentes de la fuerza Fq3(q1)
[f31x, f31y] = Coulomb1_FuerzaTotal(f31, p3x, p3y, d31) 

%Componentes de la fuerza Fq3(q2)
[f32x, f32y] = Coulomb1_FuerzaTotal(f32, p2x, p2y, d32)

%Suma de vectores
f3x = f31x + f32x
f3y = f31y + f32y

%Modulo
f3 = sqrt(f3x^2+f3y^2)

%Angulo
Angulof3 = atan2(f3y,f3x)