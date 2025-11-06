#!/bin/bash


SITE_URL="https://www.gooogle.com/"

#-w "%{http_code}"

STATUS_CODE=$(curl -s -o /dev/null -w "%{http_code}" $SITE_URL)

if [ $STATUS_CODE -eq 200 ]; then
	echo "Sucesso: 0 Site $SITE_URL está ONLINE (Status: $STATUS_CODE)"
	else
	echo "FALHA: 0 Site $SITE_URL está FORA DO AR. (Status: $STATUS_CODE)"
	
	#Diga ao Shell (Nuvem) que este script falhou.
	exit 1
fi	