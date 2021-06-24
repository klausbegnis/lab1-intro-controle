% Intervalos de x e m
x = 0:0.01:1;
m = 1:1:5;

% Definição dos vetores do custo
Jx = [];
Jm = [];

for i = 1:1:size(x, 2)
    Jx(i) = custo(1, x(i));
end

for i = 1:1:size(m, 2)
    Jm(i) = custo(m(i), 0.7);
end

figure;


% Gráfico do Custo em função de x
subplot(2, 2, 1);
plot(x, Jx, '-c');
xlabel('x');
ylabel('J(1, x)');
title('Custo em função de J(1, x)');
grid on


% Gráfico do Custo em função de m
subplot(2, 2, 2);
plot(m, Jm, '-r');
xlabel('m');
ylabel('J(m, 0.7)');
title('Custo em função de J(m, 0.7)');
grid on





% Definição dos vetores da derivadas
dJdx = [];
dJdm = [];

for i = 1:1:(size(Jx, 2)-1)
    dJdx(i) = (Jx(i+1) - Jx(i))/(x(i+1)-x(i));
end

for i = 1:1:(size(Jm, 2)-1)
    dJdm(i) = (Jm(i+1) - Jm(i))/(m(i+1)-m(i));
end

% Remoção do último elemento dos vetores para se adequar ao tamanho do
% vetor das derivadas
x(end) = [];
m(end) = [];


% Gráfico da Derivada do Custo em função de x
subplot(2, 2, 3);
plot(x, dJdx, '-c');
xlabel('x');
ylabel('dJ/dx');
title('Derivada do custo em função de x');
grid 

% Gráfico da Derivada do Custo em função de m
subplot(2, 2, 4);
plot(m, dJdm, '-r');
xlabel('m');
ylabel('dJ/dm');
title('Derivada do custo em função de m');
grid 