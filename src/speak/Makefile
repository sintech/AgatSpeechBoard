PGM=speak
AWIN=d:/Distr/!old/Apple_II/AppleWin1.29.0.0/Applewin.exe

speak: speak.c libspeech.c speakandspell.c
	cl65 -t apple2 -o $@ speak.c letters.s auxiliary.s words-uk-full.s
	java -jar ac-1.5.0.jar -d MASTER.dsk speak
	java -jar ac-1.5.0.jar -as MASTER.dsk speak < speak
speak_us: speak.c libspeech.c speakandspell.c
	cl65 -t apple2 -o $@ speak.c letters.s auxiliary.s words-us-full.s
	java -jar ac-1.5.0.jar -d MASTER.dsk $@
	java -jar ac-1.5.0.jar -as MASTER.dsk $@ < $@
demo: speakdemo.c libspeech.c
	cl65 -t apple2 -o speakdemo speakdemo.c
	java -jar ac-1.5.0.jar -d MASTER.dsk speakdemo
	java -jar ac-1.5.0.jar -as MASTER.dsk speakdemo < speakdemo
run:
	$(AWIN) -no-printscreen-dlg -d1 ./MASTER.dsk
#   java -jar $(AC) -pro140 $(PGM).po $(PGM)
#   java -jar $(AC) -cc65 $(PGM).po $(PGM) BIN < $(PGM)

all: speak run
	