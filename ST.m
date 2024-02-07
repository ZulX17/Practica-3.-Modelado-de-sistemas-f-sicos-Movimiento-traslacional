function dx=ST(t,x)
%---Definicion de los parametros---%
m1 = 290;               %Masa 1
b1 = 1000;              %Amortiguador? 
m2 = 59;                %Masa 2
k1 = 16182;             %Resorte 1
f = 0;                  %Fuerza
k2 = 19000;             %Resorte 2
z1 = 0.05*sin(0.5*pi*t); %Entrada en el desplazamiento 
z2 = 0.05*sin(20*pi*t);
z = z1;
%---Vector de 4x1---%
dx=zeros(4,1);
%---Definicion de la dinamica del sitema---%
dx(1)=x(3);
dx(2)=x(4);
dx(3)=(1/m1)*(f-(b1*x(3))+(b1*x(4))-(k1*x(1))+(k1*x(2)));
dx(4)=(1/m2)*(-f+(k2*z)+(b1*x(3))-(b1*x(4))+(k1*x(1))-((k1+k2)*x(2)));
%------%
