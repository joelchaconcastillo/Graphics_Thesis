#set terminal pngcairo
#set terminal postscript portrait enhanced mono dashed lw 1 "Helvetica" 14 
set terminal postscript enhanced 'Times' color 
set terminal postscript enhanced font "Helvetica" 28
set output "nsgaii3obj.eps" 
set ylabel ""
set xlabel ""
#unset colorbox
set title "Problems with three objectives"
set ytics ("CR=0.00" 0,"CR=0.25" 1,"CR=0.50" 2, "CR=0.75" 3, "CR=1.00" 4)
set xtics ("F=0.25" 0,"F=0.50" 1,"F=0.75" 2, "F=1.00" 3)
#set cbrange [0.8:0.98]

plot 'nsgaii3obj.txt' matrix using 1:2:3 with image title '', '' matrix using 1:2:(sprintf("%.3f", $3)) with labels title '' textcolor "green"
