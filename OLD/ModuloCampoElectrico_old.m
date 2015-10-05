function [ vare ] = ModuloCampoElectrico( varQ, varDivisiones, vard, kc )
    %CAMPOELECTRICO Summary of this function goes here
    %   Detailed explanation goes here

    vare = kc*angle(varQ/varDivisiones)/vard^2;

end

