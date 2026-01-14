fun = @(x)x^2+2*x+5;
x0 = [1];
[x,fval] = fminunc(fun,x0);
x
fval