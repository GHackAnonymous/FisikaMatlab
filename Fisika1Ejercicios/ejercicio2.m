%% DATUEN BLOKEA

% Constante de Coulomb (8.987x10^9)
c = 8.987e9; 

%Variables de la carga 1
q1 = 5e-9;
p1 = 0+0i;

%Variables de la carga 2
q2 = -2e-9;
p2 = 4+0i;

%Variables de la carga 3
q3 = 6e-9;
p3 =4+3i;

%%

% f31 INDARRAREN KALKULUA
[d31,r31, f31, fVector31, angulo31] = Coulomb2(q1, q3, p1, p3, c)    


%%
% f32 INDARRAREN KALKULUA
[d32,r32, f32, fVector32, angulo32] = Coulomb2(q2, q3, p2, p3, c) 

%% 
% INDAR TOTALAREN KALKULUA

%Suma de vectores
f3x = f31 + f32
f3y = r31 + r32