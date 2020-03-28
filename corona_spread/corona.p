#size of the ouput png
set terminal png size 2640,1400

#output in .png file
set output 'corona_spread_Kerala.png'

#creating bar graph
set boxwidth 0.5 absolute
set style fill solid border -1
set key invert reverse Left outside
set key autotitle columnheader
set style data histograms
set lt 1 lc rgb 'red'
set lt 2 lc rgb '#24A665'
set lt 3 lc rgb 'orange'
set lt 4 lc rgb 'blue'
set lt 5 lc rgb 'yellow'
set lt 6 lc rgb 'green'
set lt 7 lc rgb 'magenta'
set lt 8 lc rgb 'black'
set lt 9 lc rgb 'brown'
set lt 10 lc rgb '#D2B48C' 
set lt 11 lc rgb 'grey'
set lt 12 lc rgb 'cyan'
set lt 13 lc rgb '#E3F2FD'
set lt 14 lc rgb 'purple'
set grid
f(x)=x**1
set yrange [0:f(170)]
set ytics ("0" f(0),"5" f(5),"10" f(10),"15" f(15),"20" f(20),"25" f(25),"30" f(30),"35" f(35),"40" f(40),"45" f(45),"50" f(50),"55" f(55),"60" f(60),"65" f(65),"70" f(70),"75" f(75),"80" f(80),"85" f(85),"90" f(90),"95" f(95),"100" f(100),"105" f(105),"110" f(110),"115" f(115),"120" f(120),"125" f(125),"130" f(130),"135" f(135),"140" f(140),"145" f(145),"150" f(150),"155" f(155),"160" f(160),"165" f(165),"170" f(170))
set style histogram rowstacked
#set xdata time
#set timefmt "%Y-%m-%d
set xlabel "Date(2020)" font "Times Roman,20"
set ylabel "no. of patients" font "Times Roman,20"
set title "Corona Spread in Kerala" font "Times Roman,28"
set tics font ",20"
set key font ",20"

plot 'input.dat' using 2:xtic(1) ti 'Kasaragode','' u 3 ti 'Kannur', '' u 4 ti 'Wayanad','' u 5 ti 'Kozhikode','' u 6 ti 'Malappuram','' u 7 ti 'Palakad','' u 8 ti 'Thrissur','' u 9 ti 'Ernakulam','' u 10 ti 'Idukki','' u 11 ti 'Kottayam','' u 12 ti 'Pathanamthitta','' u 13 ti 'Alappuzha','' u 14 ti 'Kollam','' u 15 ti 'Thiruvanathapuram' 