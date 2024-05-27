[Y,X,Z] = ndgrid(linspace(-2,2,200),linspace(-2,2,200),linspace(-2,2,200)); 

f = (X.^2+9/4*Y.^2+Z.^2-1).^3-X.^2.*Z.^3-9/80*Y.^2.*Z.^3; 

figure;
isosurface(X,Y,Z,f,.0); 
cmap = [255, 150, 200]./255;
colormap(cmap);
view(3); 
axis equal tight;
axis([-1.5 1.5 -1.5 1.5 -1.5 1.5]);
grid on;