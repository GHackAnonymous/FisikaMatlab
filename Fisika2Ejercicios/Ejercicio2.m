clear
clc

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%                                 %
% Calcular valores en un circuito %
%                                 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% DATOS

V = 10; %voltios
R1 = 5;
R2 = 5; %5KOmnios 
R3 = 5; %5KOmnios

%R = [5];

%% Ereagiketak

R2yR3 = ((R2*R3)/(R2+R3));
R = [R1,R2yR3];


fprintf('Errsistentzia Baliokidea');
[Rbs] = ResistenciaBaliokideaSerie(R)

fprintf('Intensidad y potencias + Potencia total');
[ IA,Vr, Pr, Pt ] = IntensidadResistenciasSerieEjercici2(Rbs,V,R1 ,R2 ,R3)





