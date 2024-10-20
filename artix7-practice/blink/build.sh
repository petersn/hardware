#!/bin/bash
set -ex

yosys -p "synth_xilinx -flatten -abc9 -nobram -arch xc7 -top top; write_json top.json" top.v

/home/snp/local/nextpnr-xilinx/nextpnr-xilinx --chipdb /home/snp/local/nextpnr-xilinx/xilinx/xc7a35t.bin --xdc top.xdc --json top.json --write top_routed.json --fasm top.fasm

fasm2frames --part xc7a35tcsg325-1 --db-root /home/snp/local/prjxray-db/artix7 top.fasm > top.frames

xc7frames2bit --part_file /home/snp/local/prjxray-db/artix7/xc7a35tcsg325-1/part.yaml --part_name xc7a35tcsg325-1 --frm_file top.frames --output_file top.bit

