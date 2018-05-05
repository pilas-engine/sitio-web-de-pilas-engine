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
	@echo ""
	@echo ""

iniciar:
	$(call log, "Instalando dependencias")
	bundler install
	
ejecutar:
	$(call log, "Iniciando el servidor")
	jekyll s -l


.PHONY: tmp docs binarios

