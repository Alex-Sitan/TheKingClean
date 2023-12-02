#!/bin/bash
source logo.sh
source style.sh
wastes=("cache" ".thumbnails" ".Shared" ".StickerThumbs" ".trash" ".Thumbs" ".Links" ".Statuses")
raiz=storage/shared/./
rz2=storage//shared/.
log
for i in ${wastes[@]}; do
	find $rz2 -name $i | xargs rm -r 2>/dev/null
	find $raiz -name $i | xargs rm -r 2>/dev/null
done
echo $(clear)
echo -e "\n\n\t${greenColour}[*]${endColour} ${yellowColour}Limpiado Con Exito.${endColour}\n"
