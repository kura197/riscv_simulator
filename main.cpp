#include <string>
#include <iostream>
#include <fstream>
#include "emulator.hpp"
#include "instruction.hpp"
#include "trap.hpp"
#include <gflags/gflags.h>
#include "gdb.hpp"

#define SECTSIZE 512

void ioport(Emulator* emu, ifstream *binary);

DEFINE_bool(d, false, "set debug flag");
DEFINE_bool(g, false, "wait gdb remote");

using namespace std;

int main(int argc, char* argv[]){
	gflags::ParseCommandLineFlags(&argc, &argv, true);
	if(argc==1){
		cout<<"no input binary" << endl;
		return 1;
	}
	else if(argc>2){
		cout<< "too many input files." << endl;
		return 1;
	}
	ifstream binary(argv[1],ios::in|ios::binary);
	if(!binary){
		cout << "can not open binary file" << endl;
		return 1;
	}
	Emulator emu;
	emu.load_memory(&binary, 0x0, 0x7c00, 0x200);
	rsp gdb(&emu);
	init_instruction();
	uint32_t instr;
	while(1){
		interrupt(&emu);
		if(FLAGS_g && gdb.attach){
			if(gdb.step){
				gdb.stop = true;
				gdb.step = false;
				gdb.sigval = 5;
				gdb.rsp_report_exception();
			}else{
				for(int x : gdb.bp){
					if(emu.PC == x){
						gdb.stop = true;
						gdb.sigval = 5;
						gdb.rsp_report_exception();
						break;
					}
				}
			}
			if(gdb.handle_interrupt_rsp() == 0){
				gdb.sigval = 5;
				cout << "interrupt sygnal" << endl;
				gdb.stop = 1;
			}
			while(gdb.stop){
				gdb.handle_rsp();
			}
		}
		instr = emu.fetch();
		//finish
		if(instr == 0x00000000)
			break;
		if(FLAGS_d){
			cout << endl;
			emu.dump_registers(0);
			//emu.dump_memory(0x10000,16);
			printf("PC = %08x, Code = %08x, runlevel = %d\n",emu.PC-4,instr,emu.runlevel);
		}
		//instruction
		decoder_t d;
		d = decode(instr);
		instruction[d.opcode](&emu,d);
		ioport(&emu, &binary);
	}
	emu.dump_registers(0);
	printf("program ended successfully at PC = %08x\n", emu.PC-4);
	//emu.dump_memory(0xf00,0x65);

	binary.close();
	return 0;
}

void ioport(Emulator* emu, ifstream *binary){

/*  READ DISK DATA  */
//0x1F3:	read op
//0x1F4 - 0x1F7:	phisical address
//0x1F8 - 0x1FB:	read address(offset)
//0x1FC - 0x1FF:	read size
	if(emu->memory[0x1F3] == 1){
		emu->memory[0x1F3] = 0;
		uint32_t pa = emu->get_mem32(0x1F4);
		uint32_t offset = emu->get_mem32(0x1F8) * SECTSIZE;
		uint32_t size = emu->get_mem32(0x1FC);
		if(FLAGS_d){
			emu->dump_memory(0x1F4,12);
		}
		emu->load_memory(binary, offset, pa, size);
	}
}


