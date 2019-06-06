function M = IDP(N) % N es el archivo human_brain_data.mat 
M(:,:,:,1) = N(:,:,:,1);
j = 26; % Gradiente en x
k = 29; % Gradiente en y
l = 32; % Gradiente en z
for i = 2:16 % Valores de b
 M(:,:,:,i) = (N(:,:,:,j).*N(:,:,:,k).*N(:,:,:,l)).^(1/3);% IDP
 j = j + 33; 
 k = k + 33;  
 l = l + 33; 
end
