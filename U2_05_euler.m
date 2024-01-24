%% METODO DE EULER
clc
clear all

%% DATOS DE ENTRADA
x(1)=input('Condicion inicial X0:');
y(1)=input('Condicion inicial Y0:');
n=input('Número de particiones : ');
xn=input('Abscisa :');

%% PROCEDIMIENTO COMPUTACIONAL
h=(xn-x(1))/n;
for i=2:n+1
    x(i)=x(1)+(i-1)*h;
    y(i)=y(i-1)+h*f(x(i-1),y(i-1));
    
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
