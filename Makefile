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
	@echo "    ${G}ejecutar${N}                     Instala dependencias."
	@echo ""
	@echo ""

ejecutar:
	$(call log, "Iniciando ember s")
	jekyll s -l


.PHONY: tmp docs binarios

