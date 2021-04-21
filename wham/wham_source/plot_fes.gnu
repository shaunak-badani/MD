set term png
set output 'FES.png'
p'pmf.dat' u 1:2 w l
quit
