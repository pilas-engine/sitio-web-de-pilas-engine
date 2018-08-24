---
layout: page
title: Descargas
permalink: /descargas/
order: 3
---

# Descargas

{% assign version = site.github.latest_release.tag_name %}
{% assign baseurl = "https://github.com/pilas-engine/pilas-engine/releases/download/" %}

La versión más reciente de Pilas Engine es <code>{{version}}</code>, publicada en la fecha {{site.github.latest_release.published_at  | date: '%d/%m/%Y'}})
:

<!--p class="ba">{{site.github.latest_release}}</p -->

<div class="tc">
  <a class="btn btn-blue white source-sans-pro" href="{{baseurl}}{{version}}/pilas-engine-windows-64_bits.zip"><img src="/assets/iconos/windows.png" class="fl mr2"/> Windows de 64 bits</a>
  <a class="btn btn-blue white source-sans-pro" href="{{baseurl}}{{version}}/pilas-engine-osx-64_bits.zip"><img src="/assets/iconos/osx.png" class="fl mr2"/> OSX de 64 bits</a>
  <a class="btn btn-blue white source-sans-pro" href="{{baseurl}}{{version}}/pilas-engine-linux-64_bits.zip"><img src="/assets/iconos/linux.png" class="fl mr2"/> GNU/Linux de 64 bits</a>
  <a class="btn btn-blue white source-sans-pro" href="{{baseurl}}{{version}}/pilas-engine-linux-64_bits.zip"><img src="/assets/iconos/raspberry.png" class="fl mr2"/> Raspberry</a>
</div>

<div class="tc mt2">
  <div class="mt4">Otras opciones de descargas:</div>

  <p class="dib mr2 ml2"><a class="link dim" href="{{baseurl}}{{version}}/pilas-engine-windows-32_bits.zip">Windows de 32 bits</a></p>
  <p class="dib mr2 ml2"><a class="link dim" href="{{baseurl}}{{version}}/pilas-engine-linux-32_bits.zip">GNU/Linux de 32 bits</a></p>
  <p class="dib mr2 ml2"><a class="link dim" href="{{baseurl}}{{version}}/book.pdf">Manual en formato PDF</a></p>
  <p class="dib mr2 ml2"><a class="link dim" href="{{baseurl}}{{version}}/book.mobi">Manual en formato mobi</a></p>
  <p class="dib mr2 ml2"><a class="link dim" href="{{baseurl}}{{version}}/book.epub">Manual en formato epub</a></p>
</div>

## Versión clásica

La versión clásica de Pilas Engine, también conocida como pilas-python se puede descargar desde aquí, <a href="https://github.com/hugoruscitti/pilas/">o bien desde el nuestro repositorio de pilas-engine 1</a>

<div class="tc">
  <a class="btn btn-blue white source-sans-pro" href="descargas"><img src="/assets/iconos/windows.png" class="fl mr2"/> Descargar la versión clásica</a>
</div>
