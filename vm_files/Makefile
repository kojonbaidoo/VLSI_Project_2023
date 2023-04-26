#VHDL FSM Example
fsm:
	ghdl -a four_bit_divider.vhd
	ghdl -a four_bit_divider_tb.vhd
	ghdl -e four_bit_divider_tb
	ghdl -r four_bit_divider_tb  --wave=./four_bit_divider_tb.ghw --stop-time=40ns

newfsm:
	ghdl -a newFsmBehav.vhd
	ghdl -a newFsmBehav_tb.vhd
	ghdl -e newFsmBehav_tb
	ghdl -r newFsmBehav_tb  --wave=./newFsmBehav_tb.ghw --stop-time=750ns
	
newverilog: 
	yosys -m ghdl -p 'ghdl newFsmBehav.vhd -e newFsmBehav; write_verilog newFsmBehav.v'

verilog: 
	yosys -m ghdl -p 'ghdl four_bit_divider.vhd -e four_bit_divider; write_verilog four_bit_divider.v'	
	

newclean:
	rm *.o
	rm *.cf
	rm *.ghw
	rm newFsmbehav
	rm newFsmbehav_tb
	
clean:
	rm *.o
	rm *.cf
	rm *.ghw
	rm four_bit_divider
	rm four_bit_divider_tb
