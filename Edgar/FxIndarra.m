function Fx = FxIndarra (kc, pLx, pqx, A, pqy, Qbarra, q)

d = sqrt((pLx-pqx)^2+(A-pqy)^2);

r = sign(Qbarra*q);

angeluaA = atan2(A-pqy, pLx-pqx);

angeluaB = 180-angeluaA;

F = ((kc*abs(Qbarra*q))/d^2)*r;

Fx = F*cos(angeluaB);