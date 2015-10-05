function [ fx,fy ] = Coulomb1_FuerzaTotal( f, varpx, varpy, d )
    %COULOMB1_FUERZATOTAL Summary of this function goes here
    %   Detailed explanation goes here

    % INDAR TOTALAREN KALKULUA
    fx = f*cos(varpx/d);  
    fy = f*sin(varpy/d);

end