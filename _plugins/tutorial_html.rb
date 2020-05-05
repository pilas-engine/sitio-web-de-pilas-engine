require "jekyll-spark"

module Jekyll
  class TutorialHTMLComponent < ComponentTag
    def template(context)
      titulo = @props["titulo"]
      nombre = @props["nombre"]
      autor = @props["autor"]
      descripcion = @props["descripcion"]

      render = %Q[
        <div class="flex pb3">
          <div class="ph2">
            <a href="/tutoriales/#{nombre}/"><img src="/assets/tutoriales/#{nombre}/icono.png"></a>
          </div>

          <div>
            <a class='link' href="/tutoriales/#{nombre}/">#{titulo}</a>
            <div class="pv2">#{descripcion}</div>
            <div>Realizado por: <strong>#{autor}</strong></div>
          </div>
        </div>
      ]
    end
  end
end

Liquid::Template.register_tag(
  "tutorial_html",
  Jekyll::TutorialHTMLComponent,
)
