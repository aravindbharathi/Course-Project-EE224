transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/shyam.SHYAMUDA/Downloads/Course-Project-EE224-main/Project Part A/Part A/ALU.vhd}
vcom -93 -work work {C:/Users/shyam.SHYAMUDA/Downloads/Course-Project-EE224-main/Project Part A/Part A/comp_xor.vhd}
vcom -93 -work work {C:/Users/shyam.SHYAMUDA/Downloads/Course-Project-EE224-main/Project Part A/Part A/comp_nand.vhd}
vcom -93 -work work {C:/Users/shyam.SHYAMUDA/Downloads/Course-Project-EE224-main/Project Part A/Part A/mux.vhd}
vcom -93 -work work {C:/Users/shyam.SHYAMUDA/Downloads/Course-Project-EE224-main/Project Part A/Part A/comp_add.vhd}
vcom -93 -work work {C:/Users/shyam.SHYAMUDA/Downloads/Course-Project-EE224-main/Project Part A/Part A/GPGG.vhd}
vcom -93 -work work {C:/Users/shyam.SHYAMUDA/Downloads/Course-Project-EE224-main/Project Part A/Part A/GG.vhd}
vcom -93 -work work {C:/Users/shyam.SHYAMUDA/Downloads/Course-Project-EE224-main/Project Part A/Part A/comp_zero.vhd}
vcom -93 -work work {C:/Users/shyam.SHYAMUDA/Downloads/Course-Project-EE224-main/Project Part A/Part A/mux2.vhd}

vcom -93 -work work {C:/Users/shyam.SHYAMUDA/Downloads/Course-Project-EE224-main/Project Part A/Part A/../tb_ALU.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclone10lp -L rtl_work -L work -voptargs="+acc"  tb_ALU

add wave *
view structure
view signals
run -all
