#PATHA=/home/joel.chacon/Current/MyResearchTopics/Data_Dominance/StateOfTheArt_2/HV
PATHA=../
for j in TriMOEATAR_250000
do
for i in WFG1 WFG2 WFG3 WFG4 WFG5 WFG6 WFG7 WFG8 WFG9 DTLZ1 DTLZ2 DTLZ3 DTLZ4 DTLZ5 DTLZ6 DTLZ7 UF1 UF2 UF3 UF4 UF5 UF6 UF7;
 #for j in CPDEA_2500000 TriMOEATAR_2500000 VR_MOEAD_2500000 VR_NSGAII_2500000 VR_NSGAIII_2500000 NSGAII_2500000 NSGAIII_2500000
  do
       echo "--"${i}_2;
    for pc in 0.0 0.2 0.5 0.8 1.0;
    do
       for f in 0.2 0.4 0.6 0.7 1.0
       do
       echo ${PATHA}/${j}/${i}_2_pc_${pc}_f_${f}
      done
    done
  done
done
 for j in TriMOEATAR_250000
do
  for i in WFG1 WFG2 WFG3 WFG4 WFG5 WFG6 WFG7 WFG8 WFG9 DTLZ1 DTLZ2 DTLZ3 DTLZ4 DTLZ5 DTLZ6 DTLZ7 UF8 UF9 UF10;
 #for j in CPDEA_2500000 TriMOEATAR_2500000 VR_MOEAD_2500000 VR_NSGAII_2500000 VR_NSGAIII_2500000 NSGAII_2500000 NSGAIII_2500000
  do
       echo "--"${i}_3; 
    for pc in 0.0 0.2 0.5 0.8 1.0;
    do
      for f in 0.2 0.4 0.6 0.7 1.0
	    do
       echo ${PATHA}/${j}/${i}_3_pc_${pc}_f_${f}
      done
    done
  done
done
