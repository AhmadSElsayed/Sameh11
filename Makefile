## Ahmad Sameh Elsayed

# Define path to each library (manually)
LIB_WORK = Sameh11
LIB_IEEE = /home/ahmadelsayed/Desktop/intelFPGA_pro/17.0/modelsim_ase/linuxaloem/../ieee
LIB_STD = /home/ahmadelsayed/Desktop/intelFPGA_pro/17.0/modelsim_ase/linuxaloem/../std
LIB_SAMEH11 = Sameh11

# Define path to each design unit
IEEE__numeric_std = $(LIB_IEEE)/_lib.qdb
IEEE__math_real = $(LIB_IEEE)/_lib.qdb
IEEE__std_logic_1164 = $(LIB_IEEE)/_lib.qdb
STD__textio = $(LIB_STD)/_lib.qdb
SAMEH11__genericregister__default = $(LIB_SAMEH11)/_lib.qdb
SAMEH11__genericregister = $(LIB_SAMEH11)/_lib.qdb
SAMEH11__flagregister__default = $(LIB_SAMEH11)/_lib.qdb
SAMEH11__flagregister = $(LIB_SAMEH11)/_lib.qdb
SAMEH11__eu__default = $(LIB_SAMEH11)/_lib.qdb
SAMEH11__eu = $(LIB_SAMEH11)/_lib.qdb
SAMEH11__cu__default = $(LIB_SAMEH11)/_lib.qdb
SAMEH11__cu = $(LIB_SAMEH11)/_lib.qdb
SAMEH11__alu__default = $(LIB_SAMEH11)/_lib.qdb
SAMEH11__alu = $(LIB_SAMEH11)/_lib.qdb
VCOM = vcom
VLOG = vlog
VOPT = vopt
SCCOM = sccom

whole_library : $(LIB_SAMEH11)/_lib.qdb

$(LIB_SAMEH11)/_lib.qdb : ALU.vhd \
		$(IEEE__math_real) \
		$(IEEE__numeric_std) \
		$(STD__textio) \
		$(IEEE__std_logic_1164) ControlUnit.vhd \
		$(STD__textio) \
		$(IEEE__std_logic_1164) ExecutionUnit.vhd \
		$(STD__textio) \
		$(IEEE__std_logic_1164) FlagRegister.vhd \
		$(STD__textio) \
		$(IEEE__std_logic_1164) GenericRegister.vhd \
		$(STD__textio) \
		$(IEEE__std_logic_1164)
	$(VCOM) -2002 -work Sameh11 -quiet ALU.vhd
	$(VCOM) -2002 -work Sameh11 -quiet ControlUnit.vhd
	$(VCOM) -2002 -work Sameh11 -quiet ExecutionUnit.vhd
	$(VCOM) -2002 -work Sameh11 -quiet FlagRegister.vhd
	$(VCOM) -2002 -work Sameh11 -quiet GenericRegister.vhd

