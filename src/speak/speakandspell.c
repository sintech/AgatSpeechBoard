#include <stdlib.h>
#include <string.h>


extern const unsigned char auxiliary_data[];    /* In auxiliary.s */
extern const unsigned char words_a_data[];      /* In words-a-full.s */
extern const unsigned char words_b_data[];      /* In words-b-full.s */
extern const unsigned char words_c_data[];      /* In words-c-full.s */
extern const unsigned char words_d_data[];      /* In words-d-full.s */

const char* const aux_spell[] =  {"Now spell", 				// 0
											 "Next spell",				// 1
											 "Now try",					// 2
											 "I win",					// 3
											 "You win",					// 4
											 "Here is your score",	// 5
											 "Correct",					// 6
											 "Wrong",					// 7
											 "That is correct",		// 8
											 "That is right",			// 9
											 "That is incorrect",	// 10
											 "Try again",				// 11
											 "The correct spelling of",// 12
											 "is",						// 13
											 "Tone1",					// 14
											 "Tone2",					// 15
											 "Tone3",					// 16
											 "Tone4",					// 17
											 "Spell",					// 18
											 "Try",						// 19
											 "You are correct",		// 20
											 "You are right",			// 21
											 "Say It",					// 22
											 "The correct spelling of",// 23
											 };
const unsigned int aux_pos[]={147,262,362,0,76,475,606,673,746,856,953,1285,1085,1234,1383,1436,1489,1542,1595,1657,1731,1830,1921,1984};
const unsigned int aux_size[]={115,100,113,76,71,131,67,73,110,97,132,98,149,51,53,53,53,53,62,74,99,91,63,183};

struct vox_data {
	char spell[9];
	unsigned char spell_len;
	unsigned int data_pos;
	unsigned int data_size;
	
};
static unsigned int sp_size=0;

//void spcard_ram_say(unsigned char *data, unsigned int data_pos, unsigned int data_size, unsigned int spram_addr, char wait_for_ending);
void say_letter(char letter, char wait_for_ending);

void sleep_msec(unsigned msec) {
	unsigned i=0;
	while (msec>0) {
		while (i<10000) {
			__asm__("nop");
			++i;
		}
		--msec;
	}
}

int in_array(unsigned* array,unsigned array_size, unsigned needle) {
	while (array_size>0) {
		if (array[array_size-1]==needle) {
			return array_size-1;
		}
		--array_size;
	}
	return -1;
}

void sns_spell(char mode) {
	unsigned char inchar,word_idx;
	const unsigned char *vox_blob;
	signed char word_letter;
	unsigned rand_num,i;
	unsigned words[10]={};
	char word[9]={},wrong=0,correct=0,retry=0;
	struct vox_data* all_words;

	// S&S game selection menu
	clrscr();
	gotoxy (13,3);
	printf("Speak and spell!\n\r");
	gotoxy (15,4);
	if (mode==2) {
		printf("Say it!\n");
		spcard_ram_say((unsigned char*)auxiliary_data,aux_pos[22],aux_size[22],0,0);
	} else printf("Spell it!\n");
	
	gotoxy (12,6);
	printf("Select difficulty\n");

	gotoxy (8,9);
	cputs("[");revers(1);cputs("A");revers(0);cputs("]");
	cputs(" Level A");
	gotoxy (8,10);
	cputs("[");revers(1);cputs("B");revers(0);cputs("]");
	cputs(" Level B");
	gotoxy (8,12);
	cputs("[");revers(1);cputs("C");revers(0);cputs("]");
	cputs(" Level C");
	gotoxy (8,13);
	cputs("[");revers(1);cputs("D");revers(0);cputs("]");
	cputs(" Level D");
	gotoxy (8,15);
	cputs("[");revers(1);cputs("0");revers(0);cputs("]");
	cputs(" Exit");
	
	if (mode==2) {
		spcard_wait_talk_end();
	}
	
	while ((inchar=cgetc())) {
		if (inchar=='A') {
			vox_blob=(unsigned char*)words_a_data;
			say_letter('A',1);
			break;
		}
		else if (inchar=='B') {
			vox_blob=(unsigned char*)words_b_data;
			say_letter('B',1);
			break;
		}
		else if (inchar=='C') {
			vox_blob=(unsigned char*)words_c_data;
			say_letter('C',1);
			break;
		}
		else if (inchar=='D') {
			vox_blob=(unsigned char*)words_d_data;
			say_letter('D',1);
			break;
		}
		else if (inchar=='0') return;
	}
	
	clrscr();
	printf("Starting the game...\n");
	
	
	// get words spelling and start pos
	// allocate monory for (struct vox_data*)
	sp_size = (unsigned char)*vox_blob;
	all_words=malloc(sp_size*sizeof(struct vox_data));
	if (!all_words) {
		puts("malloc failde!");
		while(!kbhit());
		return;
	}
	word_idx=0;
	i=3;
	while(word_idx<sp_size) {
		//printf("Word %d, ",word_idx);
		all_words[word_idx].data_pos=vox_blob[i+1]<<8|vox_blob[i];
		//printf("pos %d, ",all_words[word_idx].data_pos);
		i+=2;
		all_words[word_idx].data_size=vox_blob[i];
		//printf("size %d\n",all_words[word_idx].data_size);
		++i;
		all_words[word_idx].spell_len=vox_blob[i];
		//printf("spell len %d, ",all_words[word_idx].spell_len);
		++i;
		memcpy(all_words[word_idx].spell,vox_blob+i,all_words[word_idx].spell_len);
		all_words[word_idx].spell[all_words[word_idx].spell_len]='\0';
		//printf("spell %s\n",all_words[word_idx].spell);
		i+=all_words[word_idx].spell_len;
		++word_idx;
	}

	
	// select 10 random words
	i=0;
	while (i<10) {
		rand_num=rand()%sp_size;
		if (in_array(words,10,rand_num)!=-1) continue;
		else words[i]=rand_num;
		++i;
	} 

	// Say it mode - say and display every word
	if (mode==2) {
		for (word_idx=0;word_idx<10;++word_idx) {
			clrscr();
			gotoxy(30,0);
			cprintf("Word %2d/10",(unsigned)word_idx+1);
			gotoxy(0,1);
			printf("Say it: %s",all_words[words[word_idx]].spell);
			spcard_ram_say((unsigned char*)auxiliary_data,aux_pos[22],aux_size[22],0,1);
			sleep_msec(1700);
			spcard_ram_say((unsigned char*)vox_blob,all_words[words[word_idx]].data_pos,all_words[words[word_idx]].data_size,0,1);
			sleep_msec(2000);
		}
	}

	// game begins
	word_idx=0;	
	while(word_idx<10) {
		switch(retry) {
		// no retry, new word
		case 0:
			clrscr();
			if (word_idx==0) {
				spcard_ram_say((unsigned char*)auxiliary_data,aux_pos[18],aux_size[18],0,0);
				cputs(aux_spell[18]);
			} else {
				rand_num=rand()%3;
				switch(rand_num) {
					case 0:
						spcard_ram_say((unsigned char*)auxiliary_data,aux_pos[0],aux_size[0],0,0);
						cputs(aux_spell[0]);
						break;
					case 1:
						spcard_ram_say((unsigned char*)auxiliary_data,aux_pos[1],aux_size[1],0,0);
						cputs(aux_spell[1]);
						break;
					case 2:
						spcard_ram_say((unsigned char*)auxiliary_data,aux_pos[2],aux_size[2],0,0);
						cputs(aux_spell[2]);
						break;
				}
			}
			printf(":\n");
			gotoxy(30,0);
			cprintf("Word %2d/10",(unsigned)word_idx+1);
			cputsxy(29,21,"F1 - repeat");
			cputsxy(29,22,"F2 - replay");
			cputsxy(29,23,"F3 - exit");
			gotoxy(0,1);
			spcard_wait_talk_end();
			//printf("Now Spell: %s\n",all_words[words[word_idx]].spell);
			spcard_ram_say((unsigned char*)vox_blob,all_words[words[word_idx]].data_pos,all_words[words[word_idx]].data_size,0,0);
			break;
		// retry 1	
		case 1: 
			//printf("Wrong, try again: %s\n",all_words[words[word_idx]].spell);
			// Wrong, try again:
			cputs(aux_spell[7]);cputs(", ");
			spcard_ram_say((unsigned char*)auxiliary_data,aux_pos[7],aux_size[7],0,1);
			cputs(aux_spell[11]);cputs(":\r\n");
			spcard_ram_say((unsigned char*)auxiliary_data,aux_pos[11],aux_size[11],0,1);
			spcard_ram_say((unsigned char*)vox_blob,all_words[words[word_idx]].data_pos,all_words[words[word_idx]].data_size,0,0);
			break;
		}
		printf("> "); cursor(1);
		spcard_wait_talk_end();
		word_letter=0;
		// letter input
		while ((inchar=cgetc())) {
			if (inchar>=65 && inchar<=90) {
				if (word_letter==8) continue;
				word[word_letter]=inchar;
				say_letter(inchar,0);
				cputc(inchar);
				spcard_wait_talk_end();
				++word_letter;
			}
			// backspace
			else if (inchar==0x8) {
				if (word_letter-1<0) continue; 
				gotox(wherex()-1);
				cclear(1);
				gotox(wherex()-1);
				word[word_letter]=0;
				--word_letter;
				
			}
			// enter
			else if (inchar==0xD) {
				word[word_letter]='\0';
				break;
			}
			// F1 - repeat
			else if (inchar==0x4) {
				spcard_ram_say((unsigned char*)vox_blob,all_words[words[word_idx]].data_pos,all_words[words[word_idx]].data_size,0,1);
			}
			// F2 - replay
			else if (inchar==0x5) {
				word_idx=0;
				retry=0;
				break;
			}
			// Esc (RED) - exit
			else if (inchar==0x6 || inchar==0x1b) {
				return;
			}

		}
		if (inchar==0x5) continue;
		cputs("\n\r");
//		printf("\n\rSpelled: %s\n",word);
		if (strcmp(word,all_words[words[word_idx]].spell)==0) {
			++correct;
			rand_num=rand()%4;
			switch(rand_num) {
				case 0:
					spcard_ram_say((unsigned char*)auxiliary_data,aux_pos[8],aux_size[8],0,0);	cputs(aux_spell[8]);
					break;
				case 1:
					spcard_ram_say((unsigned char*)auxiliary_data,aux_pos[9],aux_size[9],0,0);	cputs(aux_spell[9]);
					break;
				case 2:
					spcard_ram_say((unsigned char*)auxiliary_data,aux_pos[20],aux_size[20],0,0); cputs(aux_spell[20]);
					break;
				case 3:
					spcard_ram_say((unsigned char*)auxiliary_data,aux_pos[21],aux_size[21],0,0); cputs(aux_spell[21]);
					break;
			}
			cputs("\n\r");spcard_wait_talk_end();
			sleep_msec(3000);
			++word_idx;
			retry=0;
		} else {
			++retry;
			// retry 2 - correct spelling demo
			if(retry==2) {
				++wrong;
				// "That is incorrect"
				spcard_ram_say((unsigned char*)auxiliary_data,aux_pos[10],aux_size[10],0,0);
				cputs(aux_spell[10]);cputs("\r\n");spcard_wait_talk_end();
				// "The correct spelling of"
				spcard_ram_say((unsigned char*)auxiliary_data,aux_pos[23],aux_size[23],0,0);
				cputs(aux_spell[23]); spcard_wait_talk_end();
				cputs(" \""); cputs(all_words[words[word_idx]].spell);cputs("\" ");
				spcard_ram_say((unsigned char*)vox_blob,all_words[words[word_idx]].data_pos,all_words[words[word_idx]].data_size,0,1);
				// "is"
				spcard_ram_say((unsigned char*)auxiliary_data,aux_pos[13],aux_size[13],0,0);
				cputs(aux_spell[13]);cputs("\r\n");spcard_wait_talk_end();
				sleep_msec(200);
				printf("> "); cursor(1);
				// animated spelling
				for (i=0;i<all_words[words[word_idx]].spell_len;++i) {
					cputc(all_words[words[word_idx]].spell[i]);
					say_letter(all_words[words[word_idx]].spell[i],1);
				}
				sleep_msec(100);
				spcard_ram_say((unsigned char*)vox_blob,all_words[words[word_idx]].data_pos,all_words[words[word_idx]].data_size,0,1);
				sleep_msec(6000);
				retry=0;
				++word_idx;
			}
		}
	}
	cursor(0);
	// game end
	clrscr();
	// "Here is your score"
	spcard_ram_say((unsigned char*)auxiliary_data,aux_pos[5],aux_size[5],0,0);
	cputs(aux_spell[5]);cputs("\n\r");spcard_wait_talk_end();

	itoa(correct,&inchar,10);
	cprintf("%d",correct);
	if (correct==10) say_letter('-',1);
	else say_letter(inchar,1);

	// correct
	spcard_ram_say((unsigned char*)auxiliary_data,aux_pos[6],aux_size[6],0,0);
	cputs(" - "); cputs(aux_spell[6]);spcard_wait_talk_end();
	cputs(", ");
	
	itoa(wrong,&inchar,10);
	cprintf("%d",wrong);
	if (wrong==10) say_letter('-',1);
	else say_letter(inchar,1);
	// wrong
	spcard_ram_say((unsigned char*)auxiliary_data,aux_pos[7],aux_size[7],0,0);
	cputs(" - ");cputs(aux_spell[7]); spcard_wait_talk_end();

	free(all_words);
	cputsxy(0,10,"Press any key to continue");
	cgetc();
}

char sns_menu () {
	char inchar,rand_num;
		
	// S&S game selection menu
	clrscr();
	// play S&S tones
	spcard_reset();
	spcard_ram_say((unsigned char*)auxiliary_data,aux_pos[14],aux_size[14],0,1);
	rand_num=rand()%3;
	switch(rand_num) {
		case 0:
			spcard_ram_say((unsigned char*)auxiliary_data,aux_pos[15],aux_size[15],0,0);
			break;
		case 1:
			spcard_ram_say((unsigned char*)auxiliary_data,aux_pos[16],aux_size[16],0,0);
			break;
		case 2:
			spcard_ram_say((unsigned char*)auxiliary_data,aux_pos[17],aux_size[17],0,0);
			break;
	}
	
	gotoxy (13,3);
	printf("Speak and spell!\n");
	gotoxy (15,6);
	printf("Select game\n");

	gotoxy (8,9);
	cputs("[");revers(1);cputs("1");revers(0);cputs("]");
	cputs(" Spell it");
	gotoxy (8,10);
	cputs("[");revers(1);cputs("2");revers(0);cputs("]");
	cputs(" Say it, Spell it");
	gotoxy (8,12);
	cputs("[");revers(0);cputs("3");revers(0);cputs("]");
	cputs(" Mystery word");
	gotoxy (8,13);
	cputs("[");revers(0);cputs("4");revers(0);cputs("]");
	cputs(" Secret code");
	gotoxy (8,14);
	cputs("[");revers(0);cputs("5");revers(0);cputs("]");
	cputs(" Letter");
	gotoxy (8,16);
	cputs("[");revers(1);cputs("0");revers(0);cputs("]");
	cputs(" Exit");
	// inhibit busy
	spcard_wait_talk_end();
	
	while ((inchar=cgetc())!='0') {
		if (inchar=='1') sns_spell(1);
		else if (inchar=='2') sns_spell(2);
		return 0;
	}
	return 1;
}

void speak_and_spell() {
	_randomize ();
	while (!sns_menu());
}
