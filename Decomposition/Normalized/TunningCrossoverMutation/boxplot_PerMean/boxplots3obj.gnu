#set terminal pngcairo
#set terminal postscript portrait enhanced mono dashed lw 1 "Helvetica" 14 
set terminal postscript enhanced 'Times' color 
set terminal postscript enhanced font "Helvetica" 16
set output "Distribution3obj.eps" 
set yrange [0.5:1]
set ylabel "Normalized HV"
set xlabel ""
set title "Problems with three objectives"
set style fill solid 0.5 border -1
set style boxplot nooutliers pointtype 7
set style data boxplot
set boxwidth 4

stats "3objMeans" using 2 nooutput
#
#
#

plot for [i=0:STATS_blocks-1] "3objMeans" using (i*10):2 index i lt 1 lc rgb 'white'title '',\
     for [i=0:STATS_blocks-1] "3objMeans" using (i*10):(-1):xticlabel(1) index i w l notitle
