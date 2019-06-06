function [CDA_LCR,CA_LCR,CDA_MB,CA_MB,CDA_MG,CA_MG] = Resultado
a = dir;
d = 'C1.mat';
j = 1;
k = 3;
while j <= 38
    if length(a(k).name) == length(d)
        if a(k).name == d
            load(a(k).name);
            CDA_LCR(j,1) = mean(x);
            CDA_LCR(j,2) = std(x);
            CA_LCR(j,1) = mean(y);
            CA_LCR(j,2) = std(y);
            CDA_MB(j,1) = mean(x1);
            CDA_MB(j,2) = std(x1);
            CA_MB(j,1) = mean(y1);
            CA_MB(j,2) = std(y1);
            CDA_MG(j,1) = mean(x2);
            CDA_MG(j,2) = std(x2);
            CA_MG(j,1) = mean(y2);
            CA_MG(j,2) = std(y2);
            j = j + 1;
            k = 3;
            if j <= 9
                d(2) = double(d(2)) + 1;
            elseif j == 10
                d = 'C10.mat';
            elseif j > 10 && j <= 19
                d(3) = double(d(3)) + 1;
            elseif j == 20
                d = 'CS1.mat';
            elseif j > 20 && j <= 28
                d(3) = double(d(3)) + 1;
            elseif j == 29
                d = 'CS10.mat';
            elseif j >= 30 && j <= 38
                d(4) = double(d(4)) + 1;
            end
        end
    end
    k = k + 1;
end

        