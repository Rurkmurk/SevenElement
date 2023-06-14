program Dark;

const

	
var

	xHero, yHero, colorhero: byte; {координаты и цвет героя}
	head: byte;			{направление героя 1-up 2-down  3-left 4-right}
	maxHealtHero, healtHero: byte; 	{здоровье героя}
	shieldHero: byte; 	{защита героя}
	maxSwordHero, swordHero: byte; 	{удары героя}
	maxStepHero, stepHero: byte;
	
	mapNamber: byte; {номер карты}

	info: string [15];	{сообщение в табличке}
	
	chest: byte;		{содержимое сундука}
	
	a, b: byte;			{служебные переменные внутренние процедурные}
	r: byte;			{случайное число}
	key1, key2: byte;	{опрос клавиш}
	
	x, y, x1, y1, x2, y2, x3, y3, f, absf, absfb, absfa, signa, signb, vision: byte; {Los}
	
	sumEnemy, typEnemy, healhEnemy, xEnemy, yEnemy, dx, dy, ds, signx, signy, i: byte; {враги}
	enemy_Strength:	array [1..50] of byte;
	enemy_Healt:array [1..50] of byte;
	enemy_X: 	array [1..50] of byte;
	enemy_Y: 	array [1..50] of byte;
	

	atr, attrx, attry: byte; {карта освещения}
	
	
	tab: array [1..24, 1..32] of byte = [
	12,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,16,10,10,10,10,10,14,
	11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,11, 0, 0, 0, 0, 0,11,
	11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,11, 0, 0, 0, 0, 0,11,
	11, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,11, 0, 0, 0, 0, 0,11,
	11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,11, 0, 0, 0, 0, 0,11,
	11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,11, 0, 0, 0, 0, 0,11,
	11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,11, 0, 0, 0, 0, 0,11,
	11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,11, 0, 0, 0, 0, 0,11,
	11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,11, 0, 0, 0, 0, 0,11,
	11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,11, 0, 0, 0, 0, 0,11,
	11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,11, 0, 0, 0, 0, 0,11,
	11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,11, 0, 0, 0, 0, 0,11,
	11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,11, 0, 0, 0, 0, 0,11,
	11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,11, 0, 0, 0, 0, 0,11,
	11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,11, 0, 0, 0, 0, 0,11,
	11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,11, 0, 0, 0, 0, 0,11,
	11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,11, 0, 0, 0, 0, 0,11,
	11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,11, 0, 0, 0, 0, 0,11,
	11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0,11, 0, 0, 0, 0, 0,11,
	11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,11, 0, 0, 0, 0, 0,11,
	11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,11, 0, 0, 0, 0, 0,11,
	11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,11, 0, 0, 0, 0, 0,11,
	11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,11, 0, 0, 0, 0, 0,11,
	13,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,17,10,10,10,10,10,15];
	
	
	tabinfo: array [1..5, 1..20] of byte = [
	12,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,14,
	11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,11,
	11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,11,
	11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,11,
	13,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,15];

	map: array [1..22, 1..24] of byte;
	
	map0: array [1..22, 1..24] of byte = [
	 1, 1, 1, 1, 1, 1, 1, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
	19,18,19,19,19,18,19, 2,19,19,18,19,19,19,19,19,19,19,19,19,19,19,18,19,
	18,18,18,18,18,18, 2, 2, 9, 2,18,18,18,18,18,18,18,18,18,18,18,18,18,18,
	18,18,18,18, 2, 2, 2, 2, 2, 2, 2,18,18,18,18,18,18,18,19,18,18,19,19,18,
	18,18,18,19, 2, 8, 2, 2, 2, 8, 2, 2, 2,18,18,18,18,18,19,18,19,18,19,18,
	18,18,18,19, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,18,18,18,18,19,18,19,19,19,18,
	18,18,18,19, 2, 2, 2, 2, 2, 2, 2, 2, 2,18,18,18,18,19,18,18,18,18,18,18,
	18,18,18,19,19, 2, 2, 2, 2, 2, 2, 2,19,18,18,18,19,19,19,18,18,18,18,18,
	18,18,18,19,18, 2, 2, 2, 2, 2, 2, 2, 2, 2,19,19,18,18,19,19,19,18,19,18,
	18,18,18, 2,19, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,18,19,19,18,18,18,
	18,18,18, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,18,18,19,19,18,18,
	18,18,18,19, 2, 2, 2, 2, 2, 2, 2, 2,18,19, 2, 2, 2, 2, 2,18,18,19,18,18,
	18,18,18,18,18, 2, 2, 2, 2, 2, 2,19,18,19,18, 2, 2, 2, 2, 2,18,18,18,18,
	18,18,18,18,18,18, 2, 2, 2, 2,19,19,19,19,19,18,19, 2, 2, 2, 2, 2,18,18,
	18,18,18,18,18,18,18, 2, 2,19,19,18,18,18,18,18,19, 2, 2, 2, 2, 2, 2,18,
	18,18,18,18,18,18,18,18,18,18,18,18,18,19,19,19, 2, 2, 2, 2, 2, 2, 2,18,
	18,18,18,18,18,18,18,18,18,18,18,18,18,19,19, 2, 2, 2, 2, 2, 2, 2, 2,18,
	18,18,19,19,19,18,18,18,18,18,18,18,18,18,18,18, 2,19, 2, 2, 2, 2, 2,18,
	18,18,18,18,19,19,19,18,18,18,18,18,18,19,18,18,19,19, 2, 2, 2, 2, 2,18,
	18,18,18,18,18,18,18,18,18,18,18,18,18,18,18,18,18, 2, 2, 2, 2, 2,18,18,
	18,18,18,18,18,18,18,18,18,18,18,18,18,18,18,18,18,18, 2, 2, 2,18,18,18,
	18,18,18,18,18,18,18,18,19,19,18,18,18,19,18,18,18,18,18, 5,18,18,18,18];
	
		
	map1: array [1..22, 1..24] of byte = [
	1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
	1, 2, 2, 2, 2, 2, 8, 2, 2, 2, 2, 2, 2, 2, 2, 1, 2, 2, 2, 2, 2, 2, 2, 1,
	1, 2, 2, 8, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1, 2, 2, 2, 2, 2, 2, 2, 1,
	1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 4, 2, 2, 2, 2, 2, 2, 2, 1,
	1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1, 2, 2, 2, 2, 8, 2, 2, 1,
	1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1, 2, 2, 2, 2, 2, 2, 2, 1,
	1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 1,
	1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1, 2, 2, 1,
	1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1, 2, 2, 2, 2, 2, 2, 2, 8, 2, 1, 2, 2, 1,
	1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1, 2, 2, 2, 2, 5, 2, 2, 2, 2, 1, 2, 2, 1,
	1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1, 2, 2, 4,
	1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1, 2, 2, 1,
	1, 2, 5, 2, 2, 2, 2, 2, 2, 2, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1, 2, 2, 1,
	1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1, 1, 3, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 1,
	1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1, 2, 2, 2, 2, 2, 2, 2, 1,
	1, 2, 5, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1, 2, 2, 2, 2, 2, 2, 2, 1,
	1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1, 2, 2, 2, 2, 2, 8, 2, 1,
	1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 4, 2, 2, 2, 2, 2, 2, 2, 1,
	1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1, 2, 2, 2, 2, 2, 2, 2, 1,
	1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1, 2, 2, 2, 2, 2, 2, 2, 1,
	1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1, 2, 2, 2, 2, 2, 2, 2, 1,
	1, 1, 1, 1, 1, 1, 1,20, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1];
	
	map2: array [1..22, 1..24] of byte = [
	1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
	1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1,
	1, 2, 8, 2, 2, 8, 2, 2, 8, 2, 2, 8, 2, 2, 8, 2, 2, 8, 2, 2, 8, 2, 2, 1,
	1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1,
	1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1,
	1, 2, 8, 2, 2, 8, 2, 2, 8, 2, 2, 8, 2, 2, 8, 2, 2, 8, 2, 2, 8, 2, 2, 1,
	1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1,
	1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1,
	1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 8, 5, 2, 1,
	1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1,
	21,2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 8, 5, 2, 1,
	1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1,
	1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 8, 5, 2, 1,
	1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1,
	1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1,
	1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1,
	1, 2, 8, 2, 2, 8, 2, 2, 8, 2, 2, 8, 2, 2, 8, 2, 2, 8, 2, 2, 8, 2, 2, 1,
	1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1,
	1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1,
	1, 2, 8, 2, 2, 8, 2, 2, 8, 2, 2, 8, 2, 2, 8, 2, 2, 8, 2, 2, 8, 2, 2, 1,
	1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1,
	1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1];
	
	
{ --------------------------------- PROCEDURE ------------------------------------------------------------------ }

procedure Titul;
	begin
		color(7);
		GotoXY(16,5);
		write('КОМПЬЮТЕРНАЯ ИГРОВАЯ ПРОГРАММА');
		GotoXY(23,7);
		write('"СДОХНИ ИЛИ УМРИ"');
		GotoXY(26,9);
		write('ДЕМОВЕРСИЯ');
		GotoXY(16,13);
		write('УПРАВЛЕНИЕ: курсор вправо, влево - поворот');
		GotoXY(28,14);
		write('курсор вверх - движение вперед');
		GotoXY(28,15);
		write('курсор вниз - движение назад');
		GotoXY(28,16);
		write('Z - атака');
		GotoXY(28,17);
		write('X - действие');
		GotoXY(16,21);
		write('НАЖМИТЕ КНОПКУ ДЛЯ ПРОДОЛЖЕНИЯ');
		Read;
	end;


{---------------------------------- INIT -------------------------------------------------------------------------}

procedure EnemyGen;
	begin
		sumEnemy:=0;
		ArrayClear(enemy_Strength);
		ArrayClear(enemy_Healt);
		ArrayClear(enemy_X);
		ArrayClear(enemy_Y);
		for xEnemy:=1 to 24 do
			for yEnemy:=1 to 22 do
				begin
					if map [yEnemy,xEnemy]=8 then
						begin
							sumEnemy:=sumEnemy+1;
							enemy_Strength[sumEnemy]:=1;
							enemy_Healt[sumEnemy]:=5;
							enemy_X[sumEnemy]:=xEnemy;
							enemy_Y[sumEnemy]:=yEnemy;
						end;
				end;
	end;

procedure StartScr;
	begin
		mapset (tab, SPRMAP, 0, 0, 32, 24);
		mapput1x1 (1, 1);
		for y:=1 to 22 do
			for x:=1 to 24 do
				map [y,x]:=map0 [y,x];
		mapset (map, SPRMAP, 1, 1, 24, 22);
		mapput1x1 (1, 1);
		SpritePutClear(SPRHEART,2,27,2);
		SpritePutClear(SPRSHIELD,6,27,4);
		SpritePutClear(SPRSWORD,3,27,6);
		SpritePutClear(SPRSTEP,5,27,8);
		EnemyGen;
	end;
	
procedure NextMap1;
	begin
		for y:=1 to 22 do
			for x:=1 to 24 do
				map [y,x]:=map1 [y,x];
		mapset (map, SPRMAP, 1, 1, 24, 22);
		mapput1x1 (1, 1);
		EnemyGen;
		yHero:=21;
		SpritePutClear(SPRHEROUP,colorhero,xHero,yHero);
		head:=1;
		map [yHero,xHero]:=0;
		mapNamber:=1;
	end;

procedure NextMap2;
	begin
		for y:=1 to 22 do
			for x:=1 to 24 do
				map [y,x]:=map2 [y,x];
		mapset (map, SPRMAP, 1, 1, 24, 22);
		mapput1x1 (1, 1);
		EnemyGen;
		xHero:=2;
		SpritePutClear(SPRHERORIGHT,colorhero,xHero,yHero);
		head:=4;
		map [yHero,xHero]:=0;
		mapNamber:=2;
	end;	
	
procedure StateOutput;	{вывод параметров героя}
	begin
		WindowSet (28,2,3,6);
		WindowClear;
		textcolor (7);
		GotoXY (56,2);
		write (healtHero,'/',maxHealtHero);
		GotoXY (58,4);
		write (shieldHero);
		GotoXY (58,6);
		write (swordHero);
		GotoXY (57,8);
		write (stepHero,'/',maxStepHero);
	end;
	
procedure HeroInit;
	begin
		xHero:=9; yHero:=14; colorhero:=7;
		
		maxHealtHero:=10;
		healtHero:=10;
		
		maxStepHero:=2;
		stepHero:=2;
		
		shieldHero:=0;
		
		maxSwordHero:=0;
		swordHero:=0;
		
		SpritePutClear(SPRHEROUP,colorhero,xHero,yHero);
		head:=1;
		map [yHero,xHero]:=0;
		
		mapNamber:=0;
	end;
	


{----------------------------------- Info Table ------------------------------------------------------------------}

procedure InfoTable;
	begin
		WindowSet (3,10,20,5);
		WindowGet;
		WindowClear;
		mapset (tabinfo, SPRMAP, 3, 10, 20, 5);
		mapput1x1 (1, 1);
		GotoXY (12,12);
		color (7);
		write (info);
		Read;
		WindowPut;
	end;


{----------------------------------- Los Проверка линии видимости ------------------------------------------------}

{вход координаты x1, x2, y1, y2}
procedure Line;
	begin
		
		vision:=1;
		
		if y1<y2 then 
			begin
				a:=y2-y1;
				signa:=1;
			end
		else
			begin
				a:=y1-y2;
				signa:=0;
			end;
		
		if x2<x1 then 
			begin
				b:=x1-x2;
				signb:=1;
			end
		else
			begin
				b:=x2-x1;
				signb:=0;
			end;
		
		{2}
		
		f:=100;
		x:=x1;
		y:=y1;
		
		
		{3}
		
		if a<b then
			begin
				repeat
					begin
						f:=f+a;
						if f<=100 then absf:=100-f else absf:=f-100;
						if f>=(b+100) then absfb:=f-(b+100) else absfb:=(b+100)-f;
						if absf>absfb then	
							begin
								f:=f-b;
								case signa of
								1: y:=y+1;
								0: y:=y-1;
								end;
								case signb of
								1: x:=x-1;
								0: x:=x+1;
								end;
							end
						else
								case signb of
								1: x:=x-1;
								0: x:=x+1;
								end;

						if map[y,x]=1 or map[y,x]=3 or map[y,x]=4 or map[y,x]=18 or map[y,x]=19 then vision:=0;
				
					end;
				until x=x2 and y=y2;
			end
		else
			begin
				repeat
					begin
						f:=f+b;
						if f<=100 then absf:=100-f else absf:=f-100;
						if f>=(a+100) then absfa:=f-(a+100) else absfa:=(a+100)-f;
						if absf>absfa then	
							begin
								f:=f-a;
								case signb of
								1: x:=x-1;
								0: x:=x+1;
								end;
								case signa of
								1: y:=y+1;
								0: y:=y-1;
								end;
							end
						else
								case signa of
								1: y:=y+1;
								0: y:=y-1;
								end;
						if map[y,x]=1 or map[y,x]=3 or map[y,x]=4 or map[y,x]=18 or map[y,x]=19 then vision:=0;
					end;
				until x=x2 and y=y2;
			end;
	end;

procedure LosHero;
	begin
		x2:=xHero;
		y2:=yHero;
		for y1:=1 to 22 do
			for x1:=1 to 24 do
				begin
					{ x1:=x2+x3-6; }
					{ y1:=y2+y3-6; }
					{ if y1>200 then y1:=1; }
					{ if y1>22 then y1:=24; }
					{ if x1>200 then x1:=1; }
					{ if x1>24 then x1:=24; }
					attrx:=x1;
					attry:=y1;
					asm (CHECKLIGHT);
					if atr=0 then
						begin
							if x1<>x2 or y1<>y2 then
								begin
									Line;
									if vision=1 then
										case map[y1,x1] of
											1: begin atr:=7; attrx:=x1; attry:=y1; asm (LIGHT); end;
											2: begin atr:=1; attrx:=x1; attry:=y1; asm (LIGHT); end;
											3: begin atr:=1; attrx:=x1; attry:=y1; asm (LIGHT); end;
											4: begin atr:=1; attrx:=x1; attry:=y1; asm (LIGHT); end;
											5: begin atr:=70; attrx:=x1; attry:=y1; asm (LIGHT); end;
											6: begin atr:=6; attrx:=x1; attry:=y1; asm (LIGHT); end;
											8: begin atr:=3; attrx:=x1; attry:=y1; asm (LIGHT); end;
										end;
								end;
						end;
				end;
		
	end;

procedure LosEnemy;
	begin
		x1:=enemy_X[i];
		y1:=enemy_Y[i];
		x2:=xHero;
		y2:=yHero;
		Line;
	end;

{ ===============================================  НОВАЯ ИГРА =========================================}

procedure NewGame;
	begin
	Titul;
	
	StartScr;
	
	HeroInit;
	
	StateOutput;
	
	LosHero;
	end;
{============================================== ДВИЖЕНИЕ Героя ======================================}

{удар об стену}
procedure BlockWallForvard;
	begin
		WindowSet(xHero,yHero,1,1);
		case head of
			1: WindowScrollUp;
			2: WindowScrollDown;
			3: WindowScrollLeft;
			4: WindowScrollRight;
		end;
		SoundEffect (1,6,0);
		Delay (2);
		case head of
			1: WindowScrollDown;
			2: WindowScrollUp;
			3: WindowScrollRight;
			4: WindowScrollLeft;
		end;
	end;
	
procedure BlockWallBackward;
	begin
		WindowSet(xHero,yHero,1,1);
		case head of
			2: WindowScrollUp;
			1: WindowScrollDown;
			4: WindowScrollLeft;
			3: WindowScrollRight;
		end;
		SoundEffect (1,6,0);
		Delay (2);
		case head of
			2: WindowScrollDown;
			1: WindowScrollUp;
			4: WindowScrollRight;
			3: WindowScrollLeft;
		end;
	end;

procedure LeftTurn;
	begin
		case head of
			1: 	begin
					head:=3;
					SpritePutClear(SPRHEROLEFT,colorhero,xHero,yHero);
				end;
					
			2:	begin
					head:=4;
					SpritePutClear(SPRHERORIGHT,colorhero,xHero,yHero);
				end;
			3:	begin
					head:=2;
					SpritePutClear(SPRHERODOWN,colorhero,xHero,yHero);
				end;
			4:	begin
					head:=1;
					SpritePutClear(SPRHEROUP,colorhero,xHero,yHero);
				end;
		end;
		SoundEffect (1,3,0);
		Delay (10);
	end;

procedure RighTurn;
	begin
		case head of
			1: 	begin
					head:=4;
					SpritePutClear(SPRHERORIGHT,colorhero,xHero,yHero);
				end;
			2:	begin
					head:=3;
					SpritePutClear(SPRHEROLEFT,colorhero,xHero,yHero);
				end;
			3:	begin
					head:=1;
					SpritePutClear(SPRHEROUP,colorhero,xHero,yHero);
				end;
			4:	begin
					head:=2;
					SpritePutClear(SPRHERODOWN,colorhero,xHero,yHero);
				end;
		end;
		SoundEffect (1,3,0);
		Delay (10);
	end;

procedure ForwardMove;
	begin
		case head of
		1:	begin
				if map [yHero-1,xHero]=2 then
					begin
						WindowSet(xHero,yHero-1,1,1);
						color (7);
						WindowClear;
						WindowSet(xHero,yHero-1,1,2);
						for a:=1 to 8 do 
							begin 
								WindowScrollUp;
								asm (HALT);
							end;
						map [yHero,xHero]:=2;
						mapset (map, SPRMAP, xHero, yHero, 1, 1);
						mapput1x1 (yHero, xHero);
						SoundEffect (1,3,0);
						yHero:=yHero-1;
						if yHero=1 then NextMap1;
						map [yHero,xHero]:=0;
						stepHero:=stepHero-1;
					end
				else
					BlockWallForvard;
			end;
		2:	begin
				if map [yHero+1,xHero]=2 then
					begin
						WindowSet(xHero,yHero+1,1,1);
						color (7);
						WindowClear;
						WindowSet(xHero,yHero,1,2);
						for a:=1 to 8 do 
							begin 
								WindowScrollDown;
								asm (HALT);
							end;
						map [yHero,xHero]:=2;
						mapset (map, SPRMAP, xHero, yHero, 1, 1);
						mapput1x1 (yHero, xHero);
						SoundEffect (1,3,0);
						yHero:=yHero+1;
						map [yHero,xHero]:=0;
						stepHero:=stepHero-1;
					end
				else
					BlockWallForvard;
			end;
		3:	begin
				if map [yHero,xHero-1]=2 then
					begin
						WindowSet(xHero-1,yHero,1,1);
						color (7);
						WindowClear;
						WindowSet(xHero-1,yHero,2,1);
						for a:=1 to 8 do
							begin 
								WindowScrollLeft;
								asm (HALT);
							end;
						map [yHero,xHero]:=2;
						mapset (map, SPRMAP, xHero, yHero, 1, 1);
						mapput1x1 (yHero, xHero);
						SoundEffect (1,3,0);
						xHero:=xHero-1;
						map [yHero,xHero]:=0;
						stepHero:=stepHero-1;
					end
				else
					BlockWallForvard;
			end;
		4:	begin	
				if map [yHero,xHero+1]=2 then
					begin
						WindowSet(xHero+1,yHero,1,1);
						color (7);
						WindowClear;
						WindowSet(xHero,yHero,2,1);
						for a:=1 to 8 do
							begin 
								WindowScrollRight;
								asm (HALT);
							end;
						map [yHero,xHero]:=2;
						mapset (map, SPRMAP, xHero, yHero, 1, 1);
						mapput1x1 (yHero, xHero);
						SoundEffect (1,3,0);
						xHero:=xHero+1;
						if xHero=24 then NextMap2;
						map [yHero,xHero]:=0;
						stepHero:=stepHero-1;
					end
				else
					BlockWallForvard;
			end;
		end;
	end;
	
procedure BackwardMove;
	begin
		case head of
		2:	begin
				if map [yHero-1,xHero]=2 then
					begin
						WindowSet(xHero,yHero-1,1,1);
						color (7);
						WindowClear;
						WindowSet(xHero,yHero-1,1,2);
						for a:=1 to 8 do 
							begin 
								WindowScrollUp;
								asm (HALT);
							end;
						map [yHero,xHero]:=2;
						mapset (map, SPRMAP, xHero, yHero, 1, 1);
						mapput1x1 (yHero, xHero);
						SoundEffect (1,3,0);
						yHero:=yHero-1;
						map [yHero,xHero]:=0;
						stepHero:=stepHero-1;
					end
				else
					BlockWallBackward;
			end;
		1:	begin
				if map [yHero+1,xHero]=2 then
					begin
						WindowSet(xHero,yHero+1,1,1);
						color (7);
						WindowClear;
						WindowSet(xHero,yHero,1,2);
						for a:=1 to 8 do 
							begin 
								WindowScrollDown;
								asm (HALT);
							end;
						map [yHero,xHero]:=2;
						mapset (map, SPRMAP, xHero, yHero, 1, 1);
						mapput1x1 (yHero, xHero);
						SoundEffect (1,3,0);
						yHero:=yHero+1;
						map [yHero,xHero]:=0;
						stepHero:=stepHero-1;
					end
				else
					BlockWallBackward;
			end;
		4:	begin
				if map [yHero,xHero-1]=2 then
					begin
						WindowSet(xHero-1,yHero,1,1);
						color (7);
						WindowClear;
						WindowSet(xHero-1,yHero,2,1);
						for a:=1 to 8 do
							begin 
								WindowScrollLeft;
								asm (HALT);
							end;
						map [yHero,xHero]:=2;
						mapset (map, SPRMAP, xHero, yHero, 1, 1);
						mapput1x1 (yHero, xHero);
						SoundEffect (1,3,0);
						xHero:=xHero-1;
						map [yHero,xHero]:=0;
						stepHero:=stepHero-1;
					end
				else
					BlockWallBackward;
			end;
		3:	begin	
				if map [yHero,xHero+1]=2 then
					begin
						WindowSet(xHero+1,yHero,1,1);
						color (7);
						WindowClear;
						WindowSet(xHero,yHero,2,1);
						for a:=1 to 8 do
							begin 
								WindowScrollRight;
								asm (HALT);
							end;
						map [yHero,xHero]:=2;
						mapset (map, SPRMAP, xHero, yHero, 1, 1);
						mapput1x1 (yHero, xHero);
						SoundEffect (1,3,0);
						xHero:=xHero+1;
						map [yHero,xHero]:=0;
						stepHero:=stepHero-1;
					end
				else
					BlockWallBackward;
			end;
		end;
	end;

procedure HeroDamage;
	begin
		a:=atr;
		
		atr:=66;
		attrx:=28;
		attry:=2;
		while attrx<31 do
			begin
				asm (LIGHT);
				attrx:=attrx+1;
			end;
			SoundEffect (1,30,50);
		atr:=7;
		attrx:=28;
		while attrx<31 do
			begin
				asm (LIGHT);
				attrx:=attrx+1;
			end;
		
		attrx:=enemy_X[i];
		attry:=enemy_Y[i];
		atr:=a;
	end;
{=============================================ДВИЖЕНИЕ ВРАГов========================================}

procedure PathSearch;
	begin
		if xHero<enemy_X[i] then 
			begin
				dx:=enemy_X[i]-xHero;
				signx:=0;
			end 
		else 
			begin
				dx:=xHero-enemy_X[i];
				signx:=1;
			end;
		if yHero<enemy_Y[i] then
			begin
				dy:=enemy_Y[i]-yHero;
				signy:=0;
			end
		else
			begin
				dy:=yHero-enemy_Y[i];
				signy:=1;
			end;
		if dx>dy then dx:=1 else dx:=0;
	end;

procedure EnemyMove;
	begin
		LosEnemy;
			if vision=1 then
				begin
					PathSearch;
					case dx of
					0:	begin
							case signy of 
							
{up}							0:	begin
										if map [enemy_Y[i]-1,enemy_X[i]]=2 then
											begin
												WindowSet(enemy_X[i],enemy_Y[i]-1,1,1);
												color (atr);
												WindowClear;
												WindowSet(enemy_X[i],enemy_Y[i]-1,1,2);
												for a:=1 to 8 do 
													begin 
														WindowScrollUp;
														asm (HALT);
													end;
												map [enemy_Y[i],enemy_X[i]]:=2;
												mapset (map, SPRMAP, enemy_X[i], enemy_Y[i], 1, 1);
												mapput1x1 (enemy_Y[i], enemy_X[i]);
												SoundEffect (1,3,0);
												enemy_Y[i]:=enemy_Y[i]-1;
												map [enemy_Y[i],enemy_X[i]]:=8;
											end;
									end;	

{down}							1:	begin
										if map [enemy_Y[i]+1,enemy_X[i]]=2 then
											begin
												WindowSet(enemy_X[i],enemy_Y[i]+1,1,1);
												color (atr);
												WindowClear;
												WindowSet(enemy_X[i],enemy_Y[i],1,2);
												for a:=1 to 8 do 
													begin 
														WindowScrollDown;
														asm (HALT);
													end;
												map [enemy_Y[i],enemy_X[i]]:=2;
												mapset (map, SPRMAP, enemy_X[i], enemy_Y[i], 1, 1);
												mapput1x1 (enemy_Y[i], enemy_X[i]);
												SoundEffect (1,3,0);
												enemy_Y[i]:=enemy_Y[i]+1;
												map [enemy_Y[i],enemy_X[i]]:=8;
											end;
									end;	
							end;
						end;

					1:	begin
							case signx of 

{left}							0:	begin
										if map [enemy_Y[i],enemy_X[i]-1]=2 then
											begin
												WindowSet(enemy_X[i]-1,enemy_Y[i],1,1);
												color (atr);
												WindowClear;
												WindowSet(enemy_X[i]-1,enemy_Y[i],2,1);
												for a:=1 to 8 do
													begin 
														WindowScrollLeft;
														asm (HALT);
													end;
												map [enemy_Y[i],enemy_X[i]]:=2;
												mapset (map, SPRMAP, enemy_X[i], enemy_Y[i], 1, 1);
												mapput1x1 (enemy_Y[i], enemy_X[i]);
												SoundEffect (1,3,0);
												enemy_X[i]:=enemy_X[i]-1;
												map [enemy_Y[i],enemy_X[i]]:=8;
											end;
									end;
									
{right}							1:	begin
										if map [enemy_Y[i],enemy_X[i]+1]=2 then
											begin
												WindowSet(enemy_X[i]+1,enemy_Y[i],1,1);
												color (atr);
												WindowClear;
												WindowSet(enemy_X[i],enemy_Y[i],2,1);
												for a:=1 to 8 do
													begin 
														WindowScrollRight;
														asm (HALT);
													end;
												map [enemy_Y[i],enemy_X[i]]:=2;
												mapset (map, SPRMAP, enemy_X[i], enemy_Y[i], 1, 1);
												mapput1x1 (enemy_Y[i], enemy_X[i]);
												SoundEffect (1,3,0);
												enemy_X[i]:=enemy_X[i]+1;
												map [enemy_Y[i],enemy_X[i]]:=8;
											end;
									end;
		
							end;
						end;
					end;
				end;
		LosHero;		
	end;

procedure EnemyAtack;
	begin
		case a of
{up}					1: 
							begin
								WindowSet(enemy_X[i],enemy_Y[i],1,1);
								WindowScrollUp;
								HeroDamage;
								mapset (map, SPRMAP, enemy_X[i], enemy_Y[i], 1, 1);
								mapput1x1 (enemy_Y[i], enemy_X[i]);
								asm (LIGHT);
								healtHero:=healtHero-enemy_Strength[i];
							end;
{down}					2: 
							begin
								WindowSet(enemy_X[i],enemy_Y[i],1,1);
								WindowScrollDown;
								HeroDamage;
								mapset (map, SPRMAP, enemy_X[i], enemy_Y[i], 1, 1);
								mapput1x1 (enemy_Y[i], enemy_X[i]);
								asm (LIGHT);
								healtHero:=healtHero-enemy_Strength[i];
							end;			
{left}					3: 
							begin
								WindowSet(enemy_X[i],enemy_Y[i],1,1);
								WindowScrollLeft;
								HeroDamage;
								mapset (map, SPRMAP, enemy_X[i], enemy_Y[i], 1, 1);
								mapput1x1 (enemy_Y[i], enemy_X[i]);
								asm (LIGHT);
								healtHero:=healtHero-enemy_Strength[i];
							end;			
{right}					4: 
							begin
								WindowSet(enemy_X[i],enemy_Y[i],1,1);
								WindowScrollRight;
								HeroDamage;
								mapset (map, SPRMAP, enemy_X[i], enemy_Y[i], 1, 1);
								mapput1x1 (enemy_Y[i], enemy_X[i]);
								asm (LIGHT);
								healtHero:=healtHero-enemy_Strength[i];
							end;
		end;
		StateOutput;
		if healtHero=0 then
			begin
				info:='YOU DIED';
				InfoTable;
				NewGame;
			end;
	end;

procedure EnemyAction;
	begin
		for i:=1 to sumEnemy do
			if enemy_Healt[i]>0 then
				begin
					attrx:=enemy_X[i];
					attry:=enemy_Y[i];
					asm (CHECKLIGHT);
					if map [enemy_Y[i]-1,enemy_X[i]]=0 then begin a:=1; EnemyAtack; end else
						if map [enemy_Y[i]+1,enemy_X[i]]=0 then begin a:=2; EnemyAtack; end else
							if map [enemy_Y[i],enemy_X[i]-1]=0 then begin a:=3; EnemyAtack; end else
								if map [enemy_Y[i],enemy_X[i]+1]=0 then begin a:=4; EnemyAtack; end
					else EnemyMove;
				end;
	end;

{===============================================  АТАКА =============================================}


procedure BubbleUp; {отображение урона сверху}
	begin 
		WindowSet (enemy_X[a],enemy_Y[a]-1,1,1);
		WindowGet;
		WindowClear;
		gotoXY (enemy_X[a]*2, enemy_Y[a]-1);
		color (2);
		write ('-',swordHero);
		SoundEffect (1,30,50);
		for b:=1 to 8 do
			begin
				WindowScrollUp;
				asm (HALT);
			end;
		WindowPut;
	end;

procedure BubbleRight; {отображение урона справа}
	begin 
		WindowSet (enemy_X[a]+1,enemy_Y[a],1,1);
		WindowGet;
		WindowClear;
		gotoXY (enemy_X[a]*2+2, enemy_Y[a]);
		color (2);
		write ('-',swordHero);
		SoundEffect (1,30,50);
		for b:=1 to 8 do
			begin
				WindowScrollUp;
				asm (HALT);
			end;
		WindowPut;
	end;

procedure AttackAnim; {анимация атаки}
	begin
		case head of
			1:	begin
					SpritePutClear(SPRHEROUPFIRE1,colorhero,xHero,yHero);
					Delay (5);
					SpritePutClear(SPRHEROUPFIRE2,colorhero,xHero,yHero);
					SoundEffect (1,5,0);
					Delay (5);
					SpritePutClear(SPRHEROUP,colorhero,xHero,yHero);
				end;
			2:	begin
					SpritePutClear(SPRHERODOWNFIRE1,colorhero,xHero,yHero);
					Delay (5);
					SpritePutClear(SPRHERODOWNFIRE2,colorhero,xHero,yHero);
					SoundEffect (1,5,0);
					Delay (5);
					SpritePutClear(SPRHERODOWN,colorhero,xHero,yHero);
				end;
			3:	begin
					SpritePutClear(SPRHEROLEFTFIRE1,colorhero,xHero,yHero);
					Delay (5);
					SpritePutClear(SPRHEROLEFTFIRE2,colorhero,xHero,yHero);
					SoundEffect (1,5,0);
					Delay (5);
					SpritePutClear(SPRHEROLEFT,colorhero,xHero,yHero);
				end;
			4:	begin
					SpritePutClear(SPRHERORIGHTFIRE1,colorhero,xHero,yHero);
					Delay (5);
					SpritePutClear(SPRHERORIGHTFIRE2,colorhero,xHero,yHero);
					SoundEffect (1,5,0);
					Delay (5);
					SpritePutClear(SPRHERORIGHT,colorhero,xHero,yHero);
				end;			
		end;
	end;

procedure Attack;
	begin
		if swordHero>0 then
		begin
			AttackAnim;
			case head of
				1: 	begin
						for a:=1 to sumEnemy do
							if xHero=enemy_X[a] and yHero=(enemy_Y[a]+1) and enemy_Strength[a]<>0 then
							begin
								enemy_Healt[a]:=(enemy_Healt[a]-swordHero);
								BubbleUp;
								if enemy_Healt[a]=0 then
									begin
										SoundEffect (1,10,100);
										enemy_Strength[a]:=0;
										{ sumEnemy:=sumEnemy-1; }
										map [enemy_Y[a],enemy_X[a]]:=2;
										mapset (map, SPRMAP, enemy_X[a], enemy_Y[a], 1, 1);
										mapput1x1 (enemy_Y[a], enemy_X[a]);
										LosHero;
									end;
							end;
					end;
				2: 	begin
						for a:=1 to sumEnemy do
							if xHero=enemy_X[a] and yHero=(enemy_Y[a]-1) and enemy_Strength[a]<>0 then
							begin
								enemy_Healt[a]:=(enemy_Healt[a]-swordHero);
								BubbleRight;
								if enemy_Healt[a]=0 then
									begin
										SoundEffect (1,10,100);
										enemy_Strength[a]:=0;
										{ sumEnemy:=sumEnemy-1; }
										map [enemy_Y[a],enemy_X[a]]:=2;
										mapset (map, SPRMAP, enemy_X[a], enemy_Y[a], 1, 1);
										mapput1x1 (enemy_Y[a], enemy_X[a]);
										LosHero;
									end;
							end;
					end;
				3: 	begin
						for a:=1 to sumEnemy do
							if xHero=(enemy_X[a]+1) and yHero=enemy_Y[a] and enemy_Strength[a]<>0 then
							begin
								enemy_Healt[a]:=(enemy_Healt[a]-swordHero);
								BubbleUp;
								if enemy_Healt[a]=0 then
									begin
										SoundEffect (1,10,100);
										enemy_Strength[a]:=0;
										{ sumEnemy:=sumEnemy-1; }
										map [enemy_Y[a],enemy_X[a]]:=2;
										mapset (map, SPRMAP, enemy_X[a], enemy_Y[a], 1, 1);
										mapput1x1 (enemy_Y[a], enemy_X[a]);
										LosHero;
									end;
							end;
					end;
				4: 	begin
						for a:=1 to sumEnemy do
							if xHero=(enemy_X[a]-1) and yHero=enemy_Y[a] and enemy_Strength[a]<>0 then
							begin
								enemy_Healt[a]:=(enemy_Healt[a]-swordHero);
								BubbleUp;
								if enemy_Healt[a]=0 then
									begin
										SoundEffect (1,10,100);
										enemy_Strength[a]:=0;
										{ sumEnemy:=sumEnemy-1; }
										map [enemy_Y[a],enemy_X[a]]:=2;
										mapset (map, SPRMAP, enemy_X[a], enemy_Y[a], 1, 1);
										mapput1x1 (enemy_Y[a], enemy_X[a]);
										LosHero;
									end;
							end;
					end;
			end;
		end
		else begin info:='YOU NEED A SWORD'; InfoTable; end;
	end;
{=============================================== СУНДУК =================================================}

procedure ChestEmpty;
	begin
		SoundEffect (1,10,100);
		info:='THIS CHEST IS EMPTY';
		InfoTable;
	end;
	
procedure ChestSword;
	begin
		info:= 'YOU FOUND A BRONSE SWORD';
		InfoTable;
		swordHero:=1;
	end;

procedure ChestShield;
	begin
		info:='YOU FOUND A WOOD SHIELD';
		InfoTable;
		shieldHero:=shieldHero+1;
		if shieldHero>10 then shieldHero:=10;
	end;
	
procedure ChestClothes;
	begin
		info:='YOU FOUND A ARMOR';
		InfoTable;
		shieldHero:=shieldHero+1;
		if shieldHero>10 then shieldHero:=10;
	end;
	
procedure ChestFood;
	begin
		info:='YOU FOUND A HEALTH POTION';
		InfoTable;
		healtHero:=healtHero+1;
		if healtHero>10 then healtHero:=10;
	end;

procedure ChestGen;	{генерация содержимого сундука}
	begin
		if healtHero<5 then chest:=4 else chest:=Random (4);
		if swordHero=0 then chest:=1 else chest:=Random (4);
		case chest of
			0: ChestEmpty;
			1: ChestSword;
			2: ChestShield;
			3: ChestClothes;
			4: ChestFood;
		end;
		StateOutput;
	end;

{======================================= КНОПКА АКТИВАЦИИ ========================================}

procedure Tablo;
	begin
		case mapNamber of
			0:	begin
				info:='DO NOT ENTER! LIFE THREATENING!';
				InfoTable;
				end;
		end;
	end;

procedure Action;
	begin
		if head=1 then
				case map [yHero-1,xHero] of
					3: 	begin
							map [yHero-1,xHero]:=2;
							WindowSet(xHero,yHero-1,1,1);
							for a:=1 to 8 do begin WindowScrollLeft; asm (HALT); end;
							SoundEffect (1,30,150);
							mapset (map, SPRMAP, xHero, yHero-1, 1, 1);
							mapput1x1 (yHero-1, xHero);
							LosHero;
							stepHero:=stepHero-1;
						end;
					5:	begin
							map [yHero-1,xHero]:=6;
							SoundEffect (1,20,0);
							mapset (map, SPRMAP, xHero, yHero-1, 1, 1);
							mapput1x1 (yHero-1, xHero);
							LosHero;
							ChestGen;
							stepHero:=stepHero-1;
						end;
					9:	Tablo;
				end;
		
		if head=2 then
				case map [yHero+1,xHero] of
					3: 	begin
							map [yHero+1,xHero]:=2;
							WindowSet(xHero,yHero+1,1,1);
							for a:=1 to 8 do begin WindowScrollRight; asm (HALT); end;
							SoundEffect (1,30,150);
							mapset (map, SPRMAP, xHero, yHero+1, 1, 1);
							mapput1x1 (yHero+1, xHero);
							LosHero;
							stepHero:=stepHero-1;
						end;
					5:	begin
							map [yHero+1,xHero]:=6;
							SoundEffect (1,20,0);
							mapset (map, SPRMAP, xHero, yHero+1, 1, 1);
							mapput1x1 (yHero+1, xHero);
							LosHero;
							ChestGen;
							stepHero:=stepHero-1;
						end;
					9:	Tablo;
				end;
		
		if head=3 then
				case map [yHero,xHero-1] of
					4: 	begin
							map [yHero,xHero-1]:=2;
							WindowSet(xHero-1,yHero,1,1);
							for a:=1 to 8 do begin WindowScrollDown; asm (HALT); end;
							SoundEffect (1,30,150);
							mapset (map, SPRMAP, xHero-1, yHero, 1, 1);
							mapput1x1 (yHero, xHero-1);
							LosHero;
							stepHero:=stepHero-1;
						end;
					5:	begin
							map [yHero,xHero-1]:=6;
							SoundEffect (1,20,0);
							mapset (map, SPRMAP, xHero-1, yHero, 1, 1);
							mapput1x1 (yHero, xHero-1);
							LosHero;
							ChestGen;
							stepHero:=stepHero-1;
						end;
					9:	Tablo;
				end;
		
		if head=4 then
				case map [yHero,xHero+1] of
					4: 	begin
							map [yHero,xHero+1]:=2;
							WindowSet(xHero+1,yHero,1,1);
							for a:=1 to 8 do begin WindowScrollUp; asm (HALT); end;
							SoundEffect (1,30,200);
							mapset (map, SPRMAP, xHero+1, yHero, 1, 1);
							mapput1x1 (yHero, xHero+1);
							LosHero;
							stepHero:=stepHero-1;
						end;
					5:	begin
							map [yHero,xHero+1]:=6;
							SoundEffect (1,20,0);
							mapset (map, SPRMAP, xHero+1, yHero, 1, 1);
							mapput1x1 (yHero, xHero+1);
							LosHero;
							ChestGen;
							stepHero:=stepHero-1;
						end;
					9:	Tablo;
				end;
	end;



{ ===============================================  ПРОГРАММА =========================================}

begin
	asm (EI);
	border (0);
	color (0);
	clrscr;
	
	Titul;
	NewGame;
	
	
	
	repeat 
		begin
			if stepHero=0 then
				begin EnemyAction; stepHero:=maxStepHero; StateOutput; end
			else
				begin
					ReadKey(key1, key2);
					case key1 of
						53, 79: begin
									LeftTurn;
									LosHero;
								end;
						56, 80: begin
									RighTurn;
									LosHero;
								end;
						55, 81: begin
									ForwardMove;
									StateOutput;
									LosHero;
								end;
						54, 65: begin
									BackwardMove;
									StateOutput;
									LosHero;
								end;
						90: begin
								Attack;
								stepHero:=stepHero-1;
								StateOutput;
							end;
						88: begin
								Action;
								StateOutput;
							end;
					end;
				end;
		end;
	until 1>2;
	
end.