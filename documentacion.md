---
layout: page
title: Documentación
permalink: /documentacion/
order: 3
---

# Documentación

{% assign version = site.github.latest_release.tag_name %}
{% assign baseurl = "https://github.com/pilas-engine/pilas-engine/releases/download/" %}

Un buen punto de inicio para comenzar a utilizar pilas es explorar el manual completo en español. Este manual recorre toda la funcionalidad de pilas, y explica con ejemplos cómo utilizar cada parte del motor.

Manuales de la versión actual de pilas, la versión <code>{{version}}</code>:

<div class="tc">
  <a class="btn btn-blue white source-sans-pro" href="http://manual-pilas-engine.surge.sh/" target="_blank">Ver el manual online</a>
  <a class="btn btn-blue white source-sans-pro" href="{{baseurl}}{{version}}/book.pdf">Manual en formato PDF</a>
  <a class="btn btn-blue white source-sans-pro" href="{{baseurl}}{{version}}/book.mobi">Manual en formato mobi</a>
  <a class="btn btn-blue white source-sans-pro" href="{{baseurl}}{{version}}/book.epub">Manual en formato epub</a>
</div>

Versión python-pilas:

<div class="tc">
  <p class="dib mr2 ml2"><a href="http://manual.pilas-engine.com.ar/" target="_blank" class="link dim">Ver el manual</a></p>
  <p class="dib mr2 ml2"><a href="http://api.pilas-engine.com.ar/" target="_blank" class="link dim">Ver API</a></p>
  <p class="dib mr2 ml2"><a href="/assets/documentacion/pilas-engine-general-brochure.pdf" target="_blank" class="link dim">Mini tutorial</a></p>
  <p class="dib mr2 ml2"><a href="/assets/documentacion/pilas-engine-general-brochure-huayra.pdf" target="_blank" class="link dim">Mini tutorial (huayra)</a></p>
</div>

Versión 0.8.3 (en desuso):

<div class="tc">
  <p class="dib mr2 ml2"><a class="dim link" href="https://pilas.readthedocs.org/en/latest/">Ver el manual</a></p>
  <p class="dib mr2 ml2"><a class="dim link" href="http://pilas-engine.com.ar/docs/api-0.83.0/index.html">Ver API</a></p>
</div>


## Tutoriales para python-pilas (versión 1.0)


{% tutorial
  titulo: 'Guía de conversión a la nueva versión de pilas-engine'
  nombre: 'guia_conversion'
  extension: 'pdf'

  detalle: 'En este documento se recoge de manera detallada los cambios que se han producido entre las dos versiones de pilasengine (de las 0.8x iniciales a las posteriores: 0.9, 1.0, 1.1 etc.).',
%}


{% tutorial
  titulo: 'Disparar a monos'
  nombre: 'disparar_a_monos'
  extension: 'pdf'

  detalle: 'Una introducción a pilas-engine utilizando un juego de disparos.',
%}

{% tutorial
  titulo: 'Sprites y Física'
  nombre: 'mario_renovado'
  extension: 'pdf'

  detalle: 'Muestra los primeros pasos con actores, el motor de física y una comparativa entre pilas y pygame.',
%}

## Tutoriales para python-pilas (versiónes anteriores a 1.0)



{% tutorial
  titulo: 'Disparar a monos'
  nombre: 'ex_disparar_a_monos'
  extension: 'pdf'

  detalle: 'Una introducción a pilas-engine utilizando un juego de disparos.',
%}

{% tutorial
  titulo: 'Asteroides'
  nombre: 'asteroides'
  extension: 'pdf'

  detalle: 'Una introducción a pilas-engine utilizando un juego de disparos.',
%}

{% tutorial
  titulo: 'Sprites y Física'
  nombre: 'ex_mario'
  extension: 'pdf'

  detalle: 'Muestra los primeros pasos con actores, el motor de física y una comparativa entre pilas y pygame.',
%}


{% tutorial
  titulo: 'Grillas y Animación'
  nombre: 'grillas'
  extension: 'pdf'

  detalle: 'Guia paso a paso para construir animaciones mediante grillas de gráficos.',
%}



{% tutorial
  titulo: 'Scrolling'
  nombre: 'scrolling'
  extension: 'pdf'

  detalle: 'Muestra cómo generar el efecto desplazamiento de múltiples capas.',
%}
