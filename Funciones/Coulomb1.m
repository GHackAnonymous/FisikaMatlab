function [ d, f, angulo ] = Coulomb1( var1q, var2q, var1px, var2px, var1py, var2py,kc )
%COULOMB1 Summary of this function goes here
%   Detailed explanation goes here

    %Calcular distancia
    d = sqrt((var2px-var1px)^2+(var2py-var1py)^2);

    %Calcular fuerza que ejercera las cargas
    f = kc*(var1q*var2q)/d^2;
    angulo = atan2(var2py-var1py,var2px-var1px) * 180/pi; % Para sacar en Grados (* 180/pi)

end