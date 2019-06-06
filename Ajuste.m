function [CDA,CA] = Ajuste(M) % M es la salida de la funcion 1.
x = [0:200:3000]; % Valores de b 
for k = 1:19 % Cortes
    for i = 1:96 % Filas del corte k
        for j = 1:96 % Columnas del corte k
            for m = 1:16 % IDP asociadas al corte k
            y(m) = log(M(i,j,k,m)/M(i,j,k,1)); % ln(S(m)/S(0))
            end
            p = polyfit(x,y,2); % Ajuste polinomial.
            CA(i,j,k) = (p(1)/(p(2))^2)*6; % Curtosis aparente
            CDA(i,j,k) = p(2)*-1; % Difusion aparente
        end
    end
end
