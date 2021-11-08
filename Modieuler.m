%Solution to ODE using Modified Euler's Method
function euler
f = input('\n Input Function (dy/dx) = '); % @(x,y)(y^2-x^2)/(y^2+x^2)
x(1) = input('\n Enter initial value of x = '); % x0 = 0
y(1) = input('\n Enyer initial value of y = '); % y0 = 1
h = input('\n Enter step size = '); %step size = 0.1
xf = input('\n Enter final value of x = ');
n = (xf-x(1))/h;
for i=1:n
 x(i+1) = x(i) +h;
 y(i+1) = y(i) + h*f(x(i),y(i));
 
 
 yg(i) = y(i) + h/2*( f(x(i),y(i)) + f( x(i),y(i+1)) );
 y(i) = yg(i);
 fprintf('\n yg(i) = %f\n',yg(i));
end
plot(x,y)
end