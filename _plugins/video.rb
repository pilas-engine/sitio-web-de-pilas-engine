require "jekyll-spark"

module Jekyll
  class VideoComponent < ComponentTag
    def template(context)
      url = @props["url"]
      imagen = @props["imagen"]
      titulo = @props["titulo"]
      subtitulo = @props["subtitulo"]

      render = %Q[
        <div class="dib v-top caja-de-video transition shadow-1 flex-column w5 mr3 mb3">
          <a href="#{url}" class="link" target="_blank">

            <div class="w-100 h4 bg-gray">
              <img class="" src="#{imagen}">
            </div>

            <div class="pa2">
              <div class="b black">#{titulo}</div>
              <div class="gray pt2 f7">#{subtitulo}</div>
            </div>

          </a>
        </div>
      ]
    end
  end
end

Liquid::Template.register_tag("video", Jekyll::VideoComponent, )
