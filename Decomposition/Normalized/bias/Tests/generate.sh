PATHA=HV/
for b in 1.0 0.5 0.25 0.125 0.0625 0.03125 0.015625 0.0078125 0.00390625 0.001953125 0.000976562;
do
  for i in BT1 BT2 BT3 BT4 BT5 BT6 BT7 BT8;
  do
    echo "--"${i}_2_$b;
    for j in MOEA_D NSGA-II NSGA-III R2-EMOA VSD-MOEA_D
    do
    echo ${PATHA}/${j}/${i}_2_$b
    done
  done
  for i in BT9;
  do
    echo "--"${i}_3_$b;
    for j in MOEA_D NSGA-II NSGA-III R2-EMOA VSD-MOEA_D
    do
    echo ${PATHA}/${j}/${i}_3_$b
    done
  done
done

