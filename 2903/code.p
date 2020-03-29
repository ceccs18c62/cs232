#+begin_src gnuplot :var data=xtics :exports code :file file.png
  #size of the ouput png
set terminal png size 2440,1400

#output in .png file
set output 'Total_corona_spread_Kerala.png
set xtics rotate by -80
set xlabel "Date(2020)" font "Times Roman,20"
set ylabel "no. of patients" font "Times Roman,20"
set title "Total corona Spread in India" font "Times Roman,28"
set tics font ",20"
set key font ",20"
set grid
f(x)=x**1
set yrange [0:f(180)]
set ytics ("0" f(0),"5" f(5),"10" f(10),"15" f(15),"20" f(20),"25" f(25),"30" f(30),"35" f(35),"40" f(40),"45" f(45),"50" f(50),"55" f(55),"60" f(60),"65" f(65),"70" f(70),"75" f(75),"80" f(80),"85" f(85),"90" f(90),"95" f(95),"100" f(100),"105" f(105),"110" f(110),"115" f(115),"120" f(120),"125" f(125),"130" f(130),"135" f(135),"140" f(140),"145" f(145),"150" f(150),"155" f(155),"160" f(160),"165" f(165),"170" f(170),"175" f(175),"180" f(180))
plot 'input_k.dat' using 2:xticlabels(1) w lp lw 2 notitle

#+end_src