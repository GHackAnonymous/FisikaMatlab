function [fqx, fqy,fqz] = Superposicion (varf,SPd, varQCalcular)
    fqx = zeros(3,1);
    fqy = zeros(3,1);
    fqz = zeros(3,1);
    for i=1:SPd
        if i ~= varQCalcular
            fqx = fqx + varf(i,1);
            fqy = fqy + varf(i,2);
            fqz = fqz + varf(i,3);
        end
    end