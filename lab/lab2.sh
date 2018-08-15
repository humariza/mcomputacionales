

wget https://raw.githubusercontent.com/daniel-lozano/CLASES_PYTHON/master/CLASE1/HERRAMIENTAS/notas.txt
awk < notas.txt '{if($3<5 && $3>4.0) print $3 }'  |wc -l

awk < notas.txt '{if($3>4.0 && $6>15 ) print $0}'  > RES1.txt


awk < notas.txt '{if($3==0 || $4==0 || $5==0 || $6==0)if($7<6.0) print $1 }'


awk < notas.txt '{if($7>8.0 ) print $1}'  > RES2.txt
awk < notas.txt '{if($7>8.0 ) print $1}' |wc -l

mkdir RESULTADO

mv RES1.txt ./RESULTADO
mv RES2.txt ./RESULTADO
