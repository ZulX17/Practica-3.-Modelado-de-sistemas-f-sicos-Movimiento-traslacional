[t,x]=ode45(@ST,[0 10],[0 0 0 0]);
%Aqui se crea la figura donde se va a graficar el x con respecto a t%
%x y t son paramentros que retorna la funcion ode45
figure(1)
plot(t,x(:,1));
grid on
hold on
title("Posicion");
xlabel("Tiempo");
ylabel("Radianes");
figure(2)
plot(t,x(:,2));
grid on
title("Velocidad");
xlabel("Tiempo");
ylabel("Radianes/Segundo")