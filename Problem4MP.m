H = input('Enter initial height in meters:');
V = input('Enter initial velocity in m/s:');
A = input('Enter firing angle with respect to the x-axis (in degrees):');
Ax = input('Enter horizontal acceleration in m/s^2:');
Ay = input('Enter vertical acceleration in m/s^2:');
if Ay==0,
    Ay = input('Error!/nEnter vertical acceleration in m/s^2:');
end
Vx = cosd(A)*V;
Vy = sind(A)*V;
X(1) = 0;
Y(1) = H;
t = 0;
z = 1;
while y>=0,
    t = t+0.1;
    z = z+1;
    X(z) = Vx*t+(1/2)*Ax*(t^2);
    Y(z) = Vy*t+(1/2)*Ay*(t^2)+H;
end
plot(X,Y,'-r')
xlabel('Horizontal Distance')
ylabel('Vertical Distance')
title('Path of Projectile')