%% METODO DE SIMPSON 1/3
clc
clear all

a=input('Limite de integración A: ');
b=input('Limite de integración B: ');
n=input('Número de particiones : ');

%% PROCEDIMIENTO COMPUTACIONAL
h=(b-a)/n;
s1=0;
s2=0;

for i=1:n-1
    x(i)=a+i*h;
    if mod(i,2)==0
        s2=s2+f(x(i));
    else
        s1=s1+f(x(i));
    end
end

I=(h/3)*(f(a)+(4*s1)+(2*s2)+f(b));

%% DATO DE SALIDA
disp(I);

function y=f(x)
    % y=((-x^2)+8*x-12);
    % y=3*(x^2)+2*x+1; %2
end
