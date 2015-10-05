function [F] = BarraKargatuaFor (kc, pLx, pqx, pqy, Qbarra, q, y, n)

F = 0;

for j = 1:n;
    A = y(:,j);
    
    [Fx] = FxIndarra (kc, pLx, pqx, A, pqy, Qbarra, q);
    
    F = F + Fx;
    
end
    