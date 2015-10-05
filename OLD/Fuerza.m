function [varf] = Fuerza (varQ, varP, SPd, varQCalcular,kc)
    varf = zeros(size(varP));
    for i=1:SPd
        if i ~= varQCalcular
            %Calcular distancia
            d = norm(varP(varQCalcular,:)-varP(i,:))+norm(varP(varQCalcular,:)-varP(i,:));

            %Calcular fuerza que ejercera las cargas
            varf(i,:) = kc*(varQ(i,:)*varQ(varQCalcular,:))/d^2;

        end
    end