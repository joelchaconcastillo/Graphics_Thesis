rm byseeds/*
for ITV in 0.0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0;
do
  for instance in DTLZ1 DTLZ2 DTLZ3 DTLZ4 DTLZ5 DTLZ6 DTLZ7 UF1 UF2 UF3 UF4 UF5 UF6 UF7 WFG1 WFG2 WFG3 WFG4 WFG5 WFG6 WFG7 WFG8 WFG9;
  do
      for seed in {1..35};
      do
          head -n $seed source/${instance}_2_${ITV} | tail -1 >> byseeds/${seed}_2_${ITV}
      done
  done
    for i in DTLZ1 DTLZ2 DTLZ3 DTLZ4 DTLZ5 DTLZ6 DTLZ7 UF8 UF9 UF10 WFG1 WFG2 WFG3 WFG4 WFG5 WFG6 WFG7 WFG8 WFG9;
    do
      for seed in {1..35};
      do
            head -n $seed source/${instance}_3_${ITV} | tail -1 >> byseeds/${seed}_3_${ITV}
      done
    done
  done
algorithm="AVSDMOEAD"
    for nobj in 2 3;
    do
        for ITV in 0.0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9;
        do
         for seed in {1..35}
         do
      	   echo -n \"${ITV}\"' ' >> ${algorithm}_${nobj}
    	   cat byseeds/${seed}_${nobj}_${ITV} | awk -F'\t' '{ sum += $1 } END { print sum / NR }' >> ${algorithm}_${nobj}
         done
         echo  >> ${algorithm}_${nobj}
         echo  >> ${algorithm}_${nobj}
       done
        ITV=1.0
        for seed in {1..35}
         do
      	   echo -n \"${ITV}\"' ' >> ${algorithm}_${nobj}
    	   cat byseeds/${seed}_${nobj}_${ITV} | awk -F'\t' '{ sum += $1 } END { print sum / NR }' >> ${algorithm}_${nobj}
         done
  done
