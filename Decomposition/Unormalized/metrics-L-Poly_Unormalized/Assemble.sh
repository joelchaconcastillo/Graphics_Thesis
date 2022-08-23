CR=0.75
F=0.75
PATH1=/home/joel.chacon/Final_Experiment_Decomposition/moead_cpp_base-L/POF
 for instance in WFG1 WFG2 WFG3 WFG4 WFG5 WFG6 WFG7 WFG8 WFG9 DTLZ1 DTLZ2 DTLZ3 DTLZ4 DTLZ5 DTLZ6 DTLZ7 UF1 UF2 UF3 UF4 UF5 UF6 UF7
 do
    for sed in {1..35}   
    do
    tail -100 $PATH1/POF_MOEAD_${instance}_RUN${sed}_seed*_nobj_2*_CR_${CR}*_F_${F}* > MOEA_D/${instance}_2_${sed}_CR_${CR}_F_${F}
    done
 done
CR=0.5
F=0.5
 for instance in WFG1 WFG2 WFG3 WFG4 WFG5 WFG6 WFG7 WFG8 WFG9 DTLZ1 DTLZ2 DTLZ3 DTLZ4 DTLZ5 DTLZ6 DTLZ7 UF8 UF9 UF10
 do
    for sed in {1..35}   
    do
    tail -100 $PATH1/POF_MOEAD_${instance}_RUN${sed}_seed*_nobj_3*_CR_${CR}*_F_${F}* > MOEA_D/${instance}_3_${sed}_CR_${CR}_F_${F}
    done
 done
CR=0.75
F=0.5
 PATH1=/home/joel.chacon/Final_Experiment_Decomposition/R2-EMOA-L-Poly/Results 
 for instance in WFG1 WFG2 WFG3 WFG4 WFG5 WFG6 WFG7 WFG8 WFG9 DTLZ1 DTLZ2 DTLZ3 DTLZ4 DTLZ5 DTLZ6 DTLZ7 UF1 UF2 UF3 UF4 UF5 UF6 UF7
 do
    for sed in {1..35}
    do
    cat $PATH1/${instance}_2_${sed}_*_CR_${CR}*_F_${F} | tail -100 > R2-EMOA/${instance}_2_${sed}_CR_${CR}_F_${F}
    done
 done
CR=0.5
F=0.5
 for instance in WFG1 WFG2 WFG3 WFG4 WFG5 WFG6 WFG7 WFG8 WFG9 DTLZ1 DTLZ2 DTLZ3 DTLZ4 DTLZ5 DTLZ6 DTLZ7 UF8 UF9 UF10
 do
    for sed in {1..35}
    do
    cat $PATH1/${instance}_3_${sed}_*_CR_${CR}*_F_${F} | tail -100 > R2-EMOA/${instance}_3_${sed}_CR_${CR}_F_${F}
    done
 done
CR=0.0
F=0.75
PATH1=/home/joel.chacon/Final_Experiment_Decomposition/vsd-moea-d-base-L-Indicator-Adaptation_ASF_V1/POF
#v2_POF_MOEAD_WFG6_RUN10_seed_33_nobj_2_nvar_24_DI_0.800000_DF_0.500000_CR_0.000000_F_0.750000
#PATH1=/home/joel.chacon/Final_Experiment_Decomposition/vsd-moea-d-base-L-Indicator-Adaptation_ASF_V1_tunning/POF
for instance in WFG1 WFG2 WFG3 WFG4 WFG5 WFG6 WFG7 WFG8 WFG9 DTLZ1 DTLZ2 DTLZ3 DTLZ4 DTLZ5 DTLZ6 DTLZ7 UF1 UF2 UF3 UF4 UF5 UF6 UF7
do
   for sed in {1..35}
   do
      tail -100 $PATH1/v2_POF_MOEAD_${instance}_RUN${sed}_seed_*nobj_2*_DI_0.4*_DF_0.5*_CR_${CR}*_F_${F}* | cut -f1,2 -d' '  > VSD-MOEA_D/${instance}_2_${sed} #_CR_${CR}_F_${F}
   done
done
CR=0.0
F=0.75
for instance in WFG1 WFG2 WFG3 WFG4 WFG5 WFG6 WFG7 WFG8 WFG9 DTLZ1 DTLZ2 DTLZ3 DTLZ4 DTLZ5 DTLZ6 DTLZ7 UF8 UF9 UF10
do
   for sed in {1..35}
   do
      tail -100 $PATH1/v2_POF_MOEAD_${instance}_RUN${sed}_seed_*nobj_3*_DI_0.4*_DF_0.5*_CR_${CR}*_F_${F}* | cut -f1,2,3 -d' '  > VSD-MOEA_D/${instance}_3_${sed} #_CR_${CR}_F_${F}
   done
done
CR=0.75
F=0.5
PATH1=/home/joel.chacon/Final_Experiment_Decomposition/jMetalCpp-1.7-DE-L-Poly/NSGAII

   for instance in WFG1 WFG2 WFG3 WFG4 WFG5 WFG6 WFG7 WFG8 WFG9 UF1 UF2 UF3 UF4 UF5 UF6 UF7 DTLZ1 DTLZ2 DTLZ3 DTLZ4 DTLZ5 DTLZ6 DTLZ7
   do
      for sed in {1..35}
      do
      cat $PATH1/OBJ_NSGAII_SBX_POLYNOMIAL_EVALUATIONS_*_${instance}_SEED_${sed}_2_CR_${CR}*_F_${F}*.txt | tail -100 > NSGA-II/${instance}_2_${sed}_CR_${CR}_F_${F}
      done
   done
CR=0.0
F=0.25
   for instance in WFG1 WFG2 WFG3 WFG4 WFG5 WFG6 WFG7 WFG8 WFG9 UF8 UF9 UF10 DTLZ1 DTLZ2 DTLZ3 DTLZ4 DTLZ5 DTLZ6 DTLZ7
   do
      for sed in {1..35}
      do
      cat $PATH1/OBJ_NSGAII_SBX_POLYNOMIAL_EVALUATIONS_*_${instance}_SEED_${sed}_3_CR_${CR}*_F_${F}*.txt | tail -100 > NSGA-II/${instance}_3_${sed}_CR_${CR}_F_${F}
      done
   done
CR=0.75
F=0.25
PATH1=/home/joel.chacon/Final_Experiment_Decomposition/NSGA-III-DE-L-Poly/ManyEAs/src/NSGAIII
   for instance in WFG1 WFG2 WFG3 WFG4 WFG5 WFG6 WFG7 WFG8 WFG9 UF1 UF2 UF3 UF4 UF5 UF6 UF7 DTLZ1 DTLZ2 DTLZ3 DTLZ4 DTLZ5 DTLZ6 DTLZ7
   do
      for sed in {1..35}
      do
      cat $PATH1/OBJ_NSGAIII_DE_*_${instance}_SEED_${sed}_2_vars*_CR_${CR}*_F_${F}* | tail -100 > NSGA-III/${instance}_2_${sed}_CR_${CR}_F_${F}
      done
   done
CR=0.0
F=0.75

   for instance in WFG1 WFG2 WFG3 WFG4 WFG5 WFG6 WFG7 WFG8 WFG9 UF8 UF9 UF10 DTLZ1 DTLZ2 DTLZ3 DTLZ4 DTLZ5 DTLZ6 DTLZ7
   do
      for sed in {1..35}
      do
      cat $PATH1/OBJ_NSGAIII_DE_*_${instance}_SEED_${sed}_3_vars*_CR_${CR}*_F_${F}* | tail -100 > NSGA-III/${instance}_3_${sed}_CR_${CR}_F_${F}
      done
   done
