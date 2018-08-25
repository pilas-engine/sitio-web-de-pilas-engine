require "jekyll-spark"

module Jekyll
  class TutorialComponent < ComponentTag
    def template(context)
      titulo = @props["titulo"]
      nombre = @props["nombre"]
      detalle = @props["detalle"]
      extension = @props["extension"]

      render = %Q[
        <div class="pa2 cf">
          <div class="fl pr2">
            <a href="/assets/tutoriales/#{nombre}.#{extension}">
            <img class="ba b--silver" src="/assets/tutoriales/#{nombre}.png">
            </a>
          </div>

          <div>
            <div><a class="link" href="/assets/tutoriales/#{nombre}.#{extension}">#{titulo}</a></div>
            <div class='pt2'>#{detalle}</div>
          </div>
        </div>
      ]
    end
  end
end

Liquid::Template.register_tag(
  "tutorial",
  Jekyll::TutorialComponent,
)
