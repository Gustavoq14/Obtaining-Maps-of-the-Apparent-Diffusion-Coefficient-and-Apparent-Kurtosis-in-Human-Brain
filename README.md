# Obtaining-Maps-of-the-Apparent-Diffusion-Coefficient-and-Apparent-Kurtosis-in-Human-Brain
The present functions were developed in MATLAB R2017b (The MathWorks, Inc) as part of my special undergraduate Thesis work to qualify for the Bachelor Degree in Physics  (https://bit.ly/2EWzYsI). In this Thesis work were obtained the maps for the apparent diffusion coefficient and apparent kurtosis of the brain of a healthy person (https://bit.ly/2Z9bLXR). Afterwards, a segmentation was carried out in the three types of tissue of interest for this specific study (gray matter, white matter and cerebrospinal fluid) in order to classify the values of apparent diffusion coefficient and apparent kurtosis obtained in the maps, within the three types of tissues studied.

# Function-IDP.m
For this function input N is the file '' .mat '' taken from https://bit.ly/2Z9bLXR, this function allows to obtain the weighted diffusion image associated with each of the 19 slices of the human brain under study.

# Function-Setting.m
For this function, the M input is the output of the IDP.m function, this function allows obtaining the maps of the diffusion coefficient and apparent kurtosis associated with each of the 19 slices of the human brain under study.

# Function-Classification.m
For this function the entries LCR, MB, MG are the maps of Cephaloraquid Liquid, White Matter and Gray Matter obtained from the segmentation made with the software SPM12 to the images associated to the value of b = 0 s / mm2 for each slice of the human brain in study, and the CDA and CA inputs correspond to the outputs of the Adjustment.m function

The output [x, y, x1, y1, x2, y2] corresponds to the diffusion and apparent kurtosis values   associated with each type of tissue.

# Function-Results.m
This function is executed after executing the Classification function, its result is the average value of the diffusion and apparent kurtosis in each type of tissue of each cut

# Obtención-de-los-Mapas-del-Coeficiente-de-Difusión-Aparente-y-Curtosis-Aparente-en-el-Cerebro-Humano
Las presentes funciones fueron desarrolladas en MATLAB R2017b (The MathWorks, Inc) como parte de mi trabajo especial de grado para optar al título de Licenciado en Física (https://bit.ly/2EWzYsI) . En este trabajo se obtuvieron los mapas del coeficiente de difusión aparente y kurtosis aparente del cerebro  de una persona sana (https://bit.ly/2Z9bLXR). Posteriormente se le realizó una segmentación en los tres tipos de tejido de interés en este estudio (materia gris, materia blanca y liquido cefalorraquideo) para así poder clasificar los valores de difusión aparente y curtosis aparente obtenidos en los mapas, dentro de los tres tipos de tejidos de interés.

# Función-IDP.m
Para esta función la entrada N es el archivo ''.mat'' tomado de https://bit.ly/2Z9bLXR, esta función permite obtener las imágen de difusión ponderada asociada a cada uno de los 19 cortes del cerebro humano en estudio.

# Función-Ajuste.m
Para esta función la entrada M es la salida de la función IDP.m, esta función permite obtener los mapas del coeficiente de difusión y curtosis aparente asociado a cada uno de los 19 cortes del cerebro humano en estudio.

# Función-Clasificacion.m
Para esta función las entradas LCR,MB,MG son los mapas de Liquido Cefaloraquideo, Materia Blanca y Materia Gris obtenidos de la segmentación realizada con el software SPM12 a las imágenes asociadas al valor de b = 0 s/mm2 para cada corte del cerebro humano en estudio, y las entradas CDA y CA corresponden con las salidas de la función Ajuste.m

La salida [x,y,x1,y1,x2,y2] corresponde con los valores de la difusión y curtosis aparente asociados a cada tipo de tejido.

# Función-Resultados.m
Esta función se ejecuta después de ejecutar la función Clasificacion, su resultado es el valor promedio de la difusion y curtosis aparente en cada tipo de tejido de cada corte.

