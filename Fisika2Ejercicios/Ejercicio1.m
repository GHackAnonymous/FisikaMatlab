clear
clc

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%                                 %
% Calcular valores en un circuito %
%                                 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% DATOS

V = 10; %voltios
%R1 = 5; %5KOmnios R2 = 5; %5KOmnios

R = [5,5];

%% Ereagiketak

fprintf('Errsistentzia Baliokidea');
[Rbs] = ResistenciaBaliokideaSerie(R)

fprintf('Intensidad y potencias + Potencia total');
[ IA,Vr, Pr, Pt ] = IntensidadResistenciasSerie(Rbs,V,R)





