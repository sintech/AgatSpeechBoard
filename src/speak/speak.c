#include <stdio.h>
#include <conio.h>
#include <unistd.h>
#include "libspeech.c"
#include "speakandspell.c"

const char letter_char[]={'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z','0','1','2','3','4','5','6','7','8','9','-'};
const unsigned int letter_pos[]={0,38,71,108,147,175,202,239,272,308,351,390,423,472,511,540,573,613,639,667,704,741,779,843,875,924,971,1045,1087,1119,1161,1206,1272,1316,1367,1406,1471};
const unsigned char letter_size[]={38,33,37,39,28,27,37,33,36,43,39,33,49,39,29,33,40,26,28,37,37,38,64,32,49,47,74,42,32,42,45,66,44,51,39,65,48};
extern const unsigned char letter_data[];       /* In letters.s */

void load_to_spram(unsigned char* data,unsigned int data_len, unsigned int data_offset, unsigned int spram_address);


void say_letter(char letter, char wait_for_ending) {
char i=0;
	for (i=0;i<37;++i) {
		if (letter_char[i]==letter) {
	//			printf("Key: %x - %c\n",letter,letter);
	//			printf("Letter num: %d, pos: %d, size: %d\n",i,letter_pos[i],letter_size[i]);
			load_to_spram((unsigned char*)letter_data,letter_size[i],letter_pos[i],0);
			spcard_say(0,wait_for_ending);
		}
	}
}

void talking_keyboard() {
	char i=0;
	char inchar;
	
	clrscr();
	gotoxy (13,1);
	printf("Talking keyboard\n");
	gotoxy (0,3);
	cputs("To exit press ESC");

	spcard_reset();
	
	gotoxy (0,6);
	cputs("Press alpha or digit button");
	while ((inchar=cgetc())!=0x1b) {
		for (i=0;i<37;++i) {
			if (letter_char[i]==inchar) {
				gotoxy (0,8);
				cprintf("Saying: %c       ",inchar);
				say_letter(inchar,1);
				gotox(wherex()-7); cprintf(" - Done\n");
				break;
			}
		}
	}	
}

void spcard_voicetest() {
	char i=0;
	unsigned int sp_size=0;

	clrscr();
	
	sp_size = 1471+48;
	
	printf("Letters size: %d\n",sp_size);
	
	printf("SPcard Reset - ");
	spcard_reset();
	printf("Done\n");
	
	printf("SPRAM COPY letters - ");
	load_to_spram((unsigned char*)letter_data,1519,0,2048);
	printf("Done\n");

	printf("Letters from SPRAM - ");
	for (i=0;i<37;++i) {
		spcard_say(2048+letter_pos[i],1);
	}
	printf("Done\n");
	
	printf("Letters from RAM - ");
	for (i=0;i<37;++i) {
		say_letter(letter_char[i],1);
	}
	printf("Done\n");

	printf("Letters from RAM w/o wait - ");
	for (i=0;i<37;++i) {
		say_letter(letter_char[i],0);
		spcard_wait_talk_end();
	}
	printf("Done\n");
	cgetc();
}

void spcard_voicetest2() {
	unsigned test=1,i;
	unsigned char x,y,failed=0;
	clrscr();
	printf("SPcard Reset - ");
	spcard_reset();
	printf("Done\n");
	
while(true) {
	printf("%d. Talking from RAM w/o wait - ",test);
	for (i=0;i<37;++i) {
		say_letter(letter_char[i],0);
		//spcard_wait_talk_end();
		if (!spcard_wait_talk_end()) {
			++failed;
			x=wherex();y=wherey();
			gotoxy(38,23);
			printf("%d",failed);
			gotoxy(x,y);
		}
	}
	printf("Done\n");
	++test;
}
	cgetc();
}



void spcard_memtest() {
	unsigned addr=0;
	unsigned char* data_ptr;
	unsigned char data,readdata,test;
	unsigned char error_count=0;
	unsigned char xpos,ypos;
	
	unsigned char pattern[]={0x00,0xff,0x55};
	data_ptr=&data;
	
	clrscr();
	gotoxy (13,1);
	printf("Spram Memory test");
	gotoxy (0,3);
	
	for (test=0;test<3;++test) {
	data=pattern[test];
	gotox(0);cprintf("Loading 0x%X to addr: ",data);
	for (addr=0;addr<SPRAM_SIZE;++addr) {
		if (addr%100==0 || addr==SPRAM_SIZE-1) {
		xpos=wherex();
		printf("%d",addr);
		gotox(xpos);
		}
		load_to_spram(data_ptr,1,0,addr);
	}
	gotox(xpos+5);	cputs("- Done\n");
	gotox(0);
	cprintf("Comparing with 0x%X at: ",data);
	for (addr=0;addr<SPRAM_SIZE;++addr) {
		if (addr%100==0 || (error_count>0 && addr%10==0) || addr==SPRAM_SIZE-1) {
			xpos=wherex();ypos=wherey();
			printf("%d",addr);
			gotoxy(xpos,ypos);
		}
		readdata=get_byte_from_spram(addr);
		if (readdata!=data) {
			gotoxy(0,ypos+1+error_count);
			cprintf("Error at: %d, read=0x%X, expect=0x%X\n",addr,readdata,data);
			++error_count;
			if (error_count>=10) {
			while(!kbhit());
			return;
			}
		}
	}
	gotox(xpos+5);	cputs("- Done\n\n");
	}
	
	// Bank check
	data=0x00;
	gotox(0);	cputs("Loading to addr: ");
	for (addr=0;addr<SPRAM_SIZE;++addr) {
		load_to_spram(data_ptr,1,0,addr);
		if (addr%16==0 || addr==SPRAM_SIZE-1) {
		xpos=wherex();
		printf("%d, data: 0x%X",addr,data);
		gotox(xpos);
		}
		if (addr%16==0 && addr>0) ++data;
	}
	gotox(xpos+17);	cputs("- Done\n\r");
	data=0x00;
	cputs("Comp. at: ");
	for (addr=0;addr<SPRAM_SIZE;++addr) {
		readdata=get_byte_from_spram(addr);
		if (addr%16==0 || (error_count>0 && addr%10==0) || addr==SPRAM_SIZE-1) {
			xpos=wherex();ypos=wherey();
			printf("%d, data 0x%X with: 0x%X",addr,readdata,data);
			gotoxy(xpos,ypos);
		}
		if (readdata!=data) {
			gotoxy(0,ypos+1+error_count);
			cprintf("Error at: %d, read=0x%X, expect=0x%X\n",addr,readdata,data);
			++error_count;
			if (error_count>=5) {
			while(!kbhit());
			return;
			}
		}
		if (addr%16==0 && addr>0) ++data;
	}
	gotox(0);	cputs("\n- Done\n\r");
	
	// butterfly check
	// write 0 and SPRAM_SIZE-1 bytes
	// read 0 and SPRAM_SIZE-1
	// write 1 and SPRAM_SIZE-2
	// read 1 and SPRAM_SIZE-2
	// etc...
	
	
	while(!kbhit());
}



char main_menu () {
	char inchar;
	clrscr();
	gotoxy (10,3);
	printf("AGAT Speech Board\n");
	gotoxy (15,6);
	printf("Main Menu\n");

	gotoxy (8,9);
	cputs("[");revers(1);cputs("1");revers(0);cputs("]");
	cputs(" Speak and spell");
	gotoxy (8,10);
	cputs("[");revers(1);cputs("2");revers(0);cputs("]");
	cputs(" Talking keyboard");
	gotoxy (8,12);
	cputs("[");revers(1);cputs("4");revers(0);cputs("]");
	cputs(" SpRAM memory test");
	gotoxy (8,13);
	cputs("[");revers(1);cputs("5");revers(0);cputs("]");
	cputs(" Voice Synthesis chip test");
	gotoxy (8,15);
	cputs("[");revers(1);cputs("0");revers(0);cputs("]");
	cputs(" Exit");

	
	while ((inchar=cgetc())!='0') {
		if (inchar=='1') speak_and_spell();
		else if (inchar=='2') talking_keyboard();
		else if (inchar=='4') spcard_memtest();
		else if (inchar=='5') spcard_voicetest();
		else if (inchar=='6') spcard_voicetest2();
		return 0;
	}
	
	return 1;
}


int main(void) {
	
	while (!main_menu());
	
	printf("\n\nThats all for now...\n");
	return 0;
}