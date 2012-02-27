include prefix.inc

.PHONY: ise
ise:
	source ${XILINX_SCRIPT} && cd ./leon3-digilent-atlys && make ise

.PHONY: prog-fpga
prog-fpga:
	source ${XILINX_SCRIPT} && cd ./leon3-digilent-atlys && make ise-prog-fpga

.PHONY: grmon
grmon:
	export PATH=${BIN}:${PATH} && grmon -eth -u -ip ${ip}

.PHONY: tsim
tsim:
	export PATH=${BIN}:${PATH} && tsim-leon3 -nosram -nfp

.PHONY: mp3tosrec
mp3tosrec:
	export PATH=${BIN}:${PATH} && bin2srec -o 41000000 -a 4 -l 16 ${mp3} > mp3.srec
