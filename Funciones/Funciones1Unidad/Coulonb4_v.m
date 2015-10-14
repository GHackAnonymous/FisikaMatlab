function [ varf ] = Coulonb4_v( varQ, varP, SPd, varQCalcular,kc )
    %COULONB3V_V Summary of this function goes here
    %   Detailed explanation goes here
    varf = zeros(size(varP));
        for i=1:SPd
            if i ~= varQCalcular
                %Calcular distancia
                d = norm(varP(varQCalcular,:)-varP(i,:))+norm(varP(varQCalcular,:)-varP(i,:));

                %Calcular fuerza que ejercera las cargas
                varf(i,:) = kc*(varQ(i,:)*varQ(varQCalcular,:))/d^2;
            end
        end 
end
    