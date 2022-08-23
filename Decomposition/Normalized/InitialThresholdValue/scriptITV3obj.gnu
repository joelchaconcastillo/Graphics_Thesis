#set terminal pngcairo
#set terminal postscript portrait enhanced mono dashed lw 1 "Helvetica" 14 
set terminal postscript enhanced 'Times' color 
set terminal postscript enhanced font "Helvetica" 22
set output "initial_distance_factor_3obj.eps" 
set key font ",18"
set yrange [0.75:1]
set ylabel "Normalized HV"
set xlabel "Initial Threshold Value"
set title "Problems with three objectives"
set autoscale xfix

set xtics 0,0.1,1.0
set style fill solid 0.25 border -1
set style boxplot nooutliers pointtype 7
set style data boxplot
set boxwidth 4


#MOEAD= "#99ffff"; CPDEA= "#4671d5"
##set terminal pngcairo
##set output "scalability_2obj.png"
#
#set terminal postscript enhanced 'Times' color 
#set terminal postscript enhanced font "Helvetica" 22
#set output "Threshold_2obj.eps"
#
#
#
#set yrange [0.8:1.0]
#set ylabel "Normalized HV"
#set xlabel "Initial Threshold Value"
#set title "Problems with two objectives"
#set autoscale xfix
#
#set style fill solid 0.25 border -1
#set style boxplot nooutliers pointtype 7
#set style data boxplot
#set boxwidth 4

stats "AVSDMOEAD_2" using 2 nooutput
#
#
#

plot for [i=0:STATS_blocks-1] "AVSDMOEAD_3" using (8*i):2 index i lt 1 lc rgb 'white'title '',\
     for [i=0:STATS_blocks-1] "AVSDMOEAD_3" using (8*i):(-1):xticlabel(1) index i w l notitle
