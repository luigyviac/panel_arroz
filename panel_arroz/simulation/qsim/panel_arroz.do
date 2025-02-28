onerror {exit -code 1}
vlib work
vlog -work work panel_arroz.vo
vlog -work work Waveform.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.panel_arroz_vlg_vec_tst -voptargs="+acc"
vcd file -direction panel_arroz.msim.vcd
vcd add -internal panel_arroz_vlg_vec_tst/*
vcd add -internal panel_arroz_vlg_vec_tst/i1/*
run -all
quit -f
