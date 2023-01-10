transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/ELEC241/DigitalSystems/tasks/Task204-LogicLevels {C:/ELEC241/DigitalSystems/tasks/Task204-LogicLevels/uop_dlatch.sv}

