clear;
clc;
poly = [1, 0, 0, -1];
num = 300;
colors = zeros(num, num); 

root = roots(poly);

[x, y] = meshgrid(linspace(-2, 2, num), linspace(-2, 2, num));
comp = x + 1i*y;

newtonFunc = @(z) z - polyval(poly, z) / polyval(polyder(poly), z);

for n = 1:num
    for m = 1:num
        z = comp(n, m);
        for iter = 1:100
            z = newtonFunc(z);
            [~, idx] = min(abs(z - root));
            if abs(polyval(poly, z)) < 0.001
                colors(n, m) = idx;
                break;
            end
        end
    end
end

imagesc(colors);
colormap('cool');
axis equal;
axis off;