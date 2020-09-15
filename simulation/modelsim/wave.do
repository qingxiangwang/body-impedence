onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /dpsd_simu_vlg_tst/clk
add wave -noupdate /dpsd_simu_vlg_tst/fre_w
add wave -noupdate /dpsd_simu_vlg_tst/pha_w
add wave -noupdate -format Analog-Step -height 74 -max 2046.9999999999995 -min -2048.0 -expand /dpsd_simu_vlg_tst/dds_fir_out
add wave -noupdate {/dpsd_simu_vlg_tst/dds_fir_out[0]}
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 4} {4922200000 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {3861922650 ps} {6068523646 ps}
