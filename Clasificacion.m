function [x,y,x1,y1,x2,y2] = Clasificacion(LCR,MB,MG,CDA,CA); 
% LCR, MB y MG son los mapas de los tejidos
% CDA y CA son los mapas obtenidos de la funcion 2
q = input('Introduzca el valor de la intesidad del pixel minimo:');
s = input('Seleccione el tipo de imagen\n 1-Imagen sin filtrar\n 2-Imagen filtrada\n');
if s == 1
    d = 'C1.mat';
else
    d = 'CS1.mat';
end
for k = 1:19 % Cortes
    l = 1;
    o = 1;
    p = 1;
    for i = 1:96 % Filas del corte k
        for j = 1:96 % Columnas del corte k
            if LCR(i,j,k) >= q;
                x(l) = CDA(i,j,k)*(LCR(i,j,k)/255); 
                % Vector de valores de la difusion en el LCR
                y(l) = CA(i,j,k)*(LCR(i,j,k)/255);
                % Vector de valores de la curtosis en el LCR
                l = l + 1;
            end
            if MB(i,j,k) >= q;
                x1(o) = CDA(i,j,k)*(MB(i,j,k)/255);
                % Vector de valores de la difusion en la MB
                y1(o) = CA(i,j,k)*(MB(i,j,k)/255);
                % Vector de valores de la curtosis en la MB
                o = o + 1;
            end
            if MG(i,j,k) >= q;
                x2(p) = CDA(i,j,k)*(MG(i,j,k)/255); 
                % Vector de valores de la difusion en la MG
                y2(p) = CA(i,j,k)*(MG(i,j,k)/255);
                % Vector de valores de la curtosis en la MG
                p = p + 1;
            end
        end
    end
    x(isnan(x)) = [];
    x(isinf(x)) = [];
    x1(isnan(x1)) = [];
    x1(isinf(x1)) = [];
    x2(isnan(x2)) = [];
    x2(isinf(x2)) = [];
    y(isnan(y)) = [];
    y(isinf(y)) = [];
    y1(isnan(y1)) = [];
    y1(isinf(y1)) = [];
    y2(isnan(y2)) = [];
    y2(isinf(y2)) = [];  
    save(d,'x','y','x1','y1','x2','y2') 
    % Almacenamiento de los valores de la difusion y curtosis en cada tejido
    if s == 1
        if k < 9
            d(2) = double(d(2)) + 1;
        elseif k == 9
            d = 'C10.mat';
        elseif k >= 10 && k <= 19
            d(3) = double(d(3)) + 1;
        end
    else
        if k < 9
            d(3) = double(d(3)) + 1;
        elseif k == 9
            d = 'CS10.mat';
        elseif k >= 10 && k <= 19
            d(4) = double(d(4)) + 1;
        end
    end
end