%% APROXIMACIÓN POLINOMIAL
clc
clear all
%% DATOS DE ENTRADA
n=input('Número de datos muestrales : '); 
m=input('Grado del polinomio: ');

%% PROCEDIMIENTO COMPUTACIONAL
sum=0;
for i=1:n
    x(i)=input(['X(' num2str(i) '): ']);
    y(i)=input(['Y(' num2str(i) '): ']);
    sum=sum+y(i);
end

yp=sum/n;


for i=0:(2*m)
    s(i+1)=0;
    for j=1:n
        s(i+1)=s(i+1)+(x(j)^i);
    end
end

for i=0:m
    b(i+1)=0;
    for j=1:n
        b(i+1)=b(i+1)+((x(j)^i)*y(j));
    end
end

for i=1:(m+1)
    for j=i:(m+1)
        C(i,j)=s(i+j-1);
        C(j,i)=C(i,j);
    end
end

P=PolinomioResolv(C,b,m+1);
disp(P);

sm=0;
sr=0;

for i=1:n
    sm=sm+(y(i)-yp)^2;
    ye=0;
    for j=0:m
        ye=ye+P(j+1)*x(i)^j;
    end
    sr=sr+(y(i)-ye)^2;
end

cd=(sm-sr)/sm;
cc=sqrt(cd);

disp(cd);
disp(cc);




%% FUNCTION MATRIZ
function y=PolinomioResolv(A,B,n)
    for i=1:n
        p=A(i,i); %pivote
        for j=1:n
            A(i,j)=A(i,j)/p; %divide a toda la fila
        end
        B(i)=B(i)/p;%divide a toda la fila b(i)
        li=1;
        while li<=n %de arriba a abajo
            if (li==n)&&(li==i)
            elseif li~=i % triangular superior
                f=-(A(li,i));% 
                for j=i:n
                    A(li,j)=A(li,j)+f*A(i,j);
                end
                B(li)=B(li)+f*B(i);
            end
            li=li+1;
        end
    end
    y=B;
end
