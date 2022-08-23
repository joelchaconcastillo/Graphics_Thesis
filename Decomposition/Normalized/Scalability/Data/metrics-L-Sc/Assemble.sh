for nvar in 50 100 250 500
do
#### moead...
PATH1=/home/joel.chacon/Final_Experiment_Decomposition/moead_cpp_base-Sc-L/POF/
#PATH1=/home/joel.chacon/puerto_interior/MOEA-D-DE/moead_cec2009_20110505/moead_cpp/POF
   for instance in WFG1 WFG2 WFG3 WFG4 WFG5 WFG6 WFG7 WFG8 WFG9 UF1 UF2 UF3 UF4 UF5 UF6 UF7 DTLZ1 DTLZ2 DTLZ3 DTLZ4 DTLZ5 DTLZ6 DTLZ7
   do
      for sed in {1..35}   
      do
      tail -100 $PATH1/POF_MOEAD_${instance}_RUN${sed}_seed*_nobj_2_nvar_${nvar}_* > MOEA-D/${instance}_2_${sed}_${nvar}
      done
   done
   for instance in WFG1 WFG2 WFG3 WFG4 WFG5 WFG6 WFG7 WFG8 WFG9 UF8 UF9 UF10 DTLZ1 DTLZ2 DTLZ3 DTLZ4 DTLZ5 DTLZ6 DTLZ7
   do
      for sed in {1..35}   
      do
      tail -100 $PATH1/POF_MOEAD_${instance}_RUN${sed}_seed*_nobj_3_nvar_${nvar}_* > MOEA-D/${instance}_3_${sed}_${nvar}
      done
   done
   #nsgaii
#PATH1=/home/joel.chacon/puerto_interior/jMetalCpp-1.7-DE/NSGAII-Scalability_middle_term   
#   for instance in WFG1 WFG2 WFG3 WFG4 WFG5 WFG6 WFG7 WFG8 WFG9 UF1 UF2 UF3 UF4 UF5 UF6 UF7 DTLZ1 DTLZ2 DTLZ3 DTLZ4 DTLZ5 DTLZ6 DTLZ7
#   do
#      for sed in {1..35}
#      do
#      cat $PATH1/OBJ_NSGAII_SBX_POLYNOMIAL_EVALUATIONS_2500000_${instance}_SEED_${sed}_2_vars${nvar}.txt | tail -100 > NSGAII/SBX/POF/${instance}_2_${sed}_${nvar}
#      done
#   done
#   for instance in WFG1 WFG2 WFG3 WFG4 WFG5 WFG6 WFG7 WFG8 WFG9 UF8 UF9 UF10 DTLZ1 DTLZ2 DTLZ3 DTLZ4 DTLZ5 DTLZ6 DTLZ7
#   do
#      for sed in {1..35}
#      do
#      cat $PATH1/OBJ_NSGAII_SBX_POLYNOMIAL_EVALUATIONS_2500000_${instance}_SEED_${sed}_3_vars${nvar}.txt | tail -100 > NSGAII/SBX/POF/${instance}_3_${sed}_${nvar}
#      done
#   done
# ##r2-emoa 
#   PATH1=/home/joel.chacon/R2EMOA
#   
#   for instance in WFG1 WFG2 WFG3 WFG4 WFG5 WFG6 WFG7 WFG8 WFG9 UF1 UF2 UF3 UF4 UF5 UF6 UF7 DTLZ1 DTLZ2 DTLZ3 DTLZ4 DTLZ5 DTLZ6 DTLZ7
#   do
#      for sed in {1..35}
#      do
#      cat $PATH1/${instance}_2_${sed}_nvar_${nvar} | tail -100 > R2MOEA/SBX/POF/${instance}_2_${sed}_${nvar}
#      done
#   done
#   for instance in WFG1 WFG2 WFG3 WFG4 WFG5 WFG6 WFG7 WFG8 WFG9 UF8 UF9 UF10 DTLZ1 DTLZ2 DTLZ3 DTLZ4 DTLZ5 DTLZ6 DTLZ7
#   do
#      for sed in {1..35}
#      do
#      cat $PATH1/${instance}_3_${sed}_nvar_${nvar} | tail -100 > R2MOEA/SBX/POF/${instance}_3_${sed}_${nvar}
#      done
#   done
#   PATH1=/home/joel.chacon/puerto_interior/NSGA-III-Scalability/ManyEAs/src/NSGAIII
#   
#   for instance in WFG1 WFG2 WFG3 WFG4 WFG5 WFG6 WFG7 WFG8 WFG9 UF1 UF2 UF3 UF4 UF5 UF6 UF7 DTLZ1 DTLZ2 DTLZ3 DTLZ4 DTLZ5 DTLZ6 DTLZ7
#   do
#      for sed in {1..35}
#      do
#      cat $PATH1/OBJ_NSGAIII_SBX_25000_${instance}_SEED_${sed}_2_vars${nvar}.txt | tail -100 > NSGAIII/SBX/POF/${instance}_2_${sed}_${nvar}
#      done
#   done
#   for instance in WFG1 WFG2 WFG3 WFG4 WFG5 WFG6 WFG7 WFG8 WFG9 UF8 UF9 UF10 DTLZ1 DTLZ2 DTLZ3 DTLZ4 DTLZ5 DTLZ6 DTLZ7
#   do
#      for sed in {1..35}
#      do
#      cat $PATH1/OBJ_NSGAIII_SBX_25000_${instance}_SEED_${sed}_3_vars${nvar}.txt | tail -100 > NSGAIII/SBX/POF/${instance}_3_${sed}_${nvar}
#      done
#   done
#  ###vsd-moea/d
#   PATH1=/home/joel.chacon/code_decomposition_vsd_moea_d/vsd-moea-d-public-scalability/POF_middle_tunning
#   PATH1=/home/joel.chacon/code_decomposition_vsd_moea_d/vsd-moead-opt-v1-without-elite/POF
#for df in 0.1 0.2 0.3 0.4
#do	
#   for instance in WFG1 WFG2 WFG3 WFG4 WFG5 WFG6 WFG7 WFG8 WFG9 UF1 UF2 UF3 UF4 UF5 UF6 UF7 DTLZ1 DTLZ2 DTLZ3 DTLZ4 DTLZ5 DTLZ6 DTLZ7
#   do
#      for sed in {1..35}
#      do
#      cat $PATH1/POF_MOEAD_${instance}_RUN${sed}_*_nobj_2_nvar_${nvar}_DF_${df}* | tail -100 | cut -d' ' -f1,3 > VSD-MOEA-D_${df}/${instance}_2_${sed}_${nvar}
# #      cat $PATH1/POF_MOEAD_${instance}_RUN${sed}_*_nobj_2_nvar_${nvar} | tail -100 | cut -d' ' -f1,3 > VSD-MOEA-D/SBX/POF/${instance}_2_${sed}_${nvar}
#      done
#   done
#   for instance in WFG1 WFG2 WFG3 WFG4 WFG5 WFG6 WFG7 WFG8 WFG9 UF8 UF9 UF10 DTLZ1 DTLZ2 DTLZ3 DTLZ4 DTLZ5 DTLZ6 DTLZ7
#   do
#      for sed in {1..35}
#      do
#      cat $PATH1/POF_MOEAD_${instance}_RUN${sed}_*_nobj_3_nvar_${nvar}_DF_${df}* | tail -100 | cut -d' ' -f1,3,5 > VSD-MOEA-D_${df}/${instance}_3_${sed}_${nvar}
##      cat $PATH1/POF_MOEAD_${instance}_RUN${sed}_*_nobj_3_nvar_${nvar} | tail -100 | cut -d' ' -f1,3,5 > VSD-MOEA-D/SBX/POF/${instance}_3_${sed}_${nvar}
#      done
#   done
#done
   PATH1=/home/joel.chacon/Final_Experiment_Decomposition/vsd-moea-d-base-L-Indicator-Adaptation_ASF_V1_Sc/POF
   for instance in WFG1 WFG2 WFG3 WFG4 WFG5 WFG6 WFG7 WFG8 WFG9 UF1 UF2 UF3 UF4 UF5 UF6 UF7 DTLZ1 DTLZ2 DTLZ3 DTLZ4 DTLZ5 DTLZ6 DTLZ7
   do
      for sed in {1..35}
      do
       cat $PATH1/v2_POF_MOEAD_${instance}_RUN${sed}_*_nobj_2_nvar_${nvar}_* | tail -100 | cut -d' ' -f1,2 > VSD-MOEA-D/${instance}_2_${sed}_${nvar}
      done
   done
   for instance in WFG1 WFG2 WFG3 WFG4 WFG5 WFG6 WFG7 WFG8 WFG9 UF8 UF9 UF10 DTLZ1 DTLZ2 DTLZ3 DTLZ4 DTLZ5 DTLZ6 DTLZ7
   do
      for sed in {1..35}
      do
      cat $PATH1/v2_POF_MOEAD_${instance}_RUN${sed}_*_nobj_3_nvar_${nvar}_* | tail -100 | cut -d' ' -f1,2,3 > VSD-MOEA-D/${instance}_3_${sed}_${nvar}
      done
   done
done
