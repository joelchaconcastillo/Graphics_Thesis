
  PATHA=../HV
   for nvar in 50 100 250 500
  do
  for i in DTLZ1 DTLZ2 DTLZ3 DTLZ4 DTLZ5 DTLZ6 DTLZ7 UF1 UF2 UF3 UF4 UF5 UF6 UF7 WFG1 WFG2 WFG3 WFG4 WFG5 WFG6 WFG7 WFG8 WFG9;
   do
    echo "--"${i}_2;
    for j in MOEA-D VSD-MOEA-D
    do
    echo ${PATHA}/${j}/${i}_2_${nvar}
    done
  done
done


    for nvar in 50 100 250 500
  do
  for i in DTLZ1 DTLZ2 DTLZ3 DTLZ4 DTLZ5 DTLZ6 DTLZ7 UF8 UF9 UF10 WFG1 WFG2 WFG3 WFG4 WFG5 WFG6 WFG7 WFG8 WFG9;
    do
    echo "--"${i}_3;
    #for j in GDE3 MOEA-D NSGAII R2-MOEA IBEA VSD-MOEA VSD-MOEA-Archive SMS-EMOA
    #for j in GDE3 MOEA-D NSGAII R2-MOEA IBEA SMS-EMOA VSD-MOEA-eta-2 VSD-MOEA-eta-5
    for j in MOEA-D VSD-MOEA-D
    do
    echo ${PATHA}/${j}/${i}_3_${nvar}
    done
  done
done
exit;


  PATHA=/home/joel.chacon/Current/MyResearchTopics/Data_Dominance/Scalability/HV
  for i in DTLZ4 UF1 UF4 UF5;
  do
   for nvar in 50 100 250 500
   do
    echo "--"${i}_2; 
    for j in MOEA-D NSGAII NSGAIII R2-MOEA VSD-MOEA-D 
    do
    echo ${PATHA}/${j}/${i}_2_${nvar}
    done
  done
done

 
  for i in DTLZ4 UF8 UF9 UF10;
  do
    for nvar in 50 100 250 500
    do
    echo "--"${i}_3; 
    #for j in GDE3 MOEA-D NSGAII R2-MOEA IBEA VSD-MOEA VSD-MOEA-Archive SMS-EMOA
    #for j in GDE3 MOEA-D NSGAII R2-MOEA IBEA SMS-EMOA VSD-MOEA-eta-2 VSD-MOEA-eta-5
    for j in MOEA-D NSGAII NSGAIII R2-MOEA VSD-MOEA-D 
    do
    echo ${PATHA}/${j}/${i}_3_${nvar}
    done
  done
done
exit ;
  #
  #
  #
  #PATHA=/home/joel.chacon/Current/MyResearchTopics/Data_Dominance/StateOfTheArt_2/IGD
  #for i in WFG1 WFG2 WFG3 WFG4 WFG5 WFG6 WFG7 WFG8 WFG9 DTLZ1 DTLZ2 DTLZ3 DTLZ4 DTLZ5 DTLZ6 DTLZ7 UF1 UF2 UF3 UF4 UF5 UF6 UF7;
  #do
  #  echo "--"${i}_2; 
  #  for j in GDE3 MOEA-D NSGAII R2-MOEA IBEA SMS-EMOA VSD-MOEA-eta-2 VSD-MOEA-eta-5
  #  #for j in GDE3 MOEA-D NSGAII R2-MOEA IBEA VSD-MOEA VSD-MOEA-Archive SMS-EMOA
  #  do
  #  echo ${PATHA}/${j}/${i}_2
  #  done
  #done
  #
  #for i in WFG1 WFG2 WFG3 WFG4 WFG5 WFG6 WFG7 WFG8 WFG9 DTLZ1 DTLZ2 DTLZ3 DTLZ4 DTLZ5 DTLZ6 DTLZ7 UF8 UF9 UF10;
  #do
  #  echo "--"${i}_3; 
  #  #for j in GDE3 MOEA-D NSGAII R2-MOEA IBEA VSD-MOEA VSD-MOEA-Archive SMS-EMOA
  #  for j in GDE3 MOEA-D NSGAII R2-MOEA IBEA SMS-EMOA VSD-MOEA-eta-2 VSD-MOEA-eta-5
  #  do
  #  echo ${PATHA}/${j}/${i}_3
  #  done
  #done
  
  
  PATHA=/home/joel.chacon/Current/MyResearchTopics/Data_Dominance/Scalability/IGDPlus
  for i in DTLZ4 UF1 UF4 UF5;
  do
    for nvar in 50 100 250 500 1000
    do
    echo "--"${i}_2; 
    for j in MOEA-D NSGAII R2-MOEA VSD-MOEA-eta-2
    #for j in GDE3 MOEA-D NSGAII R2-MOEA IBEA SMS-EMOA VSD-MOEA-eta-2 VSD-MOEA-eta-5
    #for j in GDE3 MOEA-D NSGAII R2-MOEA IBEA VSD-MOEA VSD-MOEA-Archive SMS-EMOA
    do
    echo ${PATHA}/${j}/${i}_2_${nvar}
    done
  done
 done
 
  for i in DTLZ4 UF8 UF9 UF10;
  do
    for nvar in 50 100 250 500 1000
    do
    echo "--"${i}_3; 
    #for j in GDE3 MOEA-D NSGAII R2-MOEA IBEA VSD-MOEA VSD-MOEA-Archive SMS-EMOA
    for j in MOEA-D NSGAII R2-MOEA VSD-MOEA-eta-2
    #for j in GDE3 MOEA-D NSGAII R2-MOEA IBEA SMS-EMOA VSD-MOEA-eta-2 VSD-MOEA-eta-5
    do
    echo ${PATHA}/${j}/${i}_3_${nvar}
    done
  done
done
