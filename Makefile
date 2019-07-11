NOMBRE="sitio-de-pilas"
DATE=`date +'%y.%m.%d %H:%M:%S'`

N=[0m
G=[01;32m
Y=[01;33m
B=[01;34m


comandos:
	@echo ""
	@echo "${B}Comandos disponibles para ${Y}${NOMBRE}${N} (versión: ${VERSION})"
	@echo ""
	@echo "  ${Y}Generales de la aplicación${N}"
	@echo ""
	@echo "    ${G}iniciar${N}                 Instala las dependencias."
	@echo "    ${G}ejecutar${N}                Ejecuta el servidor de desarrollo."
	@echo "    ${G}actualizar_descargas${N}    Genera un commit y un deploy para actualizar versiones."
	@echo "    ${G}compilar${N}                Genera todos los .html del sitio."
	@echo "    ${G}actualizar_sprites${N}      Genera el spritesheet con todos los íconos."
	@echo "    ${G}generar_miniaturas${N}      Vuelve a generar las miniaturas de la galería."
	@echo "    ${G}forzar_deploy${N}           Realiza un commit de prueba para correr el deploy."
	@echo ""
	@echo ""

iniciar:
	$(call log, "Instalando dependencias")
	bundler install

ejecutar:
	$(call log, "Iniciando el servidor")
	bundler exec jekyll s -l

compilar:
	$(call log, "Compilando")
	bundler exec jekyll build

deploy_a_produccion:
	rm -rf _site
	rm -rf dist
	@echo "Compilando el sitio."
	make compilar
	@echo "Clonando repositorio para realizar el deploy."
	git clone dokku@hugoruscitti.com.ar:sitio-web-de-pilas-engine dist
	@echo "Moviendo archivos..."
	@cp -r _site/* dist/
	@echo "Realizando deploy..."
	@cd dist; git add .; git config user.email "hugoruscitti@gmail.com"; git config user.name "Hugo Ruscitti"; git commit -am 'rebuild' --allow-empty; git push -f
	rm -rf _site
	rm -rf dist

forzar_deploy:
	git commit --allow-empty -m "Forzando deploy."
	git push

actualizar_sprites:
	TexturePacker imagenes/sprites.tps

actualizar_descargas:
	git commit --allow-empty -m "Commit vacío para actualizar las descargas."
	git push
	

generar_miniaturas:
	$(call log, "Iniciando el servidor")
	cd assets/galeria/originales; mogrify -resize 300x200 -background white -gravity center -format jpg -quality 75 -path ../thumbs *.png
	cd assets/galeria/originales; mogrify -resize 300x200 -background white -gravity center -format jpg -quality 75 -path ../thumbs *.jpg
