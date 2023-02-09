program Game;

const

	Wboard=6;
	Hboard=6;

var

	x1, y1, x2, y2, color1, color2, color3, color4, x, y, i, over, a, b, z, colorblock, s: byte;
	
	sevenflag, levelold, level, colorbomb, key1, key2 : byte;
	
	score, bestscore: word;
	
	startmap: array [1..22, 1..32] of byte = [
	1,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,2,
	8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6,
	8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6,
	8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6,
	8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6,
	8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6,
	8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6,
	8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6,
	8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6,
	8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6,
	8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6,
	8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6,
	8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6,
	8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6,
	8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6,
	8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6,
	8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6,
	8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6,
	8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6,
	8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6,
	8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6,
	4,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,3];
	
	map: array [1..20, 1..20] of byte = [
	
	9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,
	9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,9,
	9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,9,
	9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,9,
	9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,9,
	9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,9,
	9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,9,
	9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,9,
	9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,9,
	9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,9,
	9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,9,
	9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,9,
	9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,9,
	9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,9,
	9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,9,
	9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,9,
	9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,9,
	9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,9,
	9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,9,
	9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9];
	
	mapblock: array [1..6, 1..6] of byte;
	
	mapdelx: array [1..6,1..6] of byte;
	
	mapdely: array [1..6,1..6] of byte;
	
	mapdel: array [1..6,1..6] of byte;

procedure BlockVibrSound; {вибрация блоков со звуком}
	begin
	WindowScrollUp;
	WindowScrollRight;
	SoundEffect (1,2,0);
	asm (HALT);
	WindowScrollDown;
	WindowScrollDown;
	SoundEffect (1,2,1);
	asm (HALT);
	WindowScrollLeft;
	WindowScrollLeft;
	SoundEffect (1,2,0);
	asm (HALT);
	WindowScrollUp;
	WindowScrollUp;
	SoundEffect (1,2,1);
	asm (HALT);
	WindowScrollRight;
	WindowScrollRight;
	SoundEffect (1,2,0);
	asm (HALT);
	WindowScrollDown;
	WindowScrollDown;
	SoundEffect (1,2,1);
	asm (HALT);
	WindowScrollLeft;
	SoundEffect (1,2,0);
	asm (HALT);
	WindowScrollUp;
	end;
	
procedure BlockVibr; {вибрация блоков без звука}
	begin
	WindowScrollUp;
	WindowScrollRight;

	WindowScrollDown;
	WindowScrollDown;

	WindowScrollLeft;
	WindowScrollLeft;

	WindowScrollUp;
	WindowScrollUp;

	WindowScrollRight;
	WindowScrollRight;

	WindowScrollDown;
	WindowScrollDown;

	WindowScrollLeft;

	WindowScrollUp;
	end;

procedure Title; {заставка игры}
	begin
		asm (IM2INIT);

		mapset (startmap, SPRMAP, 0, 0, 32, 22);
		mapput1x1 (1, 1);
		SpritePutClear(SPRTITUL1,3,3,8);
		SpritePutClear(SPRTITUL2,5,13,11);
		
		
		SpritePutClear(SPRBLOCK1,1,2,3);
		SpritePutClear(SPRBLOCK2,2,7,3);
		SpritePutClear(SPRBLOCK3,3,12,3);
		SpritePutClear(SPRBLOCK4,4,17,3);
		SpritePutClear(SPRBLOCK5,5,22,3);
		SpritePutClear(SPRBLOCK6,6,27,3);

		SpritePutClear(SPRBLOCK6,6,2,16);
		SpritePutClear(SPRBLOCK5,5,7,16);
		SpritePutClear(SPRBLOCK4,4,12,16);
		SpritePutClear(SPRBLOCK3,3,17,16);
		SpritePutClear(SPRBLOCK2,2,22,16);
		SpritePutClear(SPRBLOCK1,1,27,16);
		
		repeat begin
			i:=0;
			repeat begin
				i:=i+1;
				ReadKey (key1,key2);
				case i of
					1: windowset (2,3,3,3);
					2: windowset (7,3,3,3);
					3: windowset (12,3,3,3);
					4: windowset (17,3,3,3);
					5: windowset (22,3,3,3);
					6: windowset (27,3,3,3);
				end;
				BlockVibr;
				ReadKey (key1,key2);
				case i of
					1: windowset (27,16,3,3);
					2: windowset (22,16,3,3);
					3: windowset (17,16,3,3);
					4: windowset (12,16,3,3);
					5: windowset (7,16,3,3);
					6: windowset (2,16,3,3);
				end;
				BlockVibr;
				ReadKey (key1,key2);
			end;
			until i=6 or key1<>0;
		end;
		until key1<>0;

	end;
	
procedure ScrTwo;
	begin
	
	windowset (1,1,30,20);
	windowclear;
	textcolor (7);
	gotoxy (13,4);
	write ('СОБИРАЙТЕ ОДИНАКОВЫЕ ЭЛЕМЕНТЫ В ЛИНИИ');
	gotoxy (16,6);
	write ('И ОТКРОЕТСЯ ВАМ СЕДЬМОЙ ЭЛЕМЕНТ');
	gotoxy (20,8);
	write ('НО БУДТЕ ОСТОРОЖНЫ С НИМ');
	textcolor (4);
	gotoxy (16,13);
	write ('УПРАВЛЕНИЕ: CURSOR или Q,A,O,P');
	textcolor (6);
	gotoxy (18,19);
	write ('АВТОР: РОМАН СКОРИК   2022');
	
	delay (50);
	
	repeat ReadKey(key1,key2);
	until key1<>0;
	
	end;
	
	
procedure NextBlockView1;
	begin
		case color3 of
			1: SpritePutClear(SPRBLOCK1,1,22,16);
			2: SpritePutClear(SPRBLOCK2,2,22,16);
			3: SpritePutClear(SPRBLOCK3,3,22,16);
			4: SpritePutClear(SPRBLOCK4,4,22,16);
			5: SpritePutClear(SPRBLOCK5,5,22,16);
			6: SpritePutClear(SPRBLOCK6,6,22,16);
			7: SpritePutClear(SPRBLOCK7,71,22,16);
		end;
	end;
	
procedure NextBlockView2;
	begin
		case color4 of
			1: SpritePutClear(SPRBLOCK1,1,27,16);
			2: SpritePutClear(SPRBLOCK2,2,27,16);
			3: SpritePutClear(SPRBLOCK3,3,27,16);
			4: SpritePutClear(SPRBLOCK4,4,27,16);
			5: SpritePutClear(SPRBLOCK5,5,27,16);
			6: SpritePutClear(SPRBLOCK6,6,27,16);
			7: SpritePutClear(SPRBLOCK7,71,27,16);
		end;
	end;

procedure BlockGen;
	begin
		repeat begin
			x1:=Random(Wboard-1)+1;
			y1:=Random(Hboard-1)+1;
			end;
		until mapblock [x1,y1]=0;

		repeat begin
			x2:=Random(Wboard-1)+1;
			y2:=Random(Hboard-1)+1;
			end;
		until x1<>x2 and y1<>y2 and mapblock [x2,y2]=0;
		
		case color1 of
			1: SpritePutClear(SPRBLOCK1,1,x1*3-1,y1*3-1);
			2: SpritePutClear(SPRBLOCK2,2,x1*3-1,y1*3-1);
			3: SpritePutClear(SPRBLOCK3,3,x1*3-1,y1*3-1);
			4: SpritePutClear(SPRBLOCK4,4,x1*3-1,y1*3-1);
			5: SpritePutClear(SPRBLOCK5,5,x1*3-1,y1*3-1);
			6: SpritePutClear(SPRBLOCK6,6,x1*3-1,y1*3-1);
			7: SpritePutClear(SPRBLOCK7,71,x1*3-1,y1*3-1);
		end;
	
		case color2 of
			1: SpritePutClear(SPRBLOCK1,1,x2*3-1,y2*3-1);
			2: SpritePutClear(SPRBLOCK2,2,x2*3-1,y2*3-1);
			3: SpritePutClear(SPRBLOCK3,3,x2*3-1,y2*3-1);
			4: SpritePutClear(SPRBLOCK4,4,x2*3-1,y2*3-1);
			5: SpritePutClear(SPRBLOCK5,5,x2*3-1,y2*3-1);
			6: SpritePutClear(SPRBLOCK6,6,x2*3-1,y2*3-1);
			7: SpritePutClear(SPRBLOCK7,71,x2*3-1,y2*3-1);
		end;
					
		mapblock [x1,y1]:=color1;
		mapblock [x2,y2]:=color2;
						
		NextBlockView1;
		
		NextBlockView2;
		
		color1:=color3;
		color2:=color4;
		color3:=Random(colorblock)+1;
		color4:=Random(colorblock)+1;
	
	end;

procedure BlockGen2;
	begin
		i:=0;
		for  x:=1 to 6 do 
			for y:=1 to 6 do
				if mapblock [x,y]=0 and i<1 then	
					begin
						case color1 of
							1: SpritePutClear(SPRBLOCK1,1,x*3-1,y*3-1);
							2: SpritePutClear(SPRBLOCK2,2,x*3-1,y*3-1);
							3: SpritePutClear(SPRBLOCK3,3,x*3-1,y*3-1);
							4: SpritePutClear(SPRBLOCK4,4,x*3-1,y*3-1);
							5: SpritePutClear(SPRBLOCK5,5,x*3-1,y*3-1);
							6: SpritePutClear(SPRBLOCK6,6,x*3-1,y*3-1);
							7: SpritePutClear(SPRBLOCK7,71,x*3-1,y*3-1);
						end;
						mapblock [x,y]:=color1;
						
						NextBlockView1;
						
						color1:=color3;
						color3:=Random(colorblock)+1;
						i:=i+1;
					end;
		i:=0;
		for  x:=6 downto 1 do 
			for y:=6 downto 1 do
				if mapblock [x,y]=0 and i<1 then	
					begin
						case color2 of
							1: SpritePutClear(SPRBLOCK1,1,x*3-1,y*3-1);
							2: SpritePutClear(SPRBLOCK2,2,x*3-1,y*3-1);
							3: SpritePutClear(SPRBLOCK3,3,x*3-1,y*3-1);
							4: SpritePutClear(SPRBLOCK4,4,x*3-1,y*3-1);
							5: SpritePutClear(SPRBLOCK5,5,x*3-1,y*3-1);
							6: SpritePutClear(SPRBLOCK6,6,x*3-1,y*3-1);
							7: SpritePutClear(SPRBLOCK7,71,x*3-1,y*3-1);
						end;
						mapblock [x,y]:=color2;
						
						NextBlockView2;
						
						color2:=color4;
						color4:=Random(colorblock)+1;
						i:=i+1;
					end;

	end;
	
procedure PrintLevel;
	begin
		windowset (4,9,14,4);
		windowget;
		case level of
		1: SpritePutClear(SPRLEVEL1,120,5,10);
		2: begin SpritePutClear(SPRLEVEL2,88,5,10); color3:=3; color4:=3; end;
		3: begin SpritePutClear(SPRLEVEL3,96,5,10); color3:=4; color4:=4; end;
		4: begin SpritePutClear(SPRLEVEL4,104,5,10); color3:=5; color4:=5; end;
		5: begin SpritePutClear(SPRLEVEL5,112,5,10); color3:=6; color4:=6; end;
		6: begin SpritePutClear(SPRLEVEL6,120,4,9); color3:=7; color4:=7; end;
		end;
		delay (100);
		windowput;
	end; 

procedure StartScr;
	begin
		asm (MUSOFF);
		
		windowset (1,1,30,20);
		windowclear;
		mapset (map, SPRMAP, 1, 1, 20, 20);
		mapput1x1 (1, 1);
		
		
		SpritePutClear(SPRRECORD,71,23,2);
		textcolor (6);
		gotoxy (50,4);
		if bestscore=0 then write ('0000') else
		write (bestscore*10);
		
		SpritePutClear(SPRSCORE,71,24,8);
		score:=0;
		textcolor (6);
		gotoxy (50,10);
		write ('0000');
		
		SpritePutClear(SPRQUEUE,71,22,14);
		
		ArrayClear(mapblock);
		
		colorblock:=1;
		level:=1;
		levelold:=1;
		
		Randomize;
		
		color1:=Random(colorblock)+1;
		color2:=Random(colorblock)+1;
		color3:=Random(colorblock)+1;
		color4:=Random(colorblock)+1;
		
		Randomize;
		
		BlockGen;
		
		PrintLevel;

	end;


procedure Delet; {поиск и удаление комбинаций}
	
	begin
		
		ArrayClear(mapdelx);
		ArrayClear(mapdely);
		ArrayClear(mapdel);
		
{поиск горизонтальных комбинаций}
		
		for  y:=1 to 6 do begin

			z:=mapblock [1,y];
			if z>0 and mapdelx [1,y]=0 then
				if
				Z=mapblock [2,y] and z=mapblock [3,y] and z=mapblock [4,y] and z=mapblock [5,y] and z=mapblock[6,y] then
				begin
					mapdelx [1,y]:=1; mapdelx [2,y]:=1; mapdelx [3,y]:=1; mapdelx [4,y]:=1; mapdelx [5,y]:=1; mapdelx [6,y]:=1;
				end;
			
			if z>0 and mapdelx [1,y]=0 then
				if
				z=mapblock [2,y] and z=mapblock [3,y] and z=mapblock [4,y] and z=mapblock [5,y] then
				begin
					mapdelx [1,y]:=1; mapdelx [2,y]:=1; mapdelx [3,y]:=1; mapdelx [4,y]:=1; mapdelx [5,y]:=1;
				end;	
			
			if z>0 and mapdelx [1,y]=0 then
				if
				z=mapblock [2,y] and z=mapblock [3,y] and z=mapblock [4,y] then
				begin
					mapdelx [1,y]:=1; mapdelx [2,y]:=1; mapdelx [3,y]:=1; mapdelx [4,y]:=1;
				end;
				
			if z>0 and mapdelx [1,y]=0 then
				if
				z=mapblock [2,y] and z=mapblock [3,y] then
				begin
					mapdelx [1,y]:=1; mapdelx [2,y]:=1; mapdelx [3,y]:=1;
				end;
				
			z:=mapblock [2,y];
			if z>0 and mapdelx [2,y]=0 then
				if
				z=mapblock [3,y] and z=mapblock [4,y] and z=mapblock [5,y] and z=mapblock [6,y] then
				begin
					mapdelx [2,y]:=1; mapdelx [3,y]:=1; mapdelx [4,y]:=1; mapdelx [5,y]:=1; mapdelx [6,y]:=1;
				end;
						
			if z>0 and mapdelx [2,y]=0 then
				if
				z=mapblock [3,y] and z=mapblock [4,y] and z=mapblock [5,y] then
				begin
					mapdelx [2,y]:=1; mapdelx [3,y]:=1; mapdelx [4,y]:=1; mapdelx [5,y]:=1;
				end;
			
			if z>0 and mapdelx [2,y]=0 then
				if
				z=mapblock [3,y] and z=mapblock [4,y] then
				begin
					mapdelx [2,y]:=1; mapdelx [3,y]:=1; mapdelx [4,y]:=1;
				end;

			z:=mapblock [3,y];
			if z>0 and mapdelx [3,y]=0 then
				if
				z=mapblock [4,y] and z=mapblock [5,y] and z=mapblock [6,y] then
				begin
					mapdelx [3,y]:=1; mapdelx [4,y]:=1; mapdelx [5,y]:=1; mapdelx [6,y]:=1;
				end;
						
			if z>0 and mapdelx [3,y]=0 then
				if
				z=mapblock [4,y] and z=mapblock [5,y] then
				begin
					mapdelx [3,y]:=1; mapdelx [4,y]:=1; mapdelx [5,y]:=1;
				end;
				
			z:=mapblock [4,y];
			if z>0 and mapdelx [4,y]=0 then
				if
				z=mapblock [5,y] and z=mapblock [6,y] then
				begin
					mapdelx [4,y]:=1; mapdelx [5,y]:=1; mapdelx [6,y]:=1;
				end;
		end;
		
{поиск вертикальных комбинаций}
		
		for  x:=1 to 6 do begin

			z:=mapblock [x,1];
			if z>0 and mapdely [x,1]=0 then
				if
				Z=mapblock [x,2] and z=mapblock [x,3] and z=mapblock [x,4] and z=mapblock [x,5] and z=mapblock[x,6] then
				begin
					mapdely [x,1]:=1; mapdely [x,2]:=1; mapdely [x,3]:=1; mapdely [x,4]:=1; mapdely [x,5]:=1; mapdely [x,6]:=1;
				end;
			
			if z>0 and mapdely [x,1]=0 then
				if
				z=mapblock [x,2] and z=mapblock [x,3] and z=mapblock [x,4] and z=mapblock [x,5] then
				begin
					mapdely [x,1]:=1; mapdely [x,2]:=1; mapdely [x,3]:=1; mapdely [x,4]:=1; mapdely [x,5]:=1;
				end;	
			
			if z>0 and mapdely [x,1]=0 then
				if
				z=mapblock [x,2] and z=mapblock [x,3] and z=mapblock [x,4] then
				begin
					mapdely [x,1]:=1; mapdely [x,2]:=1; mapdely [x,3]:=1; mapdely [x,4]:=1;
				end;
			
			if z>0 and mapdely [x,1]=0 then
				if
				z=mapblock [x,2] and z=mapblock [x,3] then
				begin
					mapdely [x,1]:=1; mapdely [x,2]:=1; mapdely [x,3]:=1;
				end;
			
			z:=mapblock [x,2];
			if z>0 and mapdely [x,2]=0 then
				if
				z=mapblock [x,3] and z=mapblock [x,4] and z=mapblock [x,5] and z=mapblock [x,6] then
				begin
					mapdely [x,2]:=1; mapdely [x,3]:=1; mapdely [x,4]:=1; mapdely [x,5]:=1; mapdely [x,6]:=1;
				end;
			
			if z>0 and mapdely [x,2]=0 then
				if
				z=mapblock [x,3] and z=mapblock [x,4] and z=mapblock [x,5] then
				begin
					mapdely [x,2]:=1; mapdely [x,3]:=1; mapdely [x,4]:=1; mapdely [x,5]:=1;
				end;

			if z>0 and mapdely [x,2]=0 then
				if
				z=mapblock [x,3] and z=mapblock [x,4] then
				begin
					mapdely [x,2]:=1; mapdely [x,3]:=1; mapdely [x,4]:=1;
				end;
			
			z:=mapblock [x,3];
			if z>0 and mapdely [x,3]=0 then
				if
				z=mapblock [x,4] and z=mapblock [x,5] and z=mapblock [x,6] then
				begin
					mapdely [x,3]:=1; mapdely [x,4]:=1; mapdely [x,5]:=1; mapdely [x,6]:=1;
				end;
						
			if z>0 and mapdely [x,3]=0 then
				if
				z=mapblock [x,4] and z=mapblock [x,5] then
				begin
					mapdely [x,3]:=1; mapdely [x,4]:=1; mapdely [x,5]:=1;
				end;
				
			z:=mapblock [x,4];
			if z>0 and mapdely [x,4]=0 then
				if
				z=mapblock [x,5] and z=mapblock [x,6] then
				begin
					mapdely [x,4]:=1; mapdely [x,5]:=1; mapdely [x,6]:=1;
				end;
		end;
		
		for a:=1 to 6 do
			for b:=1 to 6 do
				begin
					mapdel[a,b]:=mapdelx[a,b]+mapdely[a,b];
					if mapdel[a,b]=2 then mapdel[a,b]:=1;
				end;


{комбинации с 7}
	
		if level=6 then
			begin
				for a:=1 to 6 do
					for b:=1 to 6 do
						begin
							if mapblock [a,b]=7 then
								case sevenflag of
									1: begin mapdel [a,b]:=1; if a>1 then mapdel [a-1,b]:=1; end;
									2: begin mapdel [a,b]:=1; if a<6 then mapdel [a+1,b]:=1; end;
									3: begin mapdel [a,b]:=1; if b>1 then mapdel [a,b-1]:=1; end;
									4: begin mapdel [a,b]:=1; if b<6 then mapdel [a,b+1]:=1; end;
								end;
										
						end;
			end;

{удаление блоков}

		s:=0;

		for a:=1 to 6 do
			for b:=1 to 6 do begin
				if mapdel[a,b]=1 then
					begin
						case mapblock[a,b] of
							1: SpritePutClear(SPRBLOCK1,65,a*3-1,b*3-1);
							2: SpritePutClear(SPRBLOCK2,66,a*3-1,b*3-1);
							3: SpritePutClear(SPRBLOCK3,67,a*3-1,b*3-1);
							4: SpritePutClear(SPRBLOCK4,68,a*3-1,b*3-1);
							5: SpritePutClear(SPRBLOCK5,69,a*3-1,b*3-1);
							6: SpritePutClear(SPRBLOCK6,70,a*3-1,b*3-1);
							7: SpritePutClear(SPRBLOCK7,71,a*3-1,b*3-1);
						end;
						WindowSet(a*3-1,b*3-1,3,3);
						BlockVibrSound;
					end;
			end;		
			

		
		for a:=1 to 6 do
			for b:=1 to 6 do begin
				if mapdel[a,b]=1 then
					begin
						SpritePutClear(SPRBOMB1,66,a*3-1,b*3-1);
					end;
			end;
		
		asm (HALT);	
		
		for a:=1 to 6 do
			for b:=1 to 6 do begin
				if mapdel[a,b]=1 then
					begin
						SpritePutClear(SPRBOMB2,66,a*3-1,b*3-1);
					end;
			end;
			
		asm (HALT);	
		
		for a:=1 to 6 do
			for b:=1 to 6 do begin
				if mapdel[a,b]=1 then
					begin
						SpritePutClear(SPRBOMB3,70,a*3-1,b*3-1);
					end;
			end;
			
		asm (HALT);	
			
		for a:=1 to 6 do
			for b:=1 to 6 do begin
				if mapdel[a,b]=1 then
					begin
						SpritePutClear(SPRBOMB4,71,a*3-1,b*3-1);
					end;
			end;
			
		asm (HALT);	
		
		for a:=1 to 6 do
			for b:=1 to 6 do begin
				if mapdel[a,b]=1 then
					begin
						SpritePutClear(SPRCLR,0,a*3-1,b*3-1);
						mapblock[a,b]:=0;
						s:=s+1;
					end;
			end;
		
		if s>0 then SoundEffect (1,50,5);
		
{подсчет и вывод очков}
		
		case s of
		3:	s:=s*1;
		4:	s:=s*2;
		5:	s:=s*3;
		6:	s:=s*4;
		7:	s:=s*5;
		8:	s:=s*6;
		9:	s:=s*7;
		10:	s:=s*8;
		11:	s:=s*9;
		12:	s:=s*10;
		13:	s:=s*20;
		14:	s:=s*30;
		end;
		score:=score+s;
		textcolor (6);
		if score<1000 then gotoxy (50,10);
		if score<100 then gotoxy (51,10);
		if score<10 then gotoxy (52,10);
		write (score);
		
{увеличение уровня}

		if score>=100 then colorblock:=2;
		if score>=200 then colorblock:=3;
		if score>=300 then colorblock:=4;
		if score>=400 then colorblock:=5;
		if score>=500 then colorblock:=6;
		
		level:=colorblock;

			
	end;

procedure Best;
	begin
		if bestscore<score then begin
			bestscore:=score;
			SpritePutClear(SPRNEWREC,71,10,10);
			textcolor (6);
			gotoxy (30,12);
			write (bestscore*10);
			read;

		end;
	end;


procedure GameOver;
	begin
		over:=0;
		for y:=1 to 6 do
			for x:=1 to 6 do
				if mapblock [x,y]<>0 then over:=over+1;
		
		if over=36 then
			begin
				SoundEffect (20,8,0);
				SoundEffect (15,16,0);

				
				repeat ReadKey(key1,key2);
				until key1<>0;
				
				windowset (1,1,30,20);
				windowclear;
				Best;
				Title;
				StartScr;
			end;
	
	
	end;
	

	
procedure LeftMove;
		begin
			for y:=1 to 6 do
				for i:=1 to 5 do
					for x:=1 to 5 do
							if mapblock [x,y]=0 and mapblock [x+1,y]<>0 then
								case mapblock [x+1,y] of
								1:  begin
										for z:=1 to 3 do begin
										SpritePutClear(SPRCLR,0,(x+1)*3-1,y*3-1);
										SpritePutClear(SPRBLOCK1,1,((x+1)*3-1)-z,y*3-1);
										end;
										mapblock [x,y]:= mapblock [x+1,y];
										mapblock [x+1,y]:=0;
									end;
								2:	begin
										for z:=1 to 3 do begin
										SpritePutClear(SPRCLR,0,(x+1)*3-1,y*3-1);										
										SpritePutClear(SPRBLOCK2,2,((x+1)*3-1)-z,y*3-1);
										end;
										mapblock [x,y]:= mapblock [x+1,y];
										mapblock [x+1,y]:=0;
									end;
								3:	begin
										for z:=1 to 3 do begin
										SpritePutClear(SPRCLR,0,(x+1)*3-1,y*3-1);
										SpritePutClear(SPRBLOCK3,3,((x+1)*3-1)-z,y*3-1);
										end;
										mapblock [x,y]:= mapblock [x+1,y];
										mapblock [x+1,y]:=0;
									end;
								4:	begin
										for z:=1 to 3 do begin
										SpritePutClear(SPRCLR,0,(x+1)*3-1,y*3-1);
										SpritePutClear(SPRBLOCK4,4,((x+1)*3-1)-z,y*3-1);
										end;
										mapblock [x,y]:= mapblock [x+1,y];
										mapblock [x+1,y]:=0;
									end;
								5:	begin
										for z:=1 to 3 do begin
										SpritePutClear(SPRCLR,0,(x+1)*3-1,y*3-1);
										SpritePutClear(SPRBLOCK5,5,((x+1)*3-1)-z,y*3-1);
										end;
										mapblock [x,y]:= mapblock [x+1,y];
										mapblock [x+1,y]:=0;
									end;
								6:	begin
										for z:=1 to 3 do begin
										SpritePutClear(SPRCLR,0,(x+1)*3-1,y*3-1);
										SpritePutClear(SPRBLOCK6,6,((x+1)*3-1)-z,y*3-1);
										end;
										mapblock [x,y]:= mapblock [x+1,y];
										mapblock [x+1,y]:=0;
									end;
								7:	begin
										for z:=1 to 3 do begin
										SpritePutClear(SPRCLR,0,(x+1)*3-1,y*3-1);
										SpritePutClear(SPRBLOCK7,71,((x+1)*3-1)-z,y*3-1);
										end;
										mapblock [x,y]:= mapblock [x+1,y];
										mapblock [x+1,y]:=0;
									end;
								end;
			SoundEffect(1,3,0);
			sevenflag:=1;
			Delet;
			if s=0 then
					if over<28 then BlockGen else Blockgen2;
			sevenflag:=0;
			Delet;
			GameOver;
			if over=0 then BlockGen;
		end;
	
procedure RightMove;
		begin
			for y:=1 to 6 do
				for i:=1 to 5 do
					for x:=6 downto 2 do
							if mapblock [x,y]=0 and mapblock [x-1,y]<>0 then
							case mapblock [x-1,y] of
							1:	begin
									for z:=1 to 3 do begin
									SpritePutClear(SPRCLR,0,(x-1)*3-1,y*3-1);
									SpritePutClear(SPRBLOCK1,1,((x-1)*3-1)+z,y*3-1);
									end;
									mapblock [x,y]:= mapblock [x-1,y];
									mapblock [x-1,y]:=0;
								end;
							2:	begin
									for z:=1 to 3 do begin
									SpritePutClear(SPRCLR,0,(x-1)*3-1,y*3-1);
									SpritePutClear(SPRBLOCK2,2,((x-1)*3-1)+z,y*3-1);
									end;
									mapblock [x,y]:= mapblock [x-1,y];
									mapblock [x-1,y]:=0;
								end;
							3:	begin
									for z:=1 to 3 do begin
									SpritePutClear(SPRCLR,0,(x-1)*3-1,y*3-1);
									SpritePutClear(SPRBLOCK3,3,((x-1)*3-1)+z,y*3-1);
									end;
									mapblock [x,y]:= mapblock [x-1,y];
									mapblock [x-1,y]:=0;
								end;								
							4:	begin
									for z:=1 to 3 do begin
									SpritePutClear(SPRCLR,0,(x-1)*3-1,y*3-1);
									SpritePutClear(SPRBLOCK4,4,((x-1)*3-1)+z,y*3-1);
									end;
									mapblock [x,y]:= mapblock [x-1,y];
									mapblock [x-1,y]:=0;
								end;
							5:	begin
									for z:=1 to 3 do begin
									SpritePutClear(SPRCLR,0,(x-1)*3-1,y*3-1);
									SpritePutClear(SPRBLOCK5,5,((x-1)*3-1)+z,y*3-1);
									end;
									mapblock [x,y]:= mapblock [x-1,y];
									mapblock [x-1,y]:=0;
								end;
							6:	begin
									for z:=1 to 3 do begin
									SpritePutClear(SPRCLR,0,(x-1)*3-1,y*3-1);
									SpritePutClear(SPRBLOCK6,6,((x-1)*3-1)+z,y*3-1);
									end;
									mapblock [x,y]:= mapblock [x-1,y];
									mapblock [x-1,y]:=0;
								end;
							7:	begin
									for z:=1 to 3 do begin
									SpritePutClear(SPRCLR,0,(x-1)*3-1,y*3-1);
									SpritePutClear(SPRBLOCK7,71,((x-1)*3-1)+z,y*3-1);
									end;
									mapblock [x,y]:= mapblock [x-1,y];
									mapblock [x-1,y]:=0;
								end;
							end;
			SoundEffect(1,3,0);
			sevenflag:=2;
			Delet;
			if s=0 then
					if over<28 then BlockGen else Blockgen2;
			sevenflag:=0;
			Delet;
			GameOver;
			if over=0 then BlockGen;
		end;

procedure UpMove;
		begin
			for x:=1 to 6 do
				for i:=1 to 5 do
					for y:=1 to 5 do
							if mapblock [x,y]=0 and mapblock [x,y+1]<>0 then
							case mapblock [x,y+1] of
							1:	begin
									For z:=1 to 3 do begin
									SpritePutClear(SPRCLR,0,x*3-1,(y+1)*3-1);
									SpritePutClear(SPRBLOCK1,1,x*3-1,((y+1)*3-1)-z);
									end;
									mapblock [x,y]:= mapblock [x,y+1];
									mapblock [x,y+1]:=0;
								end;
							2:	begin
									For z:=1 to 3 do begin
									SpritePutClear(SPRCLR,0,x*3-1,(y+1)*3-1);
									SpritePutClear(SPRBLOCK2,2,x*3-1,((y+1)*3-1)-z);
									end;
									mapblock [x,y]:= mapblock [x,y+1];
									mapblock [x,y+1]:=0;
								end;
							3:	begin
									For z:=1 to 3 do begin
									SpritePutClear(SPRCLR,0,x*3-1,(y+1)*3-1);
									SpritePutClear(SPRBLOCK3,3,x*3-1,((y+1)*3-1)-z);
									end;
									mapblock [x,y]:= mapblock [x,y+1];
									mapblock [x,y+1]:=0;
								end;
							4:	begin
									For z:=1 to 3 do begin
									SpritePutClear(SPRCLR,0,x*3-1,(y+1)*3-1);
									SpritePutClear(SPRBLOCK4,4,x*3-1,((y+1)*3-1)-z);
									end;
									mapblock [x,y]:= mapblock [x,y+1];
									mapblock [x,y+1]:=0;
								end;
							5:	begin
									For z:=1 to 3 do begin
									SpritePutClear(SPRCLR,0,x*3-1,(y+1)*3-1);
									SpritePutClear(SPRBLOCK5,5,x*3-1,((y+1)*3-1)-z);
									end;
									mapblock [x,y]:= mapblock [x,y+1];
									mapblock [x,y+1]:=0;
								end;
							6:	begin
									For z:=1 to 3 do begin
									SpritePutClear(SPRCLR,0,x*3-1,(y+1)*3-1);
									SpritePutClear(SPRBLOCK6,6,x*3-1,((y+1)*3-1)-z);
									end;
									mapblock [x,y]:= mapblock [x,y+1];
									mapblock [x,y+1]:=0;
								end;
							7:	begin
									For z:=1 to 3 do begin
									SpritePutClear(SPRCLR,0,x*3-1,(y+1)*3-1);
									SpritePutClear(SPRBLOCK7,71,x*3-1,((y+1)*3-1)-z);
									end;
									mapblock [x,y]:= mapblock [x,y+1];
									mapblock [x,y+1]:=0;
								end;
							end;
			SoundEffect(1,3,0);
			sevenflag:=3;
			Delet;
			if s=0 then
					if over<28 then BlockGen else Blockgen2;
			sevenflag:=0;
			Delet;
			GameOver;
			if over=0 then BlockGen;
		end;

procedure DownMove;
	begin
		for x:=1 to 6 do
				for i:=1 to 5 do
					for y:=6 downto 2 do
							if mapblock [x,y]=0 and mapblock [x,y-1]<>0 then
							case  mapblock [x,y-1] of
							1:	begin
									for z:=1 to 3 do begin
									SpritePutClear(SPRCLR,0,x*3-1,(y-1)*3-1);
									SpritePutClear(SPRBLOCK1,1,x*3-1,((y-1)*3-1)+z);
									end;
									mapblock [x,y]:= mapblock [x,y-1];
									mapblock [x,y-1]:=0;
								end;
							2:	begin
									for z:=1 to 3 do begin
									SpritePutClear(SPRCLR,0,x*3-1,(y-1)*3-1);
									SpritePutClear(SPRBLOCK2,2,x*3-1,((y-1)*3-1)+z);
									end;
									mapblock [x,y]:= mapblock [x,y-1];
									mapblock [x,y-1]:=0;
								end;
							3:	begin
									for z:=1 to 3 do begin
									SpritePutClear(SPRCLR,0,x*3-1,(y-1)*3-1);
									SpritePutClear(SPRBLOCK3,3,x*3-1,((y-1)*3-1)+z);
									end;
									mapblock [x,y]:= mapblock [x,y-1];
									mapblock [x,y-1]:=0;
								end;
							4:	begin
									for z:=1 to 3 do begin
									SpritePutClear(SPRCLR,0,x*3-1,(y-1)*3-1);
									SpritePutClear(SPRBLOCK4,4,x*3-1,((y-1)*3-1)+z);
									end;
									mapblock [x,y]:= mapblock [x,y-1];
									mapblock [x,y-1]:=0;
								end;
							5:	begin
									for z:=1 to 3 do begin
									SpritePutClear(SPRCLR,0,x*3-1,(y-1)*3-1);
									SpritePutClear(SPRBLOCK5,5,x*3-1,((y-1)*3-1)+z);
									end;
									mapblock [x,y]:= mapblock [x,y-1];
									mapblock [x,y-1]:=0;
								end;
							6:	begin
									for z:=1 to 3 do begin
									SpritePutClear(SPRCLR,0,x*3-1,(y-1)*3-1);
									SpritePutClear(SPRBLOCK6,6,x*3-1,((y-1)*3-1)+z);
									end;
									mapblock [x,y]:= mapblock [x,y-1];
									mapblock [x,y-1]:=0;
								end;
							7:	begin
									for z:=1 to 3 do begin
									SpritePutClear(SPRCLR,0,x*3-1,(y-1)*3-1);
									SpritePutClear(SPRBLOCK7,71,x*3-1,((y-1)*3-1)+z);
									end;
									mapblock [x,y]:= mapblock [x,y-1];
									mapblock [x,y-1]:=0;
								end;
							end;
			SoundEffect(1,3,0);
			sevenflag:=4;
			Delet;			
			if s=0 then
					if over<28 then BlockGen else Blockgen2;
			sevenflag:=0;
			Delet;
			GameOver;
			if over=0 then BlockGen;
	end;




begin
	
	asm (MUSLOAD);
	
	border (0);
	color (128*0+64*0+8*0+7);
	clrscr;
	
	Title;
	
	ScrTwo;
	
	over:=0;
	bestscore:=0;
	
	StartScr;

	repeat begin
	
		ReadKey(key1,key2);
		
			case key1 of
				53: LeftMove;
				56: RightMove;
				55: UpMove;
				54: DownMove;
				
				79: LeftMove;
				80: RightMove;
				81: UpMove;
				65: DownMove;
			end;

		if level>levelold then
			begin
			PrintLevel;
			levelold:=level;
			end;
			
		end;
		
	until 1>2;
	
end.

HALT:	halt
		ret
		
IM2INIT:
        xor a
        ld l,a
        ld a,0+((LastAddr+255)>>8)
        ld i,a
        ld h,a
        ld d,a
        ld e,l
        inc e
        ld bc,256
        inc a
        ld (hl),a
        ldir
        ld h,a
        ld l,a
        ld (hl),0c3h
        ld de,Im2Go
        inc hl
        ld (hl),e
        inc hl
        ld (hl),d
        im 2
        ei
        ret
Im2Go
        push af
        push hl
        push de
        push bc
        ex af,af'
        exx
        push af
        push hl
        push de
        push bc
        push ix
        push iy
        call 0xBB05
        ld hl,FrameCounter
        inc (hl)
        pop iy
        pop ix
        pop bc
        pop de
        pop hl
        pop af
        ex af,af'
        exx
        pop bc
        pop de
        pop hl
        pop af
        ei
        ret
FrameCounter
        defb 0c9h
		

MUSOFF:	di
		ld a,63
		ld i,a
		im 1
		ei
		call 0xBB00
		ret


MUSLOAD:
	org 0xBB00
	inchob "music.$c"
	ret
	
SPRBLOCK1:
	DEFB 9
    DEFB 0,0, $00,$3F,$7F,$73,$6D,$6D,$71,$7E
    DEFB 0,1, $00,$FF,$FF,$FF,$99,$FF,$FF,$FF
    DEFB 0,2, $00,$FC,$FE,$CE,$B6,$B6,$8E,$7E
    DEFB 1,0, $7F,$77,$77,$7F,$7F,$77,$77,$7F
    DEFB 1,1, $42,$BD,$7E,$66,$66,$7E,$BD,$42
    DEFB 1,2, $FE,$EE,$EE,$FE,$FE,$EE,$EE,$FE
    DEFB 2,0, $7E,$71,$6D,$6D,$73,$7F,$3F,$00
    DEFB 2,1, $FF,$FF,$FF,$99,$FF,$FF,$FF,$00
    DEFB 2,2, $7E,$8E,$B6,$B6,$CE,$FE,$FC,$00

SPRBLOCK2:
    DEFB 9
    DEFB 0,0, $00,$3F,$7F,$73,$6D,$6C,$73,$7B
    DEFB 0,1, $00,$FF,$FF,$FF,$55,$AA,$FF,$FF
    DEFB 0,2, $00,$FC,$FE,$CE,$36,$B6,$CE,$DE
    DEFB 1,0, $77,$7B,$77,$7B,$77,$7B,$77,$7B
    DEFB 1,1, $C3,$BD,$66,$5A,$5A,$66,$BD,$C3
    DEFB 1,2, $EE,$DE,$EE,$DE,$EE,$DE,$EE,$DE
    DEFB 2,0, $77,$73,$6C,$6D,$73,$7F,$3F,$00
    DEFB 2,1, $FF,$FF,$AA,$55,$FF,$FF,$FF,$00
    DEFB 2,2, $EE,$CE,$B6,$36,$CE,$FE,$FC,$00

SPRBLOCK3:
    DEFB 9
    DEFB 0,0, $00,$3F,$7F,$73,$6D,$6C,$73,$7A
    DEFB 0,1, $00,$FF,$FF,$FF,$FF,$18,$DB,$DB
    DEFB 0,2, $00,$FC,$FE,$CE,$B6,$36,$CE,$5E
    DEFB 1,0, $7B,$7B,$78,$7F,$7F,$78,$7B,$7B
    DEFB 1,1, $C3,$BD,$7E,$66,$66,$7E,$BD,$C3
    DEFB 1,2, $DE,$DE,$1E,$FE,$FE,$1E,$DE,$DE
    DEFB 2,0, $7A,$73,$6C,$6D,$73,$7F,$3F,$00
    DEFB 2,1, $DB,$DB,$18,$FF,$FF,$FF,$FF,$00
    DEFB 2,2, $5E,$CE,$36,$B6,$CE,$FE,$FC,$00

SPRBLOCK4:
    DEFB 9
    DEFB 0,0, $00,$3F,$7F,$72,$6D,$6C,$73,$6B
    DEFB 0,1, $00,$FF,$FF,$00,$FF,$FF,$7E,$BD
    DEFB 0,2, $00,$FC,$FE,$4E,$B6,$36,$CE,$D6
    DEFB 1,0, $6D,$6E,$6F,$6F,$6F,$6F,$6E,$6D
    DEFB 1,1, $C3,$BD,$5A,$7E,$7E,$5A,$BD,$C3
    DEFB 1,2, $B6,$76,$F6,$F6,$F6,$F6,$76,$B6
    DEFB 2,0, $6B,$73,$6C,$6D,$72,$7F,$3F,$00
    DEFB 2,1, $BD,$7E,$FF,$FF,$00,$FF,$FF,$00
    DEFB 2,2, $D6,$CE,$36,$B6,$4E,$FE,$FC,$00

SPRBLOCK5:
    DEFB 9
    DEFB 0,0, $00,$3F,$7F,$73,$6D,$6C,$73,$7B
    DEFB 0,1, $00,$FF,$FF,$FF,$E7,$18,$E7,$FF
    DEFB 0,2, $00,$FC,$FE,$CE,$B6,$36,$CE,$DE
    DEFB 1,0, $7B,$7B,$7B,$75,$75,$7B,$7B,$7B
    DEFB 1,1, $C3,$BD,$7E,$66,$66,$7E,$BD,$C3
    DEFB 1,2, $DE,$DE,$DE,$AE,$AE,$DE,$DE,$DE
    DEFB 2,0, $7B,$73,$6C,$6D,$73,$7F,$3F,$00
    DEFB 2,1, $FF,$E7,$18,$E7,$FF,$FF,$FF,$00
    DEFB 2,2, $DE,$CE,$36,$B6,$CE,$FE,$FC,$00
	
SPRBLOCK6:
    DEFB 9
    DEFB 0,0, $00,$3F,$7F,$72,$6D,$6D,$73,$6E
    DEFB 0,1, $00,$FF,$FF,$3C,$BD,$BD,$BD,$BD
    DEFB 0,2, $00,$FC,$FE,$4E,$B6,$B6,$CE,$76
    DEFB 1,0, $6F,$60,$7F,$7F,$7F,$7F,$60,$6F
    DEFB 1,1, $C3,$BD,$42,$5A,$5A,$42,$BD,$C3
    DEFB 1,2, $F6,$06,$FE,$FE,$FE,$FE,$06,$F6
    DEFB 2,0, $6E,$73,$6D,$6D,$72,$7F,$3F,$00
    DEFB 2,1, $BD,$BD,$BD,$BD,$3C,$FF,$FF,$00
    DEFB 2,2, $76,$CE,$B6,$B6,$4E,$FE,$FC,$00
	
SPRBLOCK7:
    DEFB 9
    DEFB 0,0, $00,$3F,$7F,$73,$6D,$6D,$72,$7D
    DEFB 0,1, $00,$FF,$FF,$24,$FF,$E7,$FF,$3C
    DEFB 0,2, $00,$FC,$FE,$CE,$B6,$B6,$4E,$BE
    DEFB 1,0, $6E,$6E,$7F,$6B,$6B,$7F,$6E,$6E
    DEFB 1,1, $C3,$BD,$5A,$7E,$7E,$5A,$BD,$C3
    DEFB 1,2, $76,$76,$FE,$D6,$D6,$FE,$76,$76
    DEFB 2,0, $7D,$72,$6D,$6D,$73,$7F,$3F,$00
    DEFB 2,1, $3C,$FF,$E7,$FF,$24,$FF,$FF,$00
    DEFB 2,2, $BE,$4E,$B6,$B6,$CE,$FE,$FC,$00
	
SPRCLR:
	DEFB 9
    DEFB 0,0, $00,$00,$00,$00,$00,$00,$00,$00
    DEFB 0,1, $00,$00,$00,$00,$00,$00,$00,$00
    DEFB 0,2, $00,$00,$00,$00,$00,$00,$00,$00
    DEFB 1,0, $00,$00,$00,$00,$00,$00,$00,$00
    DEFB 1,1, $00,$00,$00,$00,$00,$00,$00,$00
    DEFB 1,2, $00,$00,$00,$00,$00,$00,$00,$00
    DEFB 2,0, $00,$00,$00,$00,$00,$00,$00,$00
    DEFB 2,1, $00,$00,$00,$00,$00,$00,$00,$00
    DEFB 2,2, $00,$00,$00,$00,$00,$00,$00,$00
	
SPRBOMB1:
    DEFB 9
    DEFB 0,0, $00,$00,$00,$00,$03,$07,$0F,$0F
    DEFB 0,1, $00,$00,$00,$C0,$E0,$F3,$F7,$F7
    DEFB 0,2, $00,$00,$00,$00,$00,$80,$C0,$E0
    DEFB 1,0, $0F,$07,$03,$00,$00,$03,$07,$07
    DEFB 1,1, $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
    DEFB 1,2, $E0,$E0,$C0,$00,$E0,$F0,$F0,$F0
    DEFB 2,0, $07,$03,$01,$00,$00,$00,$00,$00
    DEFB 2,1, $EF,$EF,$CF,$07,$01,$00,$00,$00
    DEFB 2,2, $F0,$F0,$E0,$C0,$80,$00,$00,$00
	
SPRBOMB2:
    DEFB 9
    DEFB 0,0, $00,$03,$0F,$3F,$3F,$7F,$7F,$7F
    DEFB 0,1, $00,$00,$80,$C0,$E3,$F7,$F7,$FF
    DEFB 0,2, $00,$00,$30,$F8,$FC,$FC,$FE,$FE
    DEFB 1,0, $3F,$1F,$07,$03,$07,$0F,$1F,$1F
    DEFB 1,1, $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
    DEFB 1,2, $FC,$F8,$F0,$E0,$E0,$F0,$F8,$FC
    DEFB 2,0, $1F,$1F,$1F,$0F,$07,$00,$00,$00
    DEFB 2,1, $FF,$EF,$EF,$C7,$87,$03,$00,$00
    DEFB 2,2, $FE,$FE,$FE,$FC,$FC,$F8,$F0,$00
	
SPRBOMB3:
    DEFB 9
    DEFB 0,0, $1E,$3F,$7F,$7F,$7F,$FF,$FF,$FF
    DEFB 0,1, $01,$03,$87,$CF,$EF,$E7,$F7,$F7
    DEFB 0,2, $FC,$FE,$FF,$FF,$FF,$FF,$FF,$FF
    DEFB 1,0, $FF,$7F,$37,$00,$07,$0F,$1F,$3F
    DEFB 1,1, $E7,$03,$00,$01,$E1,$F3,$F3,$FF
    DEFB 1,2, $FC,$F8,$F0,$E0,$E0,$FC,$FE,$FF
    DEFB 2,0, $7F,$7F,$FF,$FF,$FF,$7F,$3F,$00
    DEFB 2,1, $EF,$EF,$EF,$C7,$C7,$C3,$80,$00
    DEFB 2,2, $FF,$FF,$FF,$FF,$FE,$F8,$F0,$00
	
SPRBOMB4:
    DEFB 9
    DEFB 0,0, $3E,$7F,$FF,$FF,$FF,$7F,$3F,$1F
    DEFB 0,1, $00,$00,$00,$00,$00,$01,$81,$C3
    DEFB 0,2, $3C,$7E,$FF,$FF,$FF,$FF,$FE,$FC
    DEFB 1,0, $07,$01,$00,$00,$00,$00,$00,$01
    DEFB 1,1, $C7,$82,$00,$00,$00,$01,$63,$E1
    DEFB 1,2, $30,$00,$00,$00,$00,$80,$C0,$F0
    DEFB 2,0, $0F,$1F,$3F,$3F,$FF,$FF,$7F,$3C
    DEFB 2,1, $C1,$C1,$C0,$C0,$80,$00,$00,$00
    DEFB 2,2, $FF,$FF,$FF,$FF,$FF,$7E,$7E,$38
	
SPRLEVEL1:
    DEFB 24
    DEFB 0,0, $80,$3F,$40,$40,$40,$40,$40,$40
    DEFB 0,1, $00,$FF,$00,$00,$63,$62,$22,$36
    DEFB 0,2, $00,$FF,$00,$00,$17,$18,$1A,$18
    DEFB 0,3, $00,$FF,$00,$00,$01,$82,$86,$86
    DEFB 0,4, $00,$FF,$00,$00,$C0,$20,$30,$B0
    DEFB 0,5, $00,$FF,$00,$00,$70,$88,$88,$F8
    DEFB 0,6, $00,$FF,$00,$00,$0E,$11,$30,$34
    DEFB 0,7, $00,$FF,$00,$00,$0C,$0C,$0C,$0D
    DEFB 0,8, $00,$FF,$00,$00,$61,$61,$61,$61
    DEFB 0,9, $00,$FF,$00,$00,$00,$00,$00,$70
    DEFB 0,10, $00,$FF,$00,$00,$06,$16,$36,$06
    DEFB 0,11, $01,$FC,$02,$02,$02,$02,$02,$02
    DEFB 1,0, $40,$40,$40,$40,$40,$40,$3F,$80
    DEFB 1,1, $14,$0C,$08,$38,$00,$00,$FF,$00
    DEFB 1,2, $17,$10,$10,$10,$00,$00,$FF,$00
    DEFB 1,3, $06,$06,$02,$01,$00,$00,$FF,$00
    DEFB 1,4, $B0,$30,$20,$C0,$00,$00,$FF,$00
    DEFB 1,5, $C4,$C4,$C4,$F8,$00,$00,$FF,$00
    DEFB 1,6, $34,$30,$11,$0E,$00,$00,$FF,$00
    DEFB 1,7, $0D,$0C,$0C,$0C,$00,$00,$FF,$00
    DEFB 1,8, $61,$61,$61,$61,$00,$00,$FF,$00
    DEFB 1,9, $88,$A8,$88,$70,$00,$00,$FF,$00
    DEFB 1,10, $06,$06,$06,$06,$00,$00,$FF,$00
    DEFB 1,11, $02,$02,$02,$02,$02,$02,$FC,$01
	
SPRLEVEL2:
    DEFB 24
    DEFB 0,0, $80,$3F,$40,$40,$40,$40,$40,$40
    DEFB 0,1, $00,$FF,$00,$00,$63,$62,$22,$36
    DEFB 0,2, $00,$FF,$00,$00,$17,$18,$1A,$18
    DEFB 0,3, $00,$FF,$00,$00,$01,$82,$86,$86
    DEFB 0,4, $00,$FF,$00,$00,$C0,$20,$30,$B0
    DEFB 0,5, $00,$FF,$00,$00,$70,$88,$88,$F8
    DEFB 0,6, $00,$FF,$00,$00,$0E,$11,$30,$34
    DEFB 0,7, $00,$FF,$00,$00,$0C,$0C,$0C,$0D
    DEFB 0,8, $00,$FF,$00,$00,$61,$61,$61,$61
    DEFB 0,9, $00,$FF,$00,$00,$00,$00,$00,$70
    DEFB 0,10, $00,$FF,$00,$00,$14,$66,$66,$06
    DEFB 0,11, $01,$FC,$02,$02,$02,$02,$02,$02
    DEFB 1,0, $40,$40,$40,$40,$40,$40,$3F,$80
    DEFB 1,1, $14,$0C,$08,$38,$00,$00,$FF,$00
    DEFB 1,2, $17,$10,$10,$10,$00,$00,$FF,$00
    DEFB 1,3, $06,$06,$02,$01,$00,$00,$FF,$00
    DEFB 1,4, $B0,$30,$20,$C0,$00,$00,$FF,$00
    DEFB 1,5, $C4,$C4,$C4,$F8,$00,$00,$FF,$00
    DEFB 1,6, $34,$30,$11,$0E,$00,$00,$FF,$00
    DEFB 1,7, $0D,$0C,$0C,$0C,$00,$00,$FF,$00
    DEFB 1,8, $61,$61,$61,$61,$00,$00,$FF,$00
    DEFB 1,9, $88,$A8,$88,$70,$00,$00,$FF,$00
    DEFB 1,10, $04,$08,$30,$76,$00,$00,$FF,$00
    DEFB 1,11, $02,$02,$02,$02,$02,$02,$FC,$01
	
SPRLEVEL3:
    DEFB 24
    DEFB 0,0, $80,$3F,$40,$40,$40,$40,$40,$40
    DEFB 0,1, $00,$FF,$00,$00,$63,$62,$22,$36
    DEFB 0,2, $00,$FF,$00,$00,$17,$18,$1A,$18
    DEFB 0,3, $00,$FF,$00,$00,$01,$82,$86,$86
    DEFB 0,4, $00,$FF,$00,$00,$C0,$20,$30,$B0
    DEFB 0,5, $00,$FF,$00,$00,$70,$88,$88,$F8
    DEFB 0,6, $00,$FF,$00,$00,$0E,$11,$30,$34
    DEFB 0,7, $00,$FF,$00,$00,$0C,$0C,$0C,$0D
    DEFB 0,8, $00,$FF,$00,$00,$61,$61,$61,$61
    DEFB 0,9, $00,$FF,$00,$00,$00,$00,$00,$70
    DEFB 0,10, $00,$FF,$00,$00,$3C,$46,$46,$14
    DEFB 0,11, $01,$FC,$02,$02,$02,$02,$02,$02
    DEFB 1,0, $40,$40,$40,$40,$40,$40,$3F,$80
    DEFB 1,1, $14,$0C,$08,$38,$00,$00,$FF,$00
    DEFB 1,2, $17,$10,$10,$10,$00,$00,$FF,$00
    DEFB 1,3, $06,$06,$02,$01,$00,$00,$FF,$00
    DEFB 1,4, $B0,$30,$20,$C0,$00,$00,$FF,$00
    DEFB 1,5, $C4,$C4,$C4,$F8,$00,$00,$FF,$00
    DEFB 1,6, $34,$30,$11,$0E,$00,$00,$FF,$00
    DEFB 1,7, $0D,$0C,$0C,$0C,$00,$00,$FF,$00
    DEFB 1,8, $61,$61,$61,$61,$00,$00,$FF,$00
    DEFB 1,9, $88,$A8,$88,$70,$00,$00,$FF,$00
    DEFB 1,10, $14,$46,$46,$3C,$00,$00,$FF,$00
    DEFB 1,11, $02,$02,$02,$02,$02,$02,$FC,$01
	
SPRLEVEL4:
    DEFB 24
    DEFB 0,0, $80,$3F,$40,$40,$40,$40,$40,$40
    DEFB 0,1, $00,$FF,$00,$00,$63,$62,$22,$36
    DEFB 0,2, $00,$FF,$00,$00,$17,$18,$1A,$18
    DEFB 0,3, $00,$FF,$00,$00,$01,$82,$86,$86
    DEFB 0,4, $00,$FF,$00,$00,$C0,$20,$30,$B0
    DEFB 0,5, $00,$FF,$00,$00,$70,$88,$88,$F8
    DEFB 0,6, $00,$FF,$00,$00,$0E,$11,$30,$34
    DEFB 0,7, $00,$FF,$00,$00,$0C,$0C,$0C,$0D
    DEFB 0,8, $00,$FF,$00,$00,$61,$61,$61,$61
    DEFB 0,9, $00,$FF,$00,$00,$00,$00,$00,$70
    DEFB 0,10, $00,$FF,$00,$00,$46,$46,$46,$26
    DEFB 0,11, $01,$FC,$02,$02,$02,$02,$02,$02
    DEFB 1,0, $40,$40,$40,$40,$40,$40,$3F,$80
    DEFB 1,1, $14,$0C,$08,$38,$00,$00,$FF,$00
    DEFB 1,2, $17,$10,$10,$10,$00,$00,$FF,$00
    DEFB 1,3, $06,$06,$02,$01,$00,$00,$FF,$00
    DEFB 1,4, $B0,$30,$20,$C0,$00,$00,$FF,$00
    DEFB 1,5, $C4,$C4,$C4,$F8,$00,$00,$FF,$00
    DEFB 1,6, $34,$30,$11,$0E,$00,$00,$FF,$00
    DEFB 1,7, $0D,$0C,$0C,$0C,$00,$00,$FF,$00
    DEFB 1,8, $61,$61,$61,$61,$00,$00,$FF,$00
    DEFB 1,9, $88,$A8,$88,$70,$00,$00,$FF,$00
    DEFB 1,10, $16,$06,$06,$06,$00,$00,$FF,$00
    DEFB 1,11, $02,$02,$02,$02,$02,$02,$FC,$01
	
SPRLEVEL5:
    DEFB 24
    DEFB 0,0, $80,$3F,$40,$40,$40,$40,$40,$40
    DEFB 0,1, $00,$FF,$00,$00,$63,$62,$22,$36
    DEFB 0,2, $00,$FF,$00,$00,$17,$18,$1A,$18
    DEFB 0,3, $00,$FF,$00,$00,$01,$82,$86,$86
    DEFB 0,4, $00,$FF,$00,$00,$C0,$20,$30,$B0
    DEFB 0,5, $00,$FF,$00,$00,$70,$88,$88,$F8
    DEFB 0,6, $00,$FF,$00,$00,$0E,$11,$30,$34
    DEFB 0,7, $00,$FF,$00,$00,$0C,$0C,$0C,$0D
    DEFB 0,8, $00,$FF,$00,$00,$61,$61,$61,$61
    DEFB 0,9, $00,$FF,$00,$00,$00,$00,$00,$70
    DEFB 0,10, $00,$FF,$00,$00,$3C,$60,$60,$38
    DEFB 0,11, $01,$FC,$02,$02,$02,$02,$02,$02
    DEFB 1,0, $40,$40,$40,$40,$40,$40,$3F,$80
    DEFB 1,1, $14,$0C,$08,$38,$00,$00,$FF,$00
    DEFB 1,2, $17,$10,$10,$10,$00,$00,$FF,$00
    DEFB 1,3, $06,$06,$02,$01,$00,$00,$FF,$00
    DEFB 1,4, $B0,$30,$20,$C0,$00,$00,$FF,$00
    DEFB 1,5, $C4,$C4,$C4,$F8,$00,$00,$FF,$00
    DEFB 1,6, $34,$30,$11,$0E,$00,$00,$FF,$00
    DEFB 1,7, $0D,$0C,$0C,$0C,$00,$00,$FF,$00
    DEFB 1,8, $61,$61,$61,$61,$00,$00,$FF,$00
    DEFB 1,9, $88,$A8,$88,$70,$00,$00,$FF,$00
    DEFB 1,10, $04,$16,$44,$38,$00,$00,$FF,$00
    DEFB 1,11, $02,$02,$02,$02,$02,$02,$FC,$01
	
SPRLEVEL6:
    DEFB 56
    DEFB 0,0, $80,$3F,$40,$40,$40,$40,$40,$40
    DEFB 0,1, $00,$FF,$00,$00,$00,$00,$00,$00
    DEFB 0,2, $00,$FF,$00,$00,$00,$00,$00,$00
    DEFB 0,3, $00,$FF,$00,$00,$00,$00,$00,$00
    DEFB 0,4, $00,$FF,$00,$00,$00,$00,$0C,$12
    DEFB 0,5, $00,$FF,$00,$00,$00,$00,$7E,$5A
    DEFB 0,6, $00,$FF,$00,$00,$00,$00,$CD,$CD
    DEFB 0,7, $00,$FF,$00,$00,$00,$00,$E3,$93
    DEFB 0,8, $00,$FF,$00,$00,$00,$00,$06,$06
    DEFB 0,9, $00,$FF,$00,$00,$00,$00,$FC,$B4
    DEFB 0,10, $00,$FF,$00,$00,$00,$00,$00,$00
    DEFB 0,11, $00,$FF,$00,$00,$00,$00,$00,$00
    DEFB 0,12, $00,$FF,$00,$00,$00,$00,$00,$00
    DEFB 0,13, $01,$FC,$02,$02,$02,$02,$02,$02
    DEFB 1,0, $40,$40,$40,$40,$40,$40,$40,$40
    DEFB 1,1, $00,$00,$00,$00,$00,$00,$00,$00
    DEFB 1,2, $00,$00,$00,$00,$00,$00,$00,$00
    DEFB 1,3, $00,$00,$00,$00,$00,$00,$00,$00
    DEFB 1,4, $33,$33,$33,$33,$12,$0C,$00,$00
    DEFB 1,5, $18,$18,$18,$18,$18,$18,$00,$00
    DEFB 1,6, $C9,$F1,$F1,$D9,$CD,$CD,$00,$00
    DEFB 1,7, $9B,$93,$E3,$83,$83,$83,$00,$00
    DEFB 1,8, $06,$C6,$26,$36,$26,$C6,$00,$00
    DEFB 1,9, $30,$30,$30,$30,$30,$30,$00,$00
    DEFB 1,10, $00,$00,$00,$00,$00,$00,$00,$00
    DEFB 1,11, $00,$00,$00,$00,$00,$00,$00,$00
    DEFB 1,12, $00,$00,$00,$00,$00,$00,$00,$00
    DEFB 1,13, $02,$02,$02,$02,$02,$02,$02,$02
    DEFB 2,0, $40,$40,$41,$42,$46,$46,$46,$46
    DEFB 2,1, $00,$00,$8F,$4C,$6C,$0D,$0D,$6C
    DEFB 2,2, $00,$00,$DC,$5E,$1A,$1B,$19,$19
    DEFB 2,3, $00,$00,$30,$30,$30,$3C,$32,$B3
    DEFB 2,4, $00,$00,$63,$77,$6B,$6B,$63,$63
    DEFB 2,5, $00,$00,$18,$24,$66,$66,$66,$66
    DEFB 2,6, $30,$00,$CC,$CC,$CC,$DC,$EC,$CC
    DEFB 2,7, $00,$00,$1C,$32,$23,$0B,$0B,$23
    DEFB 2,8, $00,$00,$0E,$0E,$1E,$16,$36,$26
    DEFB 2,9, $00,$00,$FD,$C5,$C1,$D1,$D1,$C1
    DEFB 2,10, $00,$00,$8D,$DD,$AD,$AD,$8D,$8D
    DEFB 2,11, $00,$00,$FB,$8B,$83,$A3,$A3,$83
    DEFB 2,12, $00,$00,$37,$35,$31,$F1,$31,$31
    DEFB 2,13, $02,$02,$E2,$A2,$82,$82,$82,$82
    DEFB 3,0, $42,$41,$40,$40,$40,$40,$3F,$80
    DEFB 3,1, $4C,$8F,$00,$00,$00,$00,$FF,$00
    DEFB 3,2, $59,$DF,$00,$00,$00,$00,$FF,$00
    DEFB 3,3, $B2,$BC,$00,$00,$00,$00,$FF,$00
    DEFB 3,4, $63,$63,$00,$00,$00,$00,$FF,$00
    DEFB 3,5, $24,$18,$00,$00,$00,$00,$FF,$00
    DEFB 3,6, $CC,$CC,$00,$00,$00,$00,$FF,$00
    DEFB 3,7, $32,$1C,$00,$00,$00,$00,$FF,$00
    DEFB 3,8, $66,$66,$00,$00,$00,$00,$FF,$00
    DEFB 3,9, $C5,$FD,$00,$00,$00,$00,$FF,$00
    DEFB 3,10, $8D,$8D,$00,$00,$00,$00,$FF,$00
    DEFB 3,11, $8B,$FB,$00,$00,$00,$00,$FF,$00
    DEFB 3,12, $31,$31,$00,$00,$00,$00,$FF,$00
    DEFB 3,13, $82,$82,$02,$02,$02,$02,$FC,$01
	
SPRTITUL1:
    DEFB 48
    DEFB 0,0, $00,$00,$01,$07,$0E,$1C,$18,$38
    DEFB 0,1, $00,$70,$FC,$8F,$03,$01,$00,$00
    DEFB 0,2, $00,$00,$00,$00,$81,$83,$03,$07
    DEFB 0,3, $00,$0E,$3F,$F1,$C0,$80,$00,$00
    DEFB 0,4, $00,$01,$81,$E1,$71,$31,$01,$01
    DEFB 0,5, $00,$F8,$FE,$8F,$83,$80,$80,$80
    DEFB 0,6, $00,$00,$00,$80,$C0,$E0,$60,$70
    DEFB 0,7, $00,$C0,$C0,$C0,$C0,$C0,$C0,$C0
    DEFB 0,8, $00,$01,$01,$01,$01,$01,$01,$01
    DEFB 0,9, $00,$80,$E0,$F0,$B8,$98,$9C,$8F
    DEFB 0,10, $00,$06,$1E,$3E,$76,$66,$E6,$C6
    DEFB 0,11, $00,$00,$01,$07,$06,$0C,$0C,$18
    DEFB 0,12, $00,$78,$FE,$87,$01,$00,$00,$00
    DEFB 0,13, $00,$01,$01,$81,$81,$C1,$C1,$61
    DEFB 0,14, $00,$83,$87,$87,$83,$80,$80,$80
    DEFB 0,15, $00,$06,$86,$86,$06,$06,$1E,$3E
    DEFB 1,0, $30,$30,$60,$60,$60,$60,$30,$30
    DEFB 1,1, $00,$00,$00,$00,$00,$00,$00,$00
    DEFB 1,2, $06,$06,$0C,$0C,$0C,$0C,$06,$06
    DEFB 1,3, $00,$00,$06,$0F,$0F,$06,$00,$00
    DEFB 1,4, $01,$01,$01,$01,$01,$01,$01,$01
    DEFB 1,5, $80,$80,$80,$80,$80,$80,$80,$80
    DEFB 1,6, $30,$30,$38,$18,$18,$18,$18,$18
    DEFB 1,7, $C0,$C0,$C0,$CF,$DF,$F0,$E0,$C6
    DEFB 1,8, $01,$01,$01,$01,$C1,$E1,$61,$31
    DEFB 1,9, $87,$83,$83,$80,$80,$80,$80,$80
    DEFB 1,10, $86,$06,$06,$06,$06,$06,$06,$06
    DEFB 1,11, $18,$18,$30,$30,$30,$30,$18,$18
    DEFB 1,12, $00,$00,$30,$78,$78,$30,$00,$00
    DEFB 1,13, $61,$61,$31,$31,$31,$31,$61,$61
    DEFB 1,14, $80,$80,$81,$83,$87,$8E,$9C,$B8
    DEFB 1,15, $76,$E6,$C6,$86,$06,$06,$06,$06
    DEFB 2,0, $30,$18,$18,$0E,$07,$01,$00,$00
    DEFB 2,1, $00,$00,$01,$03,$8F,$FC,$70,$00
    DEFB 2,2, $06,$03,$83,$81,$00,$00,$00,$00
    DEFB 2,3, $00,$00,$00,$C0,$F1,$3F,$0E,$00
    DEFB 2,4, $01,$01,$31,$71,$E1,$81,$01,$00
    DEFB 2,5, $80,$80,$80,$80,$80,$FF,$FF,$00
    DEFB 2,6, $18,$18,$18,$18,$18,$F8,$F8,$00
    DEFB 2,7, $CF,$CF,$C6,$60,$70,$3F,$0F,$00
    DEFB 2,8, $31,$31,$31,$61,$E1,$C1,$01,$00
    DEFB 2,9, $80,$80,$80,$80,$80,$80,$80,$00
    DEFB 2,10, $06,$06,$06,$06,$06,$06,$06,$00
    DEFB 2,11, $18,$0C,$0C,$06,$07,$01,$00,$00
    DEFB 2,12, $00,$00,$00,$01,$87,$FE,$78,$00
    DEFB 2,13, $61,$C1,$C1,$81,$81,$01,$01,$00
    DEFB 2,14, $F0,$E0,$80,$80,$80,$80,$80,$00
    DEFB 2,15, $06,$06,$06,$06,$06,$06,$06,$00

SPRTITUL2:
    DEFB 48
    DEFB 0,0, $00,$03,$0F,$3C,$70,$60,$00,$00
    DEFB 0,1, $00,$80,$E0,$78,$1C,$0E,$06,$07
    DEFB 0,2, $00,$00,$00,$00,$01,$03,$03,$07
    DEFB 0,3, $00,$0F,$3F,$F8,$E0,$80,$00,$00
    DEFB 0,4, $00,$C0,$C0,$C0,$C0,$C1,$C1,$C3
    DEFB 0,5, $00,$07,$1F,$78,$E0,$C0,$80,$80
    DEFB 0,6, $00,$00,$C0,$F0,$38,$18,$00,$00
    DEFB 0,7, $00,$C0,$F0,$F8,$DC,$CC,$CE,$C7
    DEFB 0,8, $00,$03,$0F,$1F,$3B,$33,$73,$E3
    DEFB 0,9, $00,$00,$00,$01,$03,$07,$06,$0E
    DEFB 0,10, $00,$1C,$7F,$E3,$80,$00,$00,$00
    DEFB 0,11, $00,$03,$03,$C3,$E3,$63,$03,$03
    DEFB 0,12, $00,$00,$00,$00,$00,$00,$00,$00
    DEFB 0,13, $00,$0C,$0C,$0C,$0C,$0C,$0C,$0C
    DEFB 0,14, $00,$7F,$7F,$01,$01,$01,$01,$01
    DEFB 0,15, $00,$FE,$FE,$80,$80,$80,$80,$80
    DEFB 1,0, $00,$00,$03,$07,$07,$03,$00,$00
    DEFB 1,1, $03,$03,$01,$81,$81,$01,$03,$03
    DEFB 1,2, $06,$06,$8E,$8C,$8C,$8C,$0C,$0C
    DEFB 1,3, $00,$00,$00,$00,$00,$00,$00,$00
    DEFB 1,4, $C3,$C3,$C6,$C6,$C6,$C6,$C3,$C3
    DEFB 1,5, $00,$00,$03,$07,$07,$03,$00,$00
    DEFB 1,6, $00,$00,$00,$80,$80,$00,$00,$00
    DEFB 1,7, $C3,$C1,$C1,$C0,$C0,$C0,$C0,$C0
    DEFB 1,8, $C3,$83,$83,$03,$03,$03,$03,$03
    DEFB 1,9, $0C,$0C,$18,$18,$18,$18,$0C,$0C
    DEFB 1,10, $00,$00,$0C,$1E,$1E,$0C,$00,$00
    DEFB 1,11, $03,$03,$03,$03,$03,$03,$03,$03
    DEFB 1,12, $00,$00,$06,$0F,$0F,$06,$00,$00
    DEFB 1,13, $0C,$0C,$0C,$0C,$0C,$0C,$0C,$0C
    DEFB 1,14, $01,$01,$01,$01,$01,$01,$01,$01
    DEFB 1,15, $80,$80,$80,$80,$80,$80,$80,$80
    DEFB 2,0, $00,$00,$60,$70,$3C,$0F,$03,$00
    DEFB 2,1, $03,$06,$06,$1C,$78,$E0,$80,$00
    DEFB 2,2, $0C,$0C,$0C,$0C,$0C,$0C,$0C,$00
    DEFB 2,3, $00,$00,$00,$00,$00,$00,$00,$00
    DEFB 2,4, $C3,$C1,$C1,$C0,$C0,$C0,$C0,$00
    DEFB 2,5, $00,$80,$80,$E0,$78,$1F,$07,$00
    DEFB 2,6, $00,$00,$18,$38,$F0,$C0,$00,$00
    DEFB 2,7, $C0,$C0,$C0,$C0,$C0,$C0,$C0,$00
    DEFB 2,8, $03,$03,$03,$03,$03,$03,$03,$00
    DEFB 2,9, $0C,$06,$06,$03,$01,$00,$00,$00
    DEFB 2,10, $00,$00,$00,$80,$E3,$7F,$1C,$00
    DEFB 2,11, $03,$03,$63,$E3,$C3,$03,$03,$00
    DEFB 2,12, $00,$00,$00,$00,$00,$00,$00,$00
    DEFB 2,13, $0C,$0C,$0C,$0C,$0C,$0C,$0C,$00
    DEFB 2,14, $01,$01,$01,$01,$01,$01,$01,$00
    DEFB 2,15, $80,$80,$80,$80,$80,$80,$80,$00
	
SPRRECORD:
    DEFB 6
    DEFB 0,0, $00,$5C,$62,$6A,$62,$5C,$40,$40
    DEFB 0,1, $00,$1C,$22,$40,$58,$40,$22,$1C
    DEFB 0,2, $00,$44,$44,$58,$60,$58,$44,$44
    DEFB 0,3, $00,$38,$44,$82,$92,$82,$44,$38
    DEFB 0,4, $00,$5C,$62,$6A,$62,$5C,$40,$40
    DEFB 0,5, $00,$70,$48,$44,$44,$42,$42,$7E
	
SPRSCORE:
    DEFB 4
    DEFB 0,0, $00,$1C,$22,$40,$40,$40,$22,$1C
    DEFB 0,1, $00,$42,$42,$42,$12,$0A,$02,$02
    DEFB 0,2, $00,$1C,$22,$40,$58,$40,$22,$1C
    DEFB 0,3, $00,$54,$54,$10,$10,$10,$10,$10
	
SPRQUEUE:
    DEFB 8
    DEFB 0,0, $00,$01,$02,$04,$04,$04,$02,$01
    DEFB 0,1, $00,$C4,$24,$14,$91,$10,$20,$C0
    DEFB 0,2, $00,$21,$22,$24,$25,$A4,$22,$21
    DEFB 0,3, $00,$C5,$26,$06,$86,$05,$24,$C4
    DEFB 0,4, $00,$C1,$22,$A4,$25,$C4,$02,$01
    DEFB 0,5, $00,$C7,$24,$04,$84,$04,$24,$C7
    DEFB 0,6, $00,$04,$84,$45,$46,$26,$26,$E5
    DEFB 0,7, $00,$00,$00,$C0,$20,$A0,$20,$C0
	
SPRNEWREC:
	DEFB 12
    DEFB 0,0, $00,$42,$42,$42,$5A,$42,$42,$42
    DEFB 0,1, $00,$1C,$22,$41,$49,$41,$22,$1C
    DEFB 0,2, $00,$3C,$22,$22,$3D,$21,$21,$3E
    DEFB 0,3, $00,$20,$20,$2C,$32,$22,$22,$3C
    DEFB 0,4, $02,$94,$90,$91,$92,$94,$98,$90
    DEFB 0,5, $00,$80,$80,$80,$80,$80,$80,$80
    DEFB 0,6, $00,$B8,$C4,$D4,$C4,$B8,$80,$80
    DEFB 0,7, $00,$38,$44,$80,$B0,$80,$44,$38
    DEFB 0,8, $00,$88,$88,$B1,$C1,$B1,$88,$88
    DEFB 0,9, $00,$70,$88,$04,$24,$04,$88,$70
    DEFB 0,10, $00,$B8,$C4,$D4,$C4,$B8,$80,$80
    DEFB 0,11, $00,$E0,$90,$88,$88,$84,$84,$FC

SPRMAP:
	DEFB 0,  $00,$00,$00,$00,$00,$00,$00,$00
    
	DEFB 7,  $7F,$C0,$9F,$B0,$A7,$AC,$A9,$AA
    DEFB 7,  $FE,$03,$F9,$0D,$E5,$35,$95,$55
	DEFB 7,  $55,$95,$35,$E5,$0D,$F9,$03,$FE
	DEFB 7,  $AA,$A9,$AC,$A7,$B0,$9F,$C0,$7F
	
	DEFB 7,  $FF,$00,$FF,$00,$FF,$00,$FF,$00
	DEFB 7,  $55,$55,$55,$55,$55,$55,$55,$55
	DEFB 7,  $00,$FF,$00,$FF,$00,$FF,$00,$FF
	DEFB 7,  $AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA
	
	DEFB 7,  $55,$FE,$67,$DA,$5B,$E6,$7F,$AA
	
LastAddr