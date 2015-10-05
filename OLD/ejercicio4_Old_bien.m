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
[f] = Fuerza(Q, P, 100, 3, QCalcular, c) 

%% 
% INDAR TOTALAREN KALKULUA

[fx, fy, fz] = Superposicion(f, 100, QCalcular) 

function [varf] = Fuerza (varQ, varP, SPd, nq, varQCalcular,kc)
    varf = zeros(SPd,nq);
    r = zeros(2,1);
    for i=1:SPd
        if i ~= varQCalcular
            %Calcular distancia
            d = norm(varP(varQCalcular,:)-varP(i,:))+norm(varP(varQCalcular,:)-varP(i,:));

            %Calcular fuerza que ejercera las cargas
            varf(i,:) = kc*(varQ(i,:)*varQ(varQCalcular,:))/norm(d);
            r = (varP(varQCalcular,:)-varP(i,:)/norm(d))*sign(varQ(i,:)*varQ(varQCalcular,:));
            fVector = varf(i,:)*r(:);
            %angulo = atan2(r(2,:),r(1,:)); % Para sacar en Grados (* 180/pi)
        end
    end

function [fqx, fqy,fqz] = Superposicion (varf,SPd, varQCalcular)
    fqx = zeros(3,1);
    fqy = zeros(3,1);
    fqz = zeros(3,1);
    for i=1:SPd
        if i ~= varQCalcular
            fqx = fqx + varf(i,1);
            fqy = fqy + varf(i,2);
            fqz = fqz + varf(i,3);
        end
    end


