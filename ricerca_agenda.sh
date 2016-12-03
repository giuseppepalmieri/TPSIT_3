#------------------------------ricerca su rubrica vers.1
#!/bin/bash
filtro=$1
grep -i $filtro rubrica.txt
~

#!/bin/bash
filtro=$1
for r in $(grep -i $filtro rubrica.txt);
do
 echo $r
done
~

#------------------------------ricerca su rubrica vers.2
#!/bin/bash
filtro=$1
echo "Nella Rubrica ci sono $(grep -i $filtro rubrica.txt | wc -l) record"
for r in $(grep -i $filtro rubrica.txt);
do
 IFS='|'
 i=0
 for c in $r;
   do
   echo $c
   done
done


#------------------------------ricerca su rubrica vers.3
#!/bin/bash
filtro=$1
echo "Nella Rubrica ci sono $(grep -i $filtro rubrica.txt | wc -l) record"
label=( '    Nome' ' Cognome' 'Telefono' '  E-mail' )
for r in $(grep -i $filtro rubrica.txt);
do
 IFS='|'
 i=0
 for c in $r;
   do
   echo "${label[$i]}: $c"
   i=$((i+1))
   done
 echo " "
done



