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
	@echo "    ${G}compilar${N}                Genera todos los .html del sitio."
	@echo "    ${G}generar_miniaturas${N}      Vuelve a generar las miniaturas de la galería."
	@echo "    ${G}forzar_deploy${N}           Realiza un commit de prueba para correr el deploy."
	@echo ""
	@echo ""

iniciar:
	$(call log, "Instalando dependencias")
	bundler install
	
ejecutar:
	$(call log, "Iniciando el servidor")
	jekyll s -l

compilar:
	$(call log, "Compilando")
	jekyll build

deploy_a_produccion:
	rm -rf _site
	rm -rf dist
	@echo "Clonando repositorio para realizar el deploy."
	git clone dokku@hugoruscitti.com.ar:sitio-web-de-pilas-engine dist
	@echo "Moviendo archivos..."
	make compilar
	@cp -r _site/* dist/
	@echo "Realizando deploy..."
	@cd dist; git add .; git config user.email "hugoruscitti@gmail.com"; git config user.name "Hugo Ruscitti"; git commit -am 'rebuild' --allow-empty; git push -f

forzar_deploy:
	git commit --allow-empty -m "Forzando deploy."
	git push

generar_miniaturas:
	$(call log, "Iniciando el servidor")
	cd assets/galeria/originales; mogrify -resize 300x200 -background white -gravity center -format jpg -quality 75 -path ../thumbs *.png
	cd assets/galeria/originales; mogrify -resize 300x200 -background white -gravity center -format jpg -quality 75 -path ../thumbs *.jpg
