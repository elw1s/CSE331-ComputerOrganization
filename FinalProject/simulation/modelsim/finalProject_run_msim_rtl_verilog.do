transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/altera/13.1/Final {C:/altera/13.1/Final/and_4bit.v}
vlog -vlog01compat -work work +incdir+C:/altera/13.1/Final {C:/altera/13.1/Final/control.v}

