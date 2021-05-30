------------------------------------------------------------

		 Mixer de filtros y efectos 
	                creado por
	       Jorge Daniel Barrientos Pineda
			    & 
		  Denny Steve Otzoy Chex

------------------------------------------------------------
////////////////////////////////////////////////////////////
------------------------------------------------------------
			  INDICE
------------------------------------------------------------
1. Introduccion
2. Funcionamiento
3. Efectos
------------------------------------------------------------
		       INTRODUCCION
------------------------------------------------------------
La siguiente aplicacion se encarga de leer archivos de audio
y procesarlos, de acuerdo con las indicaciones del usuario, 
para finalmente obtener un audio alterado con efectos 
aplicados por el usuario. También permite generar un archivo
.mat que contiene la información de las señales y otros 
parámetros importantes.

Se pueden aplicar filtros, a los cuales se les puede aplicar 
hasta 5 efectos diferentes. Estos son 
- Eco
- Reverberación por convolución
- Flanger
- Vibrato
- Distorsion Vocal

El audio procesado se dividirá en 2 señales a las cuales se
les podrá aplicar efectos distintos. Una vez aplicados, se 
podrá recombinarlos a traves de un sumador, el cual dará 
diferente ganancia a cada canal antes de sumarlos. Al final, 
el usuario podrá crear un archivo .wav de su nueva pieza
de audio, o bien podrá crear un archivo .mat para observar
sus datos en matlab.

Cada etapa está acompañada de gráficas, las cuales muestran:
- Espectro de entrada
- Espectro de filtrado
- Espectro de salida

------------------------------------------------------------
 		       FUNCIONAMIENTO
------------------------------------------------------------
Para poder procesar un archivo de audio .wav se deben seguir
los siguientes pasos:
1- Click en el boton <Examinar>.
2- Seleccionar el archivo de audio para procesar.
3- Click en abrir. De otro modo, el archivo estará vacío.
4- Seleccionar las frecuencias de los filtros pasa bandas.
5- Cuando se hayan elegido las frecuencias de corte, click 
   en los botones <Aplicar> de cada filtro.
6- Seleccionar los efectos que se quieren aplicar.
7- Asignar los parámetros de cada efecto.
8- Cuando se hayan elegido todos los efectos deseados, 
   click en los botones <Aplicar> de cada lista de efectos.
9- Establecer la ganancia. Colocarla en 0 hará que la salida
   sea totalmente del efecto 1. Colocarla en 1 hará que la 
   salida sea totalmente del efecto 2.
10- Click en <Aplicar> para combinar los audios con efectos.
11- Generar los archivos de salida necesarios.
	- Si se desea un .wav, Click en <Guardar>.
	- Si se desea un .mat, Click en <Generar .mat>.
12- Para procesar un nuevo audio, hacer click nuevamente en  
    el boton <Examinar>, y repetir estos pasos.
------------------------------------------------------------
 		          EFECTOS
------------------------------------------------------------
1. Eco
El eco es un efecto de retraso de la señal principal. Se 
logra sumando a la señal de salida su propia salida, pero 
con cierto tiempo de retraso. Además, esta nueva señal tiene 
un factor de atenuacion que "apaga" la señal con el paso del 
tiempo.

2. Reverberación por convolución
La reverberación es un efecto en el que el audio da la 
impresion de "rebotar" en una superficie y regresar al 
oyente. Esto se hace con una convolucion del audio y un 
impulso unitario. En el programa hay 6 impulsos unitarios
posibles para realizar una convolución.

3. Flanger
El flanger es un efecto que altera la frecuencia de fondo
del audio principal. Esta función produce un sonido ´
"metalico" y duplicado. Se logra introduciendo una 
alteracion de frecuencia controlada por un sinusoide.

4. Vibrato
El vibrato provoca que la frecuencia de la señal oscile. El
usuario puede variar la velocidad de oscilacion y la
intensidad de la variación de la frecuencia. Se logra
controlando la frecuencia con un sinusoide y un parámetro
que varia la frecuencia actual.

5. Distorsion Vocal
La distorsion se logra alterando la señal de entrada con
su propia señal, la cual se altera con el uso de un sinusoide 
que la satura. Esto genera un efecto de voz robótica.