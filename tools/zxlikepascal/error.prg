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