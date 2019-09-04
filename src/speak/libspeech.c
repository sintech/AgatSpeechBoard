#include <peekpoke.h>
#include <stdbool.h>

#define SPCARD_SLOT 2

#define SPCARD_ADDRL 0xC080+SPCARD_SLOT*0x10 + 0
#define SPCARD_ADDRH 0xC080+SPCARD_SLOT*0x10 + 1
#define SPCARD_DATA 0xC080+SPCARD_SLOT*0x10 + 2
#define SPCARD_CTRL 0xC080+SPCARD_SLOT*0x10 + 3
#define SPCARD_STATE 0xC080+SPCARD_SLOT*0x10 + 4

#define CTRL_28 1
#define CTRL_4 2
#define CTRL_PDC 4
#define STATE_BUSY 128 // 0b10000000


#define SPRAM_SIZE 4096


void load_to_spram(unsigned char* data,unsigned int data_len, unsigned int data_offset, unsigned int spram_address) {
 //__asm__("nop");
 unsigned char data_byte=0;
 unsigned int i=0;
 for (i=0; i<data_len; ++i) {
	 data_byte=data[i+data_offset];
	 //printf("Data #%d - %x  ",i,data_byte);
	 
	 // write byte to spram
	 //printf("H:%X  L:%X\n",(spram_address+i) >> 8,(spram_address+i) & 0xff);
	 POKE(SPCARD_ADDRH,(spram_address+i) >> 8);
	 POKE(SPCARD_ADDRL,(spram_address+i) & 0xff);
	 POKE(SPCARD_DATA,data_byte);
	 //if (i>10) return;
 }
 
}


unsigned char get_byte_from_spram(unsigned int spram_address) {
	 // read byte from spram
	 //printf("H:%X  L:%X\n",(spram_address+i) >> 8,(spram_address+i) & 0xff);
	 POKE(SPCARD_ADDRH,(spram_address) >> 8);
	 POKE(SPCARD_ADDRL,(spram_address) & 0xff);
	 return PEEK(SPCARD_DATA);
}

void set_spram_addr(unsigned int spram_address) {
   POKE(SPCARD_ADDRH,spram_address >> 8);
	POKE(SPCARD_ADDRL,spram_address & 0xff);
}

void spcard_reset (void) {
	char i,j;
// triple reset
	for (j=0; j<3; ++j) {
	// reset
		POKE(SPCARD_CTRL,0);
		for (i=0; i<3; ++i) {
			POKE(SPCARD_CTRL,CTRL_PDC);
			POKE(SPCARD_CTRL,0);
		}	
		POKE(SPCARD_CTRL,0);
	}
	
// test busy
	POKE(SPCARD_CTRL, (CTRL_4 | CTRL_28));
	for (i=0; i<3; ++i) {
		POKE(SPCARD_CTRL,(CTRL_PDC | CTRL_4 | CTRL_28));
		POKE(SPCARD_CTRL,(CTRL_4 | CTRL_28));
	}	
	POKE(SPCARD_CTRL, (CTRL_4 | CTRL_28));
}

void spcard_talk () {
// talk
	POKE(SPCARD_CTRL,(CTRL_28));
	POKE(SPCARD_CTRL,(CTRL_PDC | CTRL_28));
	POKE(SPCARD_CTRL,(CTRL_28));

// test talk	
	POKE(SPCARD_CTRL,(CTRL_4 | CTRL_28));
	POKE(SPCARD_CTRL,(CTRL_PDC | CTRL_4 | CTRL_28));

	POKE(SPCARD_CTRL,(CTRL_4 | CTRL_28));
	POKE(SPCARD_CTRL,(CTRL_PDC | CTRL_4 | CTRL_28));

	POKE(SPCARD_CTRL,(CTRL_4 | CTRL_28));
}

bool spcard_check_busy () {
	if ((PEEK(SPCARD_STATE) & STATE_BUSY) == 0) {
		// inhibit busy
		POKE(SPCARD_CTRL,(CTRL_4 | CTRL_28));
		__asm__("nop");__asm__("nop");
		POKE(SPCARD_CTRL,(CTRL_PDC | CTRL_4 | CTRL_28));
		__asm__("nop");__asm__("nop");
		POKE(SPCARD_CTRL,(CTRL_4 | CTRL_28));
		__asm__("nop");__asm__("nop");
		return false;
	}
	return true;
}

bool spcard_wait_talk_end () {
 	unsigned i=0;
	unsigned char x,y;
	
 	while (spcard_check_busy()) {
		++i;
		if (i==1<<16-1) {
			spcard_reset();
			x=wherex();y=wherey();
			cputsxy(0,23,"BUSY!!");
			gotoxy(x,y);
			return false;
		}
	}
	return true;
}

void spcard_say(unsigned int start_addr, unsigned char wait_for_ending) {
	set_spram_addr(start_addr);
	
	spcard_talk ();
	
	if (wait_for_ending==1) {
		spcard_wait_talk_end ();
	}	else return;
}

void spcard_ram_say(unsigned char *data, unsigned int data_pos, unsigned int data_size, unsigned int spram_addr, char wait_for_ending) {
			load_to_spram((unsigned char*)data,data_size,data_pos,spram_addr);
			spcard_say(spram_addr,wait_for_ending);
}
