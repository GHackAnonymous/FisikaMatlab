clear all
clc

%%Barra batek karga batean eragiten duen indarra
%Konstanteak
kc = 8.99e9;

%Barra
Q = 3;
L = 30;
pLx = 0;
n = 20;

%Karga
q = 5;
pqx= 7;
pqy = 0;

yMax = ((L/(2*n))*((2*n)-1)-(L/2));
y0 = -yMax;
KargenArtekoAltuera = (L/2)-yMax;

y = [y0 : KargenArtekoAltuera : yMax];
Qbarra = Q/n;

[F] = BarraKargatuaFor (kc,pLx, pqx, pqy, Qbarra, q, y, n)




