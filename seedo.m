%% SISTEMA DE EDO
clc
clear all

%% DATOS DE ENTRADA 
x(1)=input('');
xn=input('Abscisa :'):
n=input('Numero particiones : ');
m=input('');

for i=1:m
    y(i,1)=input('');
end

h=(xn-x(1))/n;

for i=2:n+1
    y(1,i)=y(1,i-1)+h*f1(x(i-1,y(1,i-1),y(2,i-1)));
    y(2,i)=y(2,i-1)+h*f2(x(i-1,y(1,i-1),y(2,i-1)));
    x(i)=x(1)+i*h;
end

for i=1:m
    disp(y(i,n+1));
end
