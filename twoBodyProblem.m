G = 6.67430e-11;
M = 5.972e24;
mu = G*M;
initialVelocity = sqrt(G*M/(1e6));
tspan = [0 1000000];
y0=[42*1e6 0 0 -initialVelocity 0 initialVelocity];
% f = @(t,y) [y(4);y(5);y(6);-mu*y(1)/(y(1)^2+y(2)^2+y(3)^2)^1.5;-mu*y(2)/(y(1)^2+y(2)^2+y(3)^2)^1.5;-mu*y(3)/(y(1)^2+y(2)^2+y(3)^2)^1.5];
f = @(t,y) [y(4);y(5);y(6);-mu*y(1)/(42*1e6)^3;-mu*y(2)/(42*1e6)^3;-mu*y(3)/(42*1e6)^3];
[t,y] = ode45(f,tspan,y0);
plot3(y(:,1),y(:,2),y(:,3));
% xlabel('X AXIS')
% ylabel('Y AXIS')
% zlabel('Z AXIS')
% plot(y(:,1),y(:,3))