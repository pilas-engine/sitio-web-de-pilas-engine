---
layout: tutorial
autor: Andres Acosta
fecha: 21 de Junio 2020
---


# PONGOAL

**PonGoal** te permite jugarlo con dos personas y esta orientado en uno de los primeros videojuegos de la historia “Pong”.

El objetivo es hacerle goles al contrincante, y el que primero llega a 3 goles gana.

En el siguiente tutorial se verán algunos aspectos, que servirá para crear tu propio juego.

# Paso 1: Buscar imágenes.

Una vez que sepamos que juego queremos desarrollar, lo primero que hay que hacer es buscar las imágenes que nos hagan faltan.

Para este ejemplo se buscó un fondo de una cancha, una pelota, dos barras que serán nuestros jugadores, los arcos y luces que avisarán cunado nos hayan hecho un gol y un par de textos avisando que ganaste o perdiste como también la cantidad de goles que metiste.

![](/assets/tutoriales/pongoal/image1.png)

Tener en cuenta que estas imágenes tienen que estar en formato png.

# Paso 2: Ajustar tamaño de la pantalla

Para ello seleccionaremos la escena con la que vamos trabajar y ajustar el tamaño

![](/assets/tutoriales/pongoal/image2.png)

![](/assets/tutoriales/pongoal/image3.png)

# Paso: Crear los actores

Para ello haremos click en Crear Actor, y elegiremos el actor sin imagen.

![](/assets/tutoriales/pongoal/image4.png)

Una vez creado, podemos cambiarle el nombre y/o la etiqueta del mismo, como así también elegir la imagen que queramos para él.

![](/assets/tutoriales/pongoal/image5.png)

![](/assets/tutoriales/pongoal/image6.png)

Podemos elegir alguna imagen predeterminada, o importar la que nosotros queramos.

Una vez seleccionada la imagen, le cambiaremos el tamaño de la misma para que esté acorde a nuestra pantalla del juego, posiciones iniciales y otras características que nos permitirá controlarlos.

Y así continuaremos con todos los actores que necesitemos.

![](/assets/tutoriales/pongoal/image7.png)

# Ejemplo con uno de los actores: (Jugador uno)

![](/assets/tutoriales/pongoal/image8.png)

# Paso 3: Crear animaciones

Para crear las animaciones necesitamos varias imágenes que vayan cambiando su forma, para generar la animación en sí.

![](/assets/tutoriales/pongoal/image9.png)

Le pondremos un nombre a la animación y le asignaremos los cuadros por segundos que queramos y agregaremos las imágenes que nos hagan falta.

![](/assets/tutoriales/pongoal/image10.png)

![](/assets/tutoriales/pongoal/image11.png)

# Paso 4: Codificación.

## Jugador uno.

![](/assets/tutoriales/pongoal/image12.png)

**1ro** Iniciamos el jugador uno con un estado “quieto”, indicando luego la animación que usara dependiendo de ese estado.

También definiremos otro estado “vibrar” que luego usaremos.

**2do** En el metodo actulizar agregaremos los moviemientos para que hara sobre el eje y y los limites del mismo.

**3ro** Por ultimo en el metodo animar le asignaremos la animacion que creamos para cuando la pelota colisione con el jugador.

Estos mismos metodos se utilizaran para el otro jugador, teniendo en cuenta la poscion en el eje x.

# Pelota

**1ro** declaramos las velocidades con la que se moverá la pelota y las cantidades de goles hechos en 0.

**2do** Definiremos los limites donde podrá moverse la pelota y llamaremos a los métodos que nos indicara si se hizo un gol.

**3ro** Definiremos que hacer cuando colisiones con un jugador

![](/assets/tutoriales/pongoal/image13.png)

![](/assets/tutoriales/pongoal/image14.png)

**4to** Contaremos los goles que hizo cada jugador y cambiaremos el número de goles a mostrar en cada arco, teniendo en cuenta que cada número es un actor diferente.

Una vez que la cuenta llegue a 3, el juego se termina y se muestra un mensaje avisando si el jugador uno gano o perdió.

**5to** Activaremos las luces que tenemos arriba de cada arco.

![](/assets/tutoriales/pongoal/image15.png)

![](/assets/tutoriales/pongoal/image16.png)

![](/assets/tutoriales/pongoal/image17.png)

## Luces

Las luces también tienen su propia animación, la cual prenderán y se apagarán cada vez que a un jugador se le haga un gol.

Una vez que tengamos creado una de las luces, definiremos lo siguiente. Y escrito el siguiente código, lo que haremos es clonar las luces para cada poste, modificando la propiedad “Espejado Horizontal” y “Espejado Vertical”.

A los demás actores solo le definiremos las posiciones.

![](/assets/tutoriales/pongoal/image18.png)

Al juego se le pueden agregar un montón de cosas mas, como un meno diferentes tipos de movimiento a la pelota, ect, por lo que te invito a mejorarlo.

¡¡¡Espero que el tutorial te haya servido!!!
