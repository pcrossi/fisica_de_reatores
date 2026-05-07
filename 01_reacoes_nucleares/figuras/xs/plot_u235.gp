set term svg size 600,400 dynamic enhanced fname 'arial' fsize 11 butt solid
set output 'data_u235_nf.svg'

set title 'Secção de Choque de Fissão para o U^{235}'

set xlabel "Energia [Mev]"
set ylabel "Secção de Choque [b]"

#set xrange [5.30E-01:9.18E-01]
#set yrange [1.61E+01:1.945E+02] 

set size 1
set logscale y 10
set logscale x 10
set style data lines
set format y "10^{%L}"
set format x "10^{%L}"

plot "data_u235_nf" using ($1/1000000):2 t "fissão - U^{235}"  lt 1 lc rgb 'black'

set output 'data_u235_ng.svg'
set title 'Secção de Choque de Captura para o U^{235}'
plot "data_u235_ng" using ($1/1000000):2 t "Captura - U^{235}"  lt 1 lc rgb 'black'


set output 'data_u235_tot.svg'
set title 'Secção de Choque Total para o U^{235}'
plot "data_u235_tot" using ($1/1000000):2 t "Total - U^{235}"  lt 1 lc rgb 'black'

set output 'data_u235_ng_nf.svg'
set title 'Secção de Choque '
plot "data_u235_nf" using ($1/1000000):2 t "Fissão - U^{235}"  lt 1 lc rgb 'blue',"data_u235_ng" using ($1/1000000):2 t "Captura - U^{235}"  lt 1 lc rgb 'red'


