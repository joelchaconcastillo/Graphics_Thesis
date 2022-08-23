PATHA=../HV/  #/home/joel.chacon/Current/MyResearchTopics/Data_Decomposition/StateOfTheArt/HV


for j in MOEA_D NSGA-II NSGA-III R2-EMOA VSD-MOEA_D
do
  for i in WFG1 WFG2 WFG3 WFG4 WFG5 WFG6 WFG7 WFG8 WFG9 DTLZ1 DTLZ2 DTLZ3 DTLZ4 DTLZ5 DTLZ6 DTLZ7 UF1 UF2 UF3 UF4 UF5 UF6 UF7;
  do
   echo "--"${i}_${j}_2
  for CR in 0.0 0.25 0.5 0.75 1.0;
  do
   for F in 0.25 0.5 0.75 1.0;
   do
	   echo ${CR}_${F}
     #echo "--"${i}_2_${CR}_${F}; 
        #echo ${PATHA}/${j}/${i}_2_CR_${CR}_F_${F}
#        echo ${PATHA}/${j}/${i}_2_CR_${CR}_F_${F}
#        echo ${PATHA}/${j}/${i}_2
     done
   done
  done
done
exit;
for j in MOEA_D NSGA-II NSGA-III R2-EMOA VSD-MOEA_D
do
  for i in WFG1 WFG2 WFG3 WFG4 WFG5 WFG6 WFG7 WFG8 WFG9 DTLZ1 DTLZ2 DTLZ3 DTLZ4 DTLZ5 DTLZ6 DTLZ7 UF8 UF9 UF10;
  do
   echo "--"${i}_${j}_3
  for CR in 0.0 0.25 0.5 0.75 1.0;
  do
   for F in 0.25 0.5 0.75 1.0;
   do
     #echo "--"${i}_3_${CR}_${F}; 
        #echo ${PATHA}/${j}/${i}_3_CR_${CR}_F_${F}
        echo ${PATHA}/${j}/${i}_3_CR_${CR}_F_${F}
#        echo ${PATHA}/${j}/${i}_3
     done
   done
  done
done
