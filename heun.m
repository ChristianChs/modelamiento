%% METODO DE HEUN
clc
clear all

%% DATOS DE ENTRADA

x(1)=input('Digite la condición inicial para x(0): ');
y(1)=input('Digite la condicion inicial para y(0): ');

xn=input('Abscisa cuya derivada solución se busca: ');
n=input('Número de particiones : ');

%% PROCEDIMIENTO COMPUTACIONAL

h=((xn-x(1))/n);

for i=2:n+1
    x(i)=x(1)+i*h;
    y(i)=y(i-1)+h*f(x(i-1),y(i-1));
    y(i)=y(i-1)+(h/2)*((f(x(i-1),y(i-1)))+(f(x(i),y(i))));
end

%% DATO DE SALIDA
disp(y(n+1));


%% FUNCTION EDO

function r=f(x,y)
   % r=0.1*sqrt(y)+0.4*(x^2); 
   % r=y-x;
    r=x-y;
   % r=(-y^(1.5))+1;
end
