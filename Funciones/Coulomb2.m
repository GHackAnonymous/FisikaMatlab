function [ d, r, f, fVector, angulo ] = Coulomb2( var1q, var2q, p1, p2, kc )
    %COULOMB2 Summary of this function goes here
    %   Detailed explanation goes here

    %Calcular distancia
    d = angle(p2-p1);

    %Calcular fuerza que ejercera las cargas
    r = (p2-p1)/d;
    f = kc*(var1q*var2q)/d^2;
    fVector = f*r;
    angulo = angle(p2-p1); % Para sacar en Grados (* 180/pi)

end