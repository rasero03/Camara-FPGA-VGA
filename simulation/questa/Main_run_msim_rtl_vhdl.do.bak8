transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/FPGA/Proy(mod)/Main.vhd}
vcom -93 -work work {C:/FPGA/Proy(mod)/Rxdata.vhd}
vcom -93 -work work {C:/FPGA/Proy(mod)/Memory.vhd}
vcom -93 -work work {C:/FPGA/Proy(mod)/memoria.vhd}
vcom -93 -work work {C:/FPGA/Proy(mod)/vga_controller.vhd}

vcom -93 -work work {C:/FPGA/Proy(mod)/tb_main.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  tb_main

add wave *
view structure
view signals
run 30 ms
