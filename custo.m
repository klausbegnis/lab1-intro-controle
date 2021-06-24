function [ J ] = custo(m,x)


if (x > 1 || x < 0 || m<=0)
    error('Parâmetros Inválidos');
else
    % Valores contantes
    J0 = 1;
    xref = 0.5;
    
    % Fórmula
    J = J0 - ((0.1*(m^3) + 4)/(0.05*(m^2) - m)) + 0.1*(x-xref)^2;
end
end