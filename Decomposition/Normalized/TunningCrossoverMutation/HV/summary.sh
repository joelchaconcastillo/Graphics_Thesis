for alg in MOEA_D NSGA-II NSGA-III R2-EMOA VSD-MOEA_D;
do
  for i in WFG1 WFG2 WFG3 WFG4 WFG5 WFG6 WFG7 WFG8 WFG9 DTLZ1 DTLZ2 DTLZ3 DTLZ4 DTLZ5 DTLZ6 DTLZ7 UF1 UF2 UF3 UF4 UF5 UF6 UF7;
  do
     for j in ${alg}/${i}_2_*;
     do
       while read -r line;
       do
          echo -e \"${alg}\"" "$line>>ALL_2
       done < ${j}
     done
  done
  
  for i in WFG1 WFG2 WFG3 WFG4 WFG5 WFG6 WFG7 WFG8 WFG9 DTLZ1 DTLZ2 DTLZ3 DTLZ4 DTLZ5 DTLZ6 DTLZ7 UF8 UF9 UF10
  do
     for j in ${alg}/${i}_3_*;
     do
       while read -r line;
       do
          echo -e \"${alg}\"" "$line>>ALL_3
       done < ${j}
     done
  done
  echo "" >> ALL_2
  echo "" >> ALL_2
  echo "" >> ALL_3
  echo "" >> ALL_3
done
