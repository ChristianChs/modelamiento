%% INTERPOLACION DE LAGRANGE
clc
clear all
%% DATOS DE ENTRADA
n=input('Grado del Polinomio de Colocación: ');
xr=input('Abscisa cuya ordenada se desea obtener: ');

for i=1:n
    x(i)=input(['X(' num2str(i) '): ']);
    y(i)=input(['Y(' num2str(i) '): ']);
end

%% PROCEDIMIENTO COMPUTACIONAL

yr=0;

for i=1:n
    ln=1;
    ld=1;
    j=1;
    while j<=n
        if (i==n)&& (i==j)
        else
            if i==j
                j=j+1;
            end
            ln=ln*(xr-x(j));
            ld=ld*(x(i)-x(j));
        end
        j=j+1;
    end
    yr=yr+(ln/ld)*y(i);
end

%% MOSTRAR RESULTADO

disp(yr);

