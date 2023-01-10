transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/ELEC241/DigitalSystems/tasks/Task207-SchematicToHDL {C:/ELEC241/DigitalSystems/tasks/Task207-SchematicToHDL/comb_logic.v}
vlog -sv -work work +incdir+C:/ELEC241/DigitalSystems/tasks/Task207-SchematicToHDL {C:/ELEC241/DigitalSystems/tasks/Task207-SchematicToHDL/mux21.sv}

