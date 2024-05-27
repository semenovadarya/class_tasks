n = 6;
m = 7;
k = n/m;
a = 1;

phi = 0:pi/48:pi*20;
rho = a*sin(k*phi);

[x, y] = pol2cart(phi, rho);

plot(x, y, LineWidth=2, Color=[251, 180, 174]./255);
axis equal;
grid on;

% n = 1000;
% 
% a = 0;
% b = 2*pi*5;
% phi = linspace(a, b, n);
% k = 2;
% rho = k*phi;
% [x, y] = pol2cart(phi, rho);
% plot(x, y);
% axis equal;
% grid on;