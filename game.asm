
					device 		zxspectrum48
					
begin_file
					include		"game.pas.asm"
end_file
					display "code size: ", /d, end_file - begin_file
					savesna 	"game.sna", MAIN
					savetap 	"game.tap", MAIN
					SLDOPT 		COMMENT WPMEM, LOGPOINT, ASSERTION
