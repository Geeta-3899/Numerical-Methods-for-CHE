%Solution to ODE using RK4 Method
function RK4
f = input('\n Input Function (dy/dx) = '); % @(x,y)(y^2-x^2)/(y^2+x^2)
x(1) = input('\n Enter initial value of x = '); % x0 = 0
y(1) = input('\n Enyer initial value of y = '); % y0 = 1
h = input('\n Enter step size = '); %step size = 0.1
xf = input('\n Enter final value of x = ');
n = (xf-x(1))/h;
for i=1:n
 x(i+1) = x(i) +h;
 k1(i) = h*f( x(i),y(i));
 k2(i) = h*f( x(i)+h/2, y(i)+k1(i)/2);
 k3(i) = h*f( x(i)+h/2, y(i)+k2(i)/2);
 k4(i) = h*f( x(i)+h, y(i)+k3(i))
 y(i+1) = y(i)+ 1/6*(k1(i)+2*k2(i) +2*k3(i) +k4(i));
 y(i) = y(i+1);
 
 fprintf('\n yg = %f\n',y(i+1));
end
plot(x,y)
end