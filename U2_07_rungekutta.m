%% METODO DE RUNGE-KUTTA
clc
clear all

%% DATOS DE ENTRADA
x(1)=input('Condicion inicial de x(0) : ');
y(1)=input('Condicion inicial de y(0) : ');
xn=input('Abscisa cuya ordenada se desea calcular: ');
n=input('Número de particiones : ');

%% PROCEDIMIENTO COMPUTACIONAL
h=(xn-x(1))/n;

for i=2:n+1
    k1=f(x(i-1),y(i-1));
    k2=f(x(i-1)+(h/2),y(i-1)+(h/2)*k1);
    k3=f(x(i-1)+(h/2),y(i-1)+(h/2)*k2);
    k4=f(x(i-1)+h,y(i-1)+h*k3);
    y(i)=y(i-1)+(h/6)*(k1+2*k2+2*k3+k4);
    x(i)=x(i-1)+h;
end

%% DATOS DE SALIDA
disp(y(n+1));


%% FUNCTION EDO
function r=f(x,y)
   % r=0.1*sqrt(y)+0.4*(x^2); 
   % r=y-x;
    r=x-y;
   % r=(-y^(1.5))+1;
end
