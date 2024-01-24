%% METODO DEL TRAPECIO
clc
clear all

%% DATOS DE ENTRADA
a=input('Límite intervalo A: ');
b=input('Límite intervalo B: ');
n=input('Número de particiones del intervalo [a,b]: ');

%% PROCEDIMIENTO COMPUTACIONAL
h=(b-a)/n;
s=0;
for i=1:n-1
    x(i)=a+i*h;
    s=s+f(x(i));
end
I=(h/2)*(f(a)+(2*s)+f(b));

%% DATO DE SALIDA
disp(I);






%% FUNCTION INTEGRACIÓN
function y=f(x)
    % y=exp(x^2);
     y=3*(x^2)+2*x+1; %350
    % y=1/(x-1)^3; %50
    % y= 1/sqrt(1+x);
    % y=sin(x)^2;
    % y=tan(x)^2;
    % y=sin(x)*cos(x);
    % y=cos(x)*exp(sin(x));
end
