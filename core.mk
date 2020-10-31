CORE_NAME:=TIMER
IS_CORE:=1
USE_NETLIST ?=0

#PATHS
TIMER_HW_DIR:=$(TIMER_DIR)/hardware
TIMER_HW_INC_DIR:=$(TIMER_HW_DIR)/include
TIMER_DOC_DIR:=$(TIMER_DIR)/document
TIMER_SUBMODULES_DIR:=$(TIMER_DIR)/submodules
INTERCON_DIR:=$(TIMER_DIR)/submodules/INTERCON
LIB_DIR:=$(TIMER_DIR)/submodules/LIB
TEX_DIR:=$(TIMER_DIR)/submodules/TEX
REMOTE_ROOT_DIR ?= sandbox/iob-soc/submodules/TIMER

#
#SIMULATION
#
SIMULATOR ?=icarus
SIM_SERVER ?=localhost
SIM_USER ?=$(USER)

#SIMULATOR ?=ncsim
#SIM_SERVER ?=micro7.lx.it.pt
#SIM_USER ?=user19

SIM_DIR ?=hardware/simulation/$(SIMULATOR)

#
#FPGA
#
#FPGA_FAMILY ?=CYCLONEV-GT
#FPGA_FAMILY ?=XCKU
FPGA_FAMILY ?=XC7Z
FPGA_SERVER ?=localhost
#FPGA_SERVER ?=pudim-flan.iobundle.com
FPGA_USER ?= $(USER)

ifeq ($(FPGA_FAMILY),XCKU)
	FPGA_COMP:=vivado
	FPGA_PART:=xcku040-fbva676-1-c
else ifeq ($(FPGA_FAMILY),XC7Z)
	FPGA_COMP:=vivado
	FPGA_PART=XC7Z030
else
	FPGA_COMP:=quartus
	FPGA_PART:=5CGTFD9E5F35C7
endif
FPGA_DIR ?=$(TIMER_DIR)/hardware/fpga/$(FPGA_COMP)

ifeq ($(FPGA_COMP),vivado)
FPGA_LOG:=vivado.log
else ifeq ($(FPGA_COMP),quartus)
FPGA_LOG:=quartus.log
endif

#
#DOCUMENT
#
DOC_TYPE:=pb
#DOC_TYPE:=ug
INTEL ?=1
XILINX ?=1

VLINE:="V$(VERSION)"
version.txt:
ifeq ($(VERSION),)
	$(error "variable VERSION is not set")
endif
	echo $(VLINE) > $@

.PHONY: version.txt
