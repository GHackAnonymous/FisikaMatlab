function [f3x, f3y] = ejercicio4()

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
[f] = Fuerza(Q, P, QCalcular, c) 

%% 
% INDAR TOTALAREN KALKULUA

[fx, fy, fz] = Superposicion(f, QCalcular) 

function [f] = Fuerza (varQ, varP, varQCalcular,kc)
for i=1:100
    if i ~= varQCalcular
        %Calcular distancia
        d = sqrt((varP(varQCalcular)-varP(i))^2+(varP(varQCalcular)-varP(i))^2);

        %Calcular fuerza que ejercera las cargas
        f(i) = kc*(varQ(i)*varQ(varQCalcular))/d^2;
        r = (varP(varQCalcular)-varP(i)/d^2)*sign(varQ(i)*varQ(varQCalcular));
        fVector = f(i)*r;
        angulo = atan2(r(2),r(1)); % Para sacar en Grados (* 180/pi)
    end
end

function [fqx, fqy,fqz] = Superposicion (varf, varQCalcular)
for i=1:100
    if i ~= varQCalcular
        fqx = fqx + varf(i,1);
        fqy = fqy + varf(i,2);
        fqz = fqz + varf(i,3);
    end
end


