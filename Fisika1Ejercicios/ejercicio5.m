clear all
clc
%% DATOS

Q = 3;
QDividido = 0;
Divisiones = 20;
L = 30;
q = 5;
p = [0,7];
E = 0;
% H = zeros(Divisiones,1);
% Ex = zeros(Divisiones,1);
kc = 8.99e9;
%% RESOLUCION

for i = 1:Divisiones
    H(i) = (L/(2*Divisiones))*(2*i-1); % H(i) = (L/2*Divisiones)*(2*i-1); OJO!!!!! LOS PARENTESISSS, HACE PRIMERO LA DIVISION
    QDividido = Q/Divisiones;
    
    pitagoras = sqrt(H(i)^2+p(2)^2);
    
    [Ex(i)] = ModuloCampoElectrico(QDividido,H(i), p(2),pitagoras, q, kc );
    
    E = E + Ex(i);
    
%     T=1;
%     np=200;
%     t = linspace(0,5,np);
%     plot(t,Ex(i))
end

E

ECOMPROBAR = kc*(Q*q)/((p(2)*sqrt(p(2)^2+L^2)))

