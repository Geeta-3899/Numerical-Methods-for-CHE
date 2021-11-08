f = @(x) x^3-x-1;
fprintf('Regula Falsi Method\n');
a = input('Enter value of a: ');
b = input('Enter value of b: ');
iter = 1;
err = abs(f(x0);
 
epsilon = 0.000001;
itermax = 50;
if f(a)*f(b) > 0
 fprintf('Initial Choices of a and b are wrong');
else
 while (iter<=itermax && err>=epsilon)
 x0 = (a*f(b)-b*f(a))/(f(b)-f(a));
 err = abs(f(x0));
 if f(a)*f(x0) < 0
 b = x0;
 else
 a = x0;
 end 
 end
end
fprintf('THe root: %f\nThe no of iterations: %d\n', x0,iter)