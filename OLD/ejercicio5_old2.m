%% DATOS

Q = 3e-9;
Divisiones = 4;
L = 30e2;
q = 5e-9;
p = [0,7];
%d = 0;
%d2 = 0;
LMitad = L/2;
Modulos = zeros(Divisiones);
kc = 8.99e-9;
%% RESOLUCION

%d = L/Divisiones;
%d2 = d2 + d;

[Modulos(1)] = ModuloCampoElectrico(Q, Divisiones, sqrt((-LMitad)^2+p(2)^2), kc );
[Modulos(2)] = ModuloCampoElectrico(Q, Divisiones, sqrt((-LMitad/2)^2+p(2)^2), kc );
[Modulos(3)] = ModuloCampoElectrico(Q, Divisiones, sqrt((LMitad/2)^2+p(2)^2), kc );
[Modulos(4)] = ModuloCampoElectrico(Q, Divisiones, sqrt((LMitad)^2+p(2)^2), kc );

E1x = Modulos(1)*(p(2)/sqrt((-LMitad)^2+p(2)^2));
E2x = Modulos(2)*(p(2)/sqrt((-LMitad/2)^2+p(2)^2));
E3x = Modulos(3)*(p(2)/sqrt((LMitad/2)^2+p(2)^2));
E4x = Modulos(4)*(p(2)/sqrt((LMitad)^2+p(2)^2));

E1y = Modulos(1)*((-LMitad)/sqrt((-LMitad)^2+p(2)^2));
E2y = Modulos(2)*((-LMitad/2)/sqrt((-LMitad/2)^2+p(2)^2));
E3y = Modulos(3)*((LMitad/2)/sqrt((LMitad/2)^2+p(2)^2));
E4y = Modulos(4)*((LMitad)/sqrt((LMitad)^2+p(2)^2));

E1 = E1x + E1y
E2 = E2x + E2y
E3 = E3x + E3y
E4 = E4x + E4y

plot([E1,E2,E3,E4])