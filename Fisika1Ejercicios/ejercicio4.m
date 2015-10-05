%% DATUEN BLOKEA

% Constante de Coulomb (8.987x10^9)
c = 8.987e9; 

% Datos creados de manera aleatoria
Q = randi([-10 10],100,1); % creo un array de numeros randon para simular cargas
P = randi([1 10],100,3); % creo un array de numeros randon para simular puntos
f = zeros(100,3); % creo en array que fuarda las fuerzas
QCalcular = 9; % Variable de las carga acalcular

%%

% f INDARRAREN KALKULUA
[f] = Coulonb4_v(Q, P, length(Q), QCalcular, c) 

%% 
% INDAR TOTALAREN KALKULUA

%[fx, fy, fz] = Coulomb4_Superposicion(f, length(Q), 3, QCalcular) 
[fx, fy, fz] = Coulomb4_Superposicion(f, length(Q), QCalcular) 

