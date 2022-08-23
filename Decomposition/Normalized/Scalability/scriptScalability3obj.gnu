set terminal postscript enhanced 'Times' color 
set terminal postscript enhanced font "Helvetica" 22
set output "scalability_3obj.eps"

set key font ",18"
set yrange [0.6:1.1]

set ylabel "Normalized HV"
set xlabel "Number of Decision Variables"
set title "Scalability with three objectives"
set autoscale xfix

#set xtics 0,0.2,1.0
set style fill solid 0.25 border -1
set style boxplot nooutliers pointtype 7
set style data boxplot
set boxwidth 0.03

stats "MOEAD_3" using 2 nooutput

plot for [i=0:STATS_blocks-1] "AVSDMOEAD_3" using (-0.02+0.2*i):2 index i lt 1 lc rgb 'white'title (i==0 ? 'AVSD-MOEA/D' : ''),\
     for [i=0:STATS_blocks-1] "MOEAD_3" using (0.02+0.2*i):2 index i lt 1 lc rgb 'green' title (i==0 ? 'MOEA/D' : '') ,\
     for [i=0:STATS_blocks-1] "MOEAD_3" using (0.2*i+0.02):(-1):xticlabel(1) index i w l notitle
