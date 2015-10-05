function [ vare ] = ModuloCampoElectrico( varQ,varH, varpx, vard, varq, kc )
    %CAMPOELECTRICO Summary of this function goes here
    %   Detailed explanation goes here

    F = kc*(abs(varQ*varq))/(vard^2);
    
%     angulo = atan2(varH-0,0-varpx);
    
    angulo = atan2(varH,varpx);
    
%     angulo = (pi/2) - angulo;
    
    vare = F * cos(angulo);

end

