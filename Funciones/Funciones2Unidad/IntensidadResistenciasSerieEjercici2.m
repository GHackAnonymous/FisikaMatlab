function [ IA,Vr, Pr, Pt ] = IntensidadResistenciasSerie( Rbs, V, R1 ,R2 ,R3 )
%INTENSIDADRESISTENCIASSERIE Summary of this function goes here
%   Detailed explanation goes here
    Pt = 0;
    
    IA = (V/Rbs);

       iR1 = IA;
        
        Vr1 = (iR1*R1);
        Vr3 = (V - Vr1);
        Vr2 = Vr3; 
        
        Vr =[Vr1, Vr2, Vr3];
        
        iR2 = (Vr2/R2);
        iR3 = (Vr3/R3);
        
        IR = [iR1, iR2, iR3];
        R = [R1, R2, R3];
        
%         Pr1 = ((iR1^2)*R1);
%         Pr2 = ((iR2^2)*R2);
%         Pr2 = ((iR3^2)*R3);

        for i=1:length(IR)
            Pr(i) = ((IR(i)^2)*R(i));
            Pt = Pt + Pr(i);
        end
end

