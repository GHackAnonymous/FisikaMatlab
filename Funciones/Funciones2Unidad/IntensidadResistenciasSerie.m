function [ IA,Vr, Pr, Pt ] = IntensidadResistenciasSerie( Rbs, V, R )
%INTENSIDADRESISTENCIASSERIE Summary of this function goes here
%   Detailed explanation goes here
    Pt = 0;
    
    IA = (V/Rbs);
    
    for i = 1:length(R)
        Vr(i) = (IA*R(i));
        
        Pr(i) = ((IA^2)*R(i));
        
        Pt = Pt + Pr(i);
        
    end

end

