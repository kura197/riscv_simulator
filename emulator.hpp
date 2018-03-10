#ifndef EMULATOR_H_
#define EMULATOR_H_

#include<iostream>
#include<fstream>
#include <queue>
#include <sys/types.h>
#include <sys/time.h>
#include <unistd.h>
#include "csr.hpp"
#include "reg.h"
using namespace std;

#define USER_REG_CNT 32
#define NUM_REGS (USER_REG_CNT + CSR_CNT)
#define DUMP_ROW 8

#define MEMSIZE 512 * 1024 * 1024

#define STARTPC 0x7c00
#define RESET_VECTOR 0
#define FIRST_SP 0x0800

#define PAGESIZE 4096
#define LEVELS 2
#define PTESIZE 4

#define IO_BASE 0xFE000000
#define COM1 0x3F8
#define MTIME_L 0x500
#define MTIME_H 0x504
#define MTIMECMP_L 0x508
#define MTIMECMP_H 0x50c

#define CYCLE 5
//MMU
#define PAGE_X 0
#define PAGE_W 1
#define PAGE_R 2

enum PLEVEL{U, S, R, M};

typedef struct decoder{
	uint8_t opcode;
	uint8_t rd,rs1;
	uint8_t rs2;
	uint8_t funct3,funct7;
	int32_t imm;
	uint16_t csr;
}decoder_t;


class Emulator{
	public:
	int32_t x[USER_REG_CNT];
	int32_t csr[CSR_CNT];
	uint8_t* memory;
	uint8_t* io_mem;
	uint32_t PC;
	int8_t runlevel;
	queue<char> uart_rx;
	queue<char> uart_tx;
	fd_set kbd_fd;
	uint64_t mtime;
	uint64_t mtimecmp;


	Emulator();
	~Emulator();
	uint32_t get_PC(){ return V2P(PC, -1);};
	void load_memory(ifstream *binary, uint32_t bin_addr, uint32_t mem_addr, int size);
	void clear_registers();
	uint32_t fetch();
	void dump_registers(int num);
	void dump_memory(int32_t start_addr, size_t limit);
	int32_t get_mem32(uint32_t addr);
	int16_t get_mem16(uint32_t addr);
	int8_t get_mem8(uint32_t addr);
	void store_mem32(uint32_t addr, int32_t value);
	void store_mem16(uint32_t addr, int16_t value);
	void store_mem8(uint32_t addr, int8_t value);
	uint8_t read_exinterrupt();
	void set_exinterrupt(int8_t num);
	int32_t get_phys_mem32(int32_t addr);
	uint32_t V2P(uint32_t va, int mode);
	void print_error(string error, int32_t va, int32_t a, int i, int32_t pte, int32_t old_pte);
};

#endif
