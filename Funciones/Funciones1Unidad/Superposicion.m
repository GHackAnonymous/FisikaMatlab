function [fqx, fqy,fqz] = Superposicion (varf,SPd, varQCalcular)
    fqx = zeros(size(varf(:,1)));
    fqy = zeros(size(varf(:,1)));
    fqz = zeros(size(varf(:,1)));
    for i=1:SPd
        if i ~= varQCalcular
            fqx = fqx + varf(i,1);
            fqy = fqy + varf(i,2);
            fqz = fqz + varf(i,3);
        end
    end