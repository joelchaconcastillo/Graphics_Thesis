
Algorithm=source/MOEAD
rm byseeds/*
for algorithm in MOEAD AVSDMOEAD;
do
  for nvar in 50 100 250 500;
  do
    for instance in DTLZ1 DTLZ2 DTLZ3 DTLZ4 DTLZ5 DTLZ6 DTLZ7 UF1 UF2 UF3 UF4 UF5 UF6 UF7 WFG1 WFG2 WFG3 WFG4 WFG5 WFG6 WFG7 WFG8 WFG9;
    do
         for seed in {1..35};
         do
            head -n $seed source/${algorithm}/${instance}_2_${nvar} | tail -1 >> byseeds/${algorithm}/${seed}_2_${nvar}
         done
    done
    for i in DTLZ1 DTLZ2 DTLZ3 DTLZ4 DTLZ5 DTLZ6 DTLZ7 UF8 UF9 UF10 WFG1 WFG2 WFG3 WFG4 WFG5 WFG6 WFG7 WFG8 WFG9;
    do
         for seed in {1..35};
         do
            head -n $seed source/${algorithm}/${instance}_3_${nvar} | tail -1 >> byseeds/${algorithm}/${seed}_3_${nvar}
         done
    done
  done
    for nobj in 2 3;
    do
        for nvar in 50 100 250;
        do
         for seed in {1..35}
         do
      	   echo -n \"${nvar}\"' ' >> ${algorithm}_${nobj}
    	   cat byseeds/${algorithm}/${seed}_${nobj}_${nvar} | awk -F'\t' '{ sum += $1 } END { print sum / NR }' >> ${algorithm}_${nobj}
         done
         echo  >> ${algorithm}_${nobj}
         echo  >> ${algorithm}_${nobj}
       done
        nvar=500
        for seed in {1..35}
         do
      	   echo -n \"${nvar}\"' ' >> ${algorithm}_${nobj}
    	   cat byseeds/${algorithm}/${seed}_${nobj}_${nvar} | awk -F'\t' '{ sum += $1 } END { print sum / NR }' >> ${algorithm}_${nobj}
         done
  done
done
