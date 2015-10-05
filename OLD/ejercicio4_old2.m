function [f3x, f3y] = ejercicio4()

%% DATUEN BLOKEA

% Constante de Coulomb (8.987x10^9)
c = 8.987e9; 

% Datos creados de manera aleatoria
Q = randi([-10 10],100,1);
P = randi([1 10],100,3);
QCalcular = 9;

%%

% f31 INDARRAREN KALKULUA
[d31, f31, r31, angulo31] = Fuerza(q1, q3, p1, p3, c)    


%%
% f32 INDARRAREN KALKULUA
[d32, f32, r32, angulo32] = Fuerza(q2, q3, p2, p3, c) 

%% 
% INDAR TOTALAREN KALKULUA

[f3x, f3y] = Superposicion(f31,f32) 

function [f] = Fuerza (varQ, varP, QCalcular,kc)
for i=1:100
    if i ~= QCalcular
        %Calcular distancia
        d = sqrt((varP(QCalcular)-varP(i))^2+(varP(QCalcular)-varP(i))^2);

        %Calcular fuerza que ejercera las cargas
        f = kc*(varQ(i)*varQ(QCalcular))/d^2;
        r = (varP(QCalcular)-varP(i)/d^2)*sign(varQ(i)*varQ(QCalcular));
        fVector = f*r;
        angulo = atan2(r(2),r(1)); % Para sacar en Grados (* 180/pi)
        
        fqx = f1(1) + f2(1);
        fqy = f1(2) + f2(2);
    end
end

function [fqx, fqy] = Superposicion (f1, f2)
fqx = f1(1) + f2(1);
fqy = f1(2) + f2(2);


