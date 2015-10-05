function [varf] = Fuerza (varQ, varP, SPd, nq, varQCalcular,kc)
    varf = zeros(SPd,nq);
    r = zeros(2,1);
    for i=1:SPd
        if i ~= varQCalcular
            %Calcular distancia
            d = norm(varP(varQCalcular,:)-varP(i,:))+norm(varP(varQCalcular,:)-varP(i,:));

            %Calcular fuerza que ejercera las cargas
            varf(i,:) = kc*(varQ(i,:)*varQ(varQCalcular,:))/norm(d); % == varf(i,:) = kc*(varQ(i,:)*varQ(varQCalcular,:))/d^2;
            r = (varP(varQCalcular,:)-varP(i,:)/norm(d))*sign(varQ(i,:)*varQ(varQCalcular,:));
            fVector = varf(i,:)*r(:);
            %angulo = atan2(r(2,:),r(1,:)); % Para sacar en Grados (* 180/pi)
        end
    end