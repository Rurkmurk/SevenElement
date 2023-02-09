      org   23900
      jp    MAIN
_BLOCKVIBRSOUND
      call  scr_up
      call  scr_rt
      ld    a,1
      ld    (sound_loop),a
      ld    a,2
      ld    (sound_time),a
      xor   a
      ld    (sound_freq),a
      call  sound_effect
      call  HALT
      call  scr_dn
      call  scr_dn
      ld    a,1
      ld    (sound_loop),a
      ld    a,2
      ld    (sound_time),a
      ld    a,1
      ld    (sound_freq),a
      call  sound_effect
      call  HALT
      call  scr_lf
      call  scr_lf
      ld    a,1
      ld    (sound_loop),a
      ld    a,2
      ld    (sound_time),a
      xor   a
      ld    (sound_freq),a
      call  sound_effect
      call  HALT
      call  scr_up
      call  scr_up
      ld    a,1
      ld    (sound_loop),a
      ld    a,2
      ld    (sound_time),a
      ld    a,1
      ld    (sound_freq),a
      call  sound_effect
      call  HALT
      call  scr_rt
      call  scr_rt
      ld    a,1
      ld    (sound_loop),a
      ld    a,2
      ld    (sound_time),a
      xor   a
      ld    (sound_freq),a
      call  sound_effect
      call  HALT
      call  scr_dn
      call  scr_dn
      ld    a,1
      ld    (sound_loop),a
      ld    a,2
      ld    (sound_time),a
      ld    a,1
      ld    (sound_freq),a
      call  sound_effect
      call  HALT
      call  scr_lf
      ld    a,1
      ld    (sound_loop),a
      ld    a,2
      ld    (sound_time),a
      xor   a
      ld    (sound_freq),a
      call  sound_effect
      call  HALT
      call  scr_up
      ret
_BLOCKVIBR
      call  scr_up
      call  scr_rt
      call  scr_dn
      call  scr_dn
      call  scr_lf
      call  scr_lf
      call  scr_up
      call  scr_up
      call  scr_rt
      call  scr_rt
      call  scr_dn
      call  scr_dn
      call  scr_lf
      call  scr_up
      ret
_TITLE
      call  IM2INIT
      ld    hl,_STARTMAP
      ld    (map_addr_array),hl
      ld    a,22
      ld    (map_xmax_array),a
      ld    a,32
      ld    (map_ymax_array),a
      ld    hl,SPRMAP
      ld    (map_addr_sprites),hl
      xor   a
      ld    (map_xscr),a
      ld    (map_yscr),a
      ld    a,32
      ld    (map_width_scr),a
      ld    a,22
      ld    (map_height_scr),a
      ld    a,1
      ld    (map_x),a
      ld    (map_y),a
      call  map_put_1x1
      ld    hl,SPRTITUL1
      push  hl
      ld    hl,3
      ld    a,l
      ld    (attr_sprite),a
      ld    hl,3
      push  hl
      ld    hl,8
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      ld    hl,SPRTITUL2
      push  hl
      ld    hl,5
      ld    a,l
      ld    (attr_sprite),a
      ld    hl,13
      push  hl
      ld    hl,11
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      ld    hl,SPRBLOCK1
      push  hl
      ld    hl,1
      ld    a,l
      ld    (attr_sprite),a
      ld    hl,2
      push  hl
      ld    hl,3
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      ld    hl,SPRBLOCK2
      push  hl
      ld    hl,2
      ld    a,l
      ld    (attr_sprite),a
      ld    hl,7
      push  hl
      ld    hl,3
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      ld    hl,SPRBLOCK3
      push  hl
      ld    hl,3
      ld    a,l
      ld    (attr_sprite),a
      ld    hl,12
      push  hl
      ld    hl,3
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      ld    hl,SPRBLOCK4
      push  hl
      ld    hl,4
      ld    a,l
      ld    (attr_sprite),a
      ld    hl,17
      push  hl
      ld    hl,3
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      ld    hl,SPRBLOCK5
      push  hl
      ld    hl,5
      ld    a,l
      ld    (attr_sprite),a
      ld    hl,22
      push  hl
      ld    hl,3
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      ld    hl,SPRBLOCK6
      push  hl
      ld    hl,6
      ld    a,l
      ld    (attr_sprite),a
      ld    hl,27
      push  hl
      ld    hl,3
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      ld    hl,SPRBLOCK6
      push  hl
      ld    hl,6
      ld    a,l
      ld    (attr_sprite),a
      ld    hl,2
      push  hl
      ld    hl,16
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      ld    hl,SPRBLOCK5
      push  hl
      ld    hl,5
      ld    a,l
      ld    (attr_sprite),a
      ld    hl,7
      push  hl
      ld    hl,16
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      ld    hl,SPRBLOCK4
      push  hl
      ld    hl,4
      ld    a,l
      ld    (attr_sprite),a
      ld    hl,12
      push  hl
      ld    hl,16
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      ld    hl,SPRBLOCK3
      push  hl
      ld    hl,3
      ld    a,l
      ld    (attr_sprite),a
      ld    hl,17
      push  hl
      ld    hl,16
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      ld    hl,SPRBLOCK2
      push  hl
      ld    hl,2
      ld    a,l
      ld    (attr_sprite),a
      ld    hl,22
      push  hl
      ld    hl,16
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      ld    hl,SPRBLOCK1
      push  hl
      ld    hl,1
      ld    a,l
      ld    (attr_sprite),a
      ld    hl,27
      push  hl
      ld    hl,16
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
L0
      xor   a
      ld    (_I),a
L3
      ld    a,(_I)
      ld    l,a
      ld    h,0
      inc   hl
      ld    a,l
      ld    (_I),a
      call  readkey
      ld    a,(code_key_1)
      ld    (_KEY1),a
      ld    a,(code_key_2)
      ld    (_KEY2),a
      ld    a,(_I)
      ld    (_L6),a
      cp    1
      jp    z,L9
      jp    L10
L9
      ld    a,2
      ld    (col_window),a
      ld    a,3
      ld    (row_window),a
      ld    (width_window),a
      ld    (height_window),a
      jp    L7
L10
      ld    a,(_L6)
      cp    2
      jp    z,L11
      jp    L12
L11
      ld    a,7
      ld    (col_window),a
      ld    a,3
      ld    (row_window),a
      ld    (width_window),a
      ld    (height_window),a
      jp    L7
L12
      ld    a,(_L6)
      cp    3
      jp    z,L13
      jp    L14
L13
      ld    a,12
      ld    (col_window),a
      ld    a,3
      ld    (row_window),a
      ld    (width_window),a
      ld    (height_window),a
      jp    L7
L14
      ld    a,(_L6)
      cp    4
      jp    z,L15
      jp    L16
L15
      ld    a,17
      ld    (col_window),a
      ld    a,3
      ld    (row_window),a
      ld    (width_window),a
      ld    (height_window),a
      jp    L7
L16
      ld    a,(_L6)
      cp    5
      jp    z,L17
      jp    L18
L17
      ld    a,22
      ld    (col_window),a
      ld    a,3
      ld    (row_window),a
      ld    (width_window),a
      ld    (height_window),a
      jp    L7
L18
      ld    a,(_L6)
      cp    6
      jp    z,L19
      jp    L20
L19
      ld    a,27
      ld    (col_window),a
      ld    a,3
      ld    (row_window),a
      ld    (width_window),a
      ld    (height_window),a
      jp    L7
L20
L7
      call  _BLOCKVIBR
      call  readkey
      ld    a,(code_key_1)
      ld    (_KEY1),a
      ld    a,(code_key_2)
      ld    (_KEY2),a
      ld    a,(_I)
      ld    (_L21),a
      cp    1
      jp    z,L24
      jp    L25
L24
      ld    a,27
      ld    (col_window),a
      ld    a,16
      ld    (row_window),a
      ld    a,3
      ld    (width_window),a
      ld    (height_window),a
      jp    L22
L25
      ld    a,(_L21)
      cp    2
      jp    z,L26
      jp    L27
L26
      ld    a,22
      ld    (col_window),a
      ld    a,16
      ld    (row_window),a
      ld    a,3
      ld    (width_window),a
      ld    (height_window),a
      jp    L22
L27
      ld    a,(_L21)
      cp    3
      jp    z,L28
      jp    L29
L28
      ld    a,17
      ld    (col_window),a
      ld    a,16
      ld    (row_window),a
      ld    a,3
      ld    (width_window),a
      ld    (height_window),a
      jp    L22
L29
      ld    a,(_L21)
      cp    4
      jp    z,L30
      jp    L31
L30
      ld    a,12
      ld    (col_window),a
      ld    a,16
      ld    (row_window),a
      ld    a,3
      ld    (width_window),a
      ld    (height_window),a
      jp    L22
L31
      ld    a,(_L21)
      cp    5
      jp    z,L32
      jp    L33
L32
      ld    a,7
      ld    (col_window),a
      ld    a,16
      ld    (row_window),a
      ld    a,3
      ld    (width_window),a
      ld    (height_window),a
      jp    L22
L33
      ld    a,(_L21)
      cp    6
      jp    z,L34
      jp    L35
L34
      ld    a,2
      ld    (col_window),a
      ld    a,16
      ld    (row_window),a
      ld    a,3
      ld    (width_window),a
      ld    (height_window),a
      jp    L22
L35
L22
      call  _BLOCKVIBR
      call  readkey
      ld    a,(code_key_1)
      ld    (_KEY1),a
      ld    a,(code_key_2)
      ld    (_KEY2),a
      ld    a,6
      ld    hl,_I
      cp    (hl)
      jp    nz,L5
      jp    L4
L5
      xor   a
      ld    hl,_KEY1
      cp    (hl)
      jp    z,L36
      jp    L4
L36
      jp    L3
L4
      xor   a
      ld    hl,_KEY1
      cp    (hl)
      jp    z,L2
      jp    L1
L2
      jp    L0
L1
      ret
_SCRTWO
      ld    a,1
      ld    (col_window),a
      ld    (row_window),a
      ld    a,30
      ld    (width_window),a
      ld    a,20
      ld    (height_window),a
      call  window
      ld    hl,7
      ld    a,l
      and   %00000111
      ld    l,a
      ld    a,(attr_screen)
      and   %11111000
      or    l
      ld    (attr_screen),a
      ld    hl,13
      xor   a
      srl   l
      rla
      ld    (half_tile_screen),a
      ld    a,l
      ld    (col_screen),a
      ld    hl,4
      ld    a,l
      ld    (row_screen),a
      ld    hl,_STR0
      ld    bc,(col_screen)
      call  print64
      ld    hl,16
      xor   a
      srl   l
      rla
      ld    (half_tile_screen),a
      ld    a,l
      ld    (col_screen),a
      ld    hl,6
      ld    a,l
      ld    (row_screen),a
      ld    hl,_STR1
      ld    bc,(col_screen)
      call  print64
      ld    hl,20
      xor   a
      srl   l
      rla
      ld    (half_tile_screen),a
      ld    a,l
      ld    (col_screen),a
      ld    hl,8
      ld    a,l
      ld    (row_screen),a
      ld    hl,_STR2
      ld    bc,(col_screen)
      call  print64
      ld    hl,4
      ld    a,l
      and   %00000111
      ld    l,a
      ld    a,(attr_screen)
      and   %11111000
      or    l
      ld    (attr_screen),a
      ld    hl,16
      xor   a
      srl   l
      rla
      ld    (half_tile_screen),a
      ld    a,l
      ld    (col_screen),a
      ld    hl,13
      ld    a,l
      ld    (row_screen),a
      ld    hl,_STR3
      ld    bc,(col_screen)
      call  print64
      ld    hl,6
      ld    a,l
      and   %00000111
      ld    l,a
      ld    a,(attr_screen)
      and   %11111000
      or    l
      ld    (attr_screen),a
      ld    hl,18
      xor   a
      srl   l
      rla
      ld    (half_tile_screen),a
      ld    a,l
      ld    (col_screen),a
      ld    hl,19
      ld    a,l
      ld    (row_screen),a
      ld    hl,_STR4
      ld    bc,(col_screen)
      call  print64
      ld    hl,50
      call  pause
L37
      call  readkey
      ld    a,(code_key_1)
      ld    (_KEY1),a
      ld    a,(code_key_2)
      ld    (_KEY2),a
      xor   a
      ld    hl,_KEY1
      cp    (hl)
      jp    z,L39
      jp    L38
L39
      jp    L37
L38
      ret
_NEXTBLOCKVIEW1
      ld    a,(_COLOR3)
      ld    (_L40),a
      cp    1
      jp    z,L43
      jp    L44
L43
      ld    hl,SPRBLOCK1
      push  hl
      ld    hl,1
      ld    a,l
      ld    (attr_sprite),a
      ld    hl,22
      push  hl
      ld    hl,16
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      jp    L41
L44
      ld    a,(_L40)
      cp    2
      jp    z,L45
      jp    L46
L45
      ld    hl,SPRBLOCK2
      push  hl
      ld    hl,2
      ld    a,l
      ld    (attr_sprite),a
      ld    hl,22
      push  hl
      ld    hl,16
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      jp    L41
L46
      ld    a,(_L40)
      cp    3
      jp    z,L47
      jp    L48
L47
      ld    hl,SPRBLOCK3
      push  hl
      ld    hl,3
      ld    a,l
      ld    (attr_sprite),a
      ld    hl,22
      push  hl
      ld    hl,16
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      jp    L41
L48
      ld    a,(_L40)
      cp    4
      jp    z,L49
      jp    L50
L49
      ld    hl,SPRBLOCK4
      push  hl
      ld    hl,4
      ld    a,l
      ld    (attr_sprite),a
      ld    hl,22
      push  hl
      ld    hl,16
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      jp    L41
L50
      ld    a,(_L40)
      cp    5
      jp    z,L51
      jp    L52
L51
      ld    hl,SPRBLOCK5
      push  hl
      ld    hl,5
      ld    a,l
      ld    (attr_sprite),a
      ld    hl,22
      push  hl
      ld    hl,16
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      jp    L41
L52
      ld    a,(_L40)
      cp    6
      jp    z,L53
      jp    L54
L53
      ld    hl,SPRBLOCK6
      push  hl
      ld    hl,6
      ld    a,l
      ld    (attr_sprite),a
      ld    hl,22
      push  hl
      ld    hl,16
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      jp    L41
L54
      ld    a,(_L40)
      cp    7
      jp    z,L55
      jp    L56
L55
      ld    hl,SPRBLOCK7
      push  hl
      ld    hl,71
      ld    a,l
      ld    (attr_sprite),a
      ld    hl,22
      push  hl
      ld    hl,16
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      jp    L41
L56
L41
      ret
_NEXTBLOCKVIEW2
      ld    a,(_COLOR4)
      ld    (_L57),a
      cp    1
      jp    z,L60
      jp    L61
L60
      ld    hl,SPRBLOCK1
      push  hl
      ld    hl,1
      ld    a,l
      ld    (attr_sprite),a
      ld    hl,27
      push  hl
      ld    hl,16
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      jp    L58
L61
      ld    a,(_L57)
      cp    2
      jp    z,L62
      jp    L63
L62
      ld    hl,SPRBLOCK2
      push  hl
      ld    hl,2
      ld    a,l
      ld    (attr_sprite),a
      ld    hl,27
      push  hl
      ld    hl,16
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      jp    L58
L63
      ld    a,(_L57)
      cp    3
      jp    z,L64
      jp    L65
L64
      ld    hl,SPRBLOCK3
      push  hl
      ld    hl,3
      ld    a,l
      ld    (attr_sprite),a
      ld    hl,27
      push  hl
      ld    hl,16
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      jp    L58
L65
      ld    a,(_L57)
      cp    4
      jp    z,L66
      jp    L67
L66
      ld    hl,SPRBLOCK4
      push  hl
      ld    hl,4
      ld    a,l
      ld    (attr_sprite),a
      ld    hl,27
      push  hl
      ld    hl,16
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      jp    L58
L67
      ld    a,(_L57)
      cp    5
      jp    z,L68
      jp    L69
L68
      ld    hl,SPRBLOCK5
      push  hl
      ld    hl,5
      ld    a,l
      ld    (attr_sprite),a
      ld    hl,27
      push  hl
      ld    hl,16
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      jp    L58
L69
      ld    a,(_L57)
      cp    6
      jp    z,L70
      jp    L71
L70
      ld    hl,SPRBLOCK6
      push  hl
      ld    hl,6
      ld    a,l
      ld    (attr_sprite),a
      ld    hl,27
      push  hl
      ld    hl,16
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      jp    L58
L71
      ld    a,(_L57)
      cp    7
      jp    z,L72
      jp    L73
L72
      ld    hl,SPRBLOCK7
      push  hl
      ld    hl,71
      ld    a,l
      ld    (attr_sprite),a
      ld    hl,27
      push  hl
      ld    hl,16
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      jp    L58
L73
L58
      ret
_BLOCKGEN
L74
      ld    hl,5
      call  random
      inc   hl
      ld    a,l
      ld    (_X1),a
      ld    hl,5
      call  random
      inc   hl
      ld    a,l
      ld    (_Y1),a
      ld    a,(_X1)
      ld    l,a
      ld    h,0
      dec   hl
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      ld    de,_MAPBLOCK
      add   hl,de
      push  hl
      ld    a,(_Y1)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      xor   a
      cp    (hl)
      jp    nz,L76
      jp    L75
L76
      jp    L74
L75
L77
      ld    hl,5
      call  random
      inc   hl
      ld    a,l
      ld    (_X2),a
      ld    hl,5
      call  random
      inc   hl
      ld    a,l
      ld    (_Y2),a
      ld    a,(_X2)
      ld    hl,_X1
      cp    (hl)
      jp    z,L79
      ld    a,(_Y2)
      ld    hl,_Y1
      cp    (hl)
      jp    z,L79
      ld    a,(_X2)
      ld    l,a
      ld    h,0
      dec   hl
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      ld    de,_MAPBLOCK
      add   hl,de
      push  hl
      ld    a,(_Y2)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      xor   a
      cp    (hl)
      jp    nz,L79
      jp    L78
L79
      jp    L77
L78
      ld    a,(_COLOR1)
      ld    (_L80),a
      cp    1
      jp    z,L83
      jp    L84
L83
      ld    hl,SPRBLOCK1
      push  hl
      ld    hl,1
      ld    a,l
      ld    (attr_sprite),a
      ld    a,(_X1)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      push  hl
      ld    a,(_Y1)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      jp    L81
L84
      ld    a,(_L80)
      cp    2
      jp    z,L85
      jp    L86
L85
      ld    hl,SPRBLOCK2
      push  hl
      ld    hl,2
      ld    a,l
      ld    (attr_sprite),a
      ld    a,(_X1)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      push  hl
      ld    a,(_Y1)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      jp    L81
L86
      ld    a,(_L80)
      cp    3
      jp    z,L87
      jp    L88
L87
      ld    hl,SPRBLOCK3
      push  hl
      ld    hl,3
      ld    a,l
      ld    (attr_sprite),a
      ld    a,(_X1)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      push  hl
      ld    a,(_Y1)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      jp    L81
L88
      ld    a,(_L80)
      cp    4
      jp    z,L89
      jp    L90
L89
      ld    hl,SPRBLOCK4
      push  hl
      ld    hl,4
      ld    a,l
      ld    (attr_sprite),a
      ld    a,(_X1)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      push  hl
      ld    a,(_Y1)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      jp    L81
L90
      ld    a,(_L80)
      cp    5
      jp    z,L91
      jp    L92
L91
      ld    hl,SPRBLOCK5
      push  hl
      ld    hl,5
      ld    a,l
      ld    (attr_sprite),a
      ld    a,(_X1)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      push  hl
      ld    a,(_Y1)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      jp    L81
L92
      ld    a,(_L80)
      cp    6
      jp    z,L93
      jp    L94
L93
      ld    hl,SPRBLOCK6
      push  hl
      ld    hl,6
      ld    a,l
      ld    (attr_sprite),a
      ld    a,(_X1)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      push  hl
      ld    a,(_Y1)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      jp    L81
L94
      ld    a,(_L80)
      cp    7
      jp    z,L95
      jp    L96
L95
      ld    hl,SPRBLOCK7
      push  hl
      ld    hl,71
      ld    a,l
      ld    (attr_sprite),a
      ld    a,(_X1)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      push  hl
      ld    a,(_Y1)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      jp    L81
L96
L81
      ld    a,(_COLOR2)
      ld    (_L97),a
      cp    1
      jp    z,L100
      jp    L101
L100
      ld    hl,SPRBLOCK1
      push  hl
      ld    hl,1
      ld    a,l
      ld    (attr_sprite),a
      ld    a,(_X2)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      push  hl
      ld    a,(_Y2)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      jp    L98
L101
      ld    a,(_L97)
      cp    2
      jp    z,L102
      jp    L103
L102
      ld    hl,SPRBLOCK2
      push  hl
      ld    hl,2
      ld    a,l
      ld    (attr_sprite),a
      ld    a,(_X2)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      push  hl
      ld    a,(_Y2)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      jp    L98
L103
      ld    a,(_L97)
      cp    3
      jp    z,L104
      jp    L105
L104
      ld    hl,SPRBLOCK3
      push  hl
      ld    hl,3
      ld    a,l
      ld    (attr_sprite),a
      ld    a,(_X2)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      push  hl
      ld    a,(_Y2)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      jp    L98
L105
      ld    a,(_L97)
      cp    4
      jp    z,L106
      jp    L107
L106
      ld    hl,SPRBLOCK4
      push  hl
      ld    hl,4
      ld    a,l
      ld    (attr_sprite),a
      ld    a,(_X2)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      push  hl
      ld    a,(_Y2)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      jp    L98
L107
      ld    a,(_L97)
      cp    5
      jp    z,L108
      jp    L109
L108
      ld    hl,SPRBLOCK5
      push  hl
      ld    hl,5
      ld    a,l
      ld    (attr_sprite),a
      ld    a,(_X2)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      push  hl
      ld    a,(_Y2)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      jp    L98
L109
      ld    a,(_L97)
      cp    6
      jp    z,L110
      jp    L111
L110
      ld    hl,SPRBLOCK6
      push  hl
      ld    hl,6
      ld    a,l
      ld    (attr_sprite),a
      ld    a,(_X2)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      push  hl
      ld    a,(_Y2)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      jp    L98
L111
      ld    a,(_L97)
      cp    7
      jp    z,L112
      jp    L113
L112
      ld    hl,SPRBLOCK7
      push  hl
      ld    hl,71
      ld    a,l
      ld    (attr_sprite),a
      ld    a,(_X2)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      push  hl
      ld    a,(_Y2)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      jp    L98
L113
L98
      ld    a,(_X1)
      ld    l,a
      ld    h,0
      dec   hl
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      ld    de,_MAPBLOCK
      add   hl,de
      push  hl
      ld    a,(_Y1)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      ld    a,(_COLOR1)
      ld    (hl),a
      ld    a,(_X2)
      ld    l,a
      ld    h,0
      dec   hl
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      ld    de,_MAPBLOCK
      add   hl,de
      push  hl
      ld    a,(_Y2)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      ld    a,(_COLOR2)
      ld    (hl),a
      call  _NEXTBLOCKVIEW1
      call  _NEXTBLOCKVIEW2
      ld    a,(_COLOR3)
      ld    (_COLOR1),a
      ld    a,(_COLOR4)
      ld    (_COLOR2),a
      ld    a,(_COLORBLOCK)
      ld    l,a
      ld    h,0
      call  random
      inc   hl
      ld    a,l
      ld    (_COLOR3),a
      ld    a,(_COLORBLOCK)
      ld    l,a
      ld    h,0
      call  random
      inc   hl
      ld    a,l
      ld    (_COLOR4),a
      ret
_BLOCKGEN2
      xor   a
      ld    (_I),a
      ld    a,1
      ld    (_X),a
      ld    a,6
      ld    (Lim_X),a
L114
      ld    a,1
      ld    (_Y),a
      ld    a,6
      ld    (Lim_Y),a
L116
      ld    a,(_X)
      ld    l,a
      ld    h,0
      dec   hl
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      ld    de,_MAPBLOCK
      add   hl,de
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      xor   a
      cp    (hl)
      jp    nz,L118
      ld    a,1
      ld    hl,_I
      cp    (hl)
      jp    z,L118
      jp    c,L118
L119
      ld    a,(_COLOR1)
      ld    (_L121),a
      cp    1
      jp    z,L124
      jp    L125
L124
      ld    hl,SPRBLOCK1
      push  hl
      ld    hl,1
      ld    a,l
      ld    (attr_sprite),a
      ld    a,(_X)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      jp    L122
L125
      ld    a,(_L121)
      cp    2
      jp    z,L126
      jp    L127
L126
      ld    hl,SPRBLOCK2
      push  hl
      ld    hl,2
      ld    a,l
      ld    (attr_sprite),a
      ld    a,(_X)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      jp    L122
L127
      ld    a,(_L121)
      cp    3
      jp    z,L128
      jp    L129
L128
      ld    hl,SPRBLOCK3
      push  hl
      ld    hl,3
      ld    a,l
      ld    (attr_sprite),a
      ld    a,(_X)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      jp    L122
L129
      ld    a,(_L121)
      cp    4
      jp    z,L130
      jp    L131
L130
      ld    hl,SPRBLOCK4
      push  hl
      ld    hl,4
      ld    a,l
      ld    (attr_sprite),a
      ld    a,(_X)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      jp    L122
L131
      ld    a,(_L121)
      cp    5
      jp    z,L132
      jp    L133
L132
      ld    hl,SPRBLOCK5
      push  hl
      ld    hl,5
      ld    a,l
      ld    (attr_sprite),a
      ld    a,(_X)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      jp    L122
L133
      ld    a,(_L121)
      cp    6
      jp    z,L134
      jp    L135
L134
      ld    hl,SPRBLOCK6
      push  hl
      ld    hl,6
      ld    a,l
      ld    (attr_sprite),a
      ld    a,(_X)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      jp    L122
L135
      ld    a,(_L121)
      cp    7
      jp    z,L136
      jp    L137
L136
      ld    hl,SPRBLOCK7
      push  hl
      ld    hl,71
      ld    a,l
      ld    (attr_sprite),a
      ld    a,(_X)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      jp    L122
L137
L122
      ld    a,(_X)
      ld    l,a
      ld    h,0
      dec   hl
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      ld    de,_MAPBLOCK
      add   hl,de
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      ld    a,(_COLOR1)
      ld    (hl),a
      call  _NEXTBLOCKVIEW1
      ld    a,(_COLOR3)
      ld    (_COLOR1),a
      ld    a,(_COLORBLOCK)
      ld    l,a
      ld    h,0
      call  random
      inc   hl
      ld    a,l
      ld    (_COLOR3),a
      ld    a,(_I)
      ld    l,a
      ld    h,0
      inc   hl
      ld    a,l
      ld    (_I),a
L118
L120
      ld    a,(Lim_Y)
      ld    hl,_Y
      cp    (hl)
      jp    z,L117
      ld    hl,_Y
      inc   (hl)
      jp    L116
L117
      ld    a,(Lim_X)
      ld    hl,_X
      cp    (hl)
      jp    z,L115
      ld    hl,_X
      inc   (hl)
      jp    L114
L115
      xor   a
      ld    (_I),a
      ld    a,6
      ld    (_X),a
      ld    a,1
      ld    (Lim_X),a
L138
      ld    a,6
      ld    (_Y),a
      ld    a,1
      ld    (Lim_Y),a
L140
      ld    a,(_X)
      ld    l,a
      ld    h,0
      dec   hl
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      ld    de,_MAPBLOCK
      add   hl,de
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      xor   a
      cp    (hl)
      jp    nz,L142
      ld    a,1
      ld    hl,_I
      cp    (hl)
      jp    z,L142
      jp    c,L142
L143
      ld    a,(_COLOR2)
      ld    (_L145),a
      cp    1
      jp    z,L148
      jp    L149
L148
      ld    hl,SPRBLOCK1
      push  hl
      ld    hl,1
      ld    a,l
      ld    (attr_sprite),a
      ld    a,(_X)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      jp    L146
L149
      ld    a,(_L145)
      cp    2
      jp    z,L150
      jp    L151
L150
      ld    hl,SPRBLOCK2
      push  hl
      ld    hl,2
      ld    a,l
      ld    (attr_sprite),a
      ld    a,(_X)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      jp    L146
L151
      ld    a,(_L145)
      cp    3
      jp    z,L152
      jp    L153
L152
      ld    hl,SPRBLOCK3
      push  hl
      ld    hl,3
      ld    a,l
      ld    (attr_sprite),a
      ld    a,(_X)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      jp    L146
L153
      ld    a,(_L145)
      cp    4
      jp    z,L154
      jp    L155
L154
      ld    hl,SPRBLOCK4
      push  hl
      ld    hl,4
      ld    a,l
      ld    (attr_sprite),a
      ld    a,(_X)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      jp    L146
L155
      ld    a,(_L145)
      cp    5
      jp    z,L156
      jp    L157
L156
      ld    hl,SPRBLOCK5
      push  hl
      ld    hl,5
      ld    a,l
      ld    (attr_sprite),a
      ld    a,(_X)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      jp    L146
L157
      ld    a,(_L145)
      cp    6
      jp    z,L158
      jp    L159
L158
      ld    hl,SPRBLOCK6
      push  hl
      ld    hl,6
      ld    a,l
      ld    (attr_sprite),a
      ld    a,(_X)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      jp    L146
L159
      ld    a,(_L145)
      cp    7
      jp    z,L160
      jp    L161
L160
      ld    hl,SPRBLOCK7
      push  hl
      ld    hl,71
      ld    a,l
      ld    (attr_sprite),a
      ld    a,(_X)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      jp    L146
L161
L146
      ld    a,(_X)
      ld    l,a
      ld    h,0
      dec   hl
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      ld    de,_MAPBLOCK
      add   hl,de
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      ld    a,(_COLOR2)
      ld    (hl),a
      call  _NEXTBLOCKVIEW2
      ld    a,(_COLOR4)
      ld    (_COLOR2),a
      ld    a,(_COLORBLOCK)
      ld    l,a
      ld    h,0
      call  random
      inc   hl
      ld    a,l
      ld    (_COLOR4),a
      ld    a,(_I)
      ld    l,a
      ld    h,0
      inc   hl
      ld    a,l
      ld    (_I),a
L142
L144
      ld    a,(_Y)
      ld    hl,Lim_Y
      cp    (hl)
      jp    z,L141
      ld    hl,_Y
      dec   (hl)
      jp    L140
L141
      ld    a,(_X)
      ld    hl,Lim_X
      cp    (hl)
      jp    z,L139
      ld    hl,_X
      dec   (hl)
      jp    L138
L139
      ret
_PRINTLEVEL
      ld    a,4
      ld    (col_window),a
      ld    a,9
      ld    (row_window),a
      ld    a,14
      ld    (width_window),a
      ld    a,4
      ld    (height_window),a
      call  getimage
      ld    a,(_LEVEL)
      ld    (_L162),a
      cp    1
      jp    z,L165
      jp    L166
L165
      ld    hl,SPRLEVEL1
      push  hl
      ld    hl,120
      ld    a,l
      ld    (attr_sprite),a
      ld    hl,5
      push  hl
      ld    hl,10
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      jp    L163
L166
      ld    a,(_L162)
      cp    2
      jp    z,L167
      jp    L168
L167
      ld    hl,SPRLEVEL2
      push  hl
      ld    hl,88
      ld    a,l
      ld    (attr_sprite),a
      ld    hl,5
      push  hl
      ld    hl,10
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      ld    a,3
      ld    (_COLOR3),a
      ld    (_COLOR4),a
      jp    L163
L168
      ld    a,(_L162)
      cp    3
      jp    z,L169
      jp    L170
L169
      ld    hl,SPRLEVEL3
      push  hl
      ld    hl,96
      ld    a,l
      ld    (attr_sprite),a
      ld    hl,5
      push  hl
      ld    hl,10
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      ld    a,4
      ld    (_COLOR3),a
      ld    (_COLOR4),a
      jp    L163
L170
      ld    a,(_L162)
      cp    4
      jp    z,L171
      jp    L172
L171
      ld    hl,SPRLEVEL4
      push  hl
      ld    hl,104
      ld    a,l
      ld    (attr_sprite),a
      ld    hl,5
      push  hl
      ld    hl,10
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      ld    a,5
      ld    (_COLOR3),a
      ld    (_COLOR4),a
      jp    L163
L172
      ld    a,(_L162)
      cp    5
      jp    z,L173
      jp    L174
L173
      ld    hl,SPRLEVEL5
      push  hl
      ld    hl,112
      ld    a,l
      ld    (attr_sprite),a
      ld    hl,5
      push  hl
      ld    hl,10
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      ld    a,6
      ld    (_COLOR3),a
      ld    (_COLOR4),a
      jp    L163
L174
      ld    a,(_L162)
      cp    6
      jp    z,L175
      jp    L176
L175
      ld    hl,SPRLEVEL6
      push  hl
      ld    hl,120
      ld    a,l
      ld    (attr_sprite),a
      ld    hl,4
      push  hl
      ld    hl,9
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      ld    a,7
      ld    (_COLOR3),a
      ld    (_COLOR4),a
      jp    L163
L176
L163
      ld    hl,100
      call  pause
      call  putimage
      ret
_STARTSCR
      call  MUSOFF
      ld    a,1
      ld    (col_window),a
      ld    (row_window),a
      ld    a,30
      ld    (width_window),a
      ld    a,20
      ld    (height_window),a
      call  window
      ld    hl,_MAP
      ld    (map_addr_array),hl
      ld    a,20
      ld    (map_xmax_array),a
      ld    (map_ymax_array),a
      ld    hl,SPRMAP
      ld    (map_addr_sprites),hl
      ld    a,1
      ld    (map_xscr),a
      ld    (map_yscr),a
      ld    a,20
      ld    (map_width_scr),a
      ld    (map_height_scr),a
      ld    a,1
      ld    (map_x),a
      ld    (map_y),a
      call  map_put_1x1
      ld    hl,SPRRECORD
      push  hl
      ld    hl,71
      ld    a,l
      ld    (attr_sprite),a
      ld    hl,23
      push  hl
      ld    hl,2
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      ld    hl,6
      ld    a,l
      and   %00000111
      ld    l,a
      ld    a,(attr_screen)
      and   %11111000
      or    l
      ld    (attr_screen),a
      ld    hl,50
      xor   a
      srl   l
      rla
      ld    (half_tile_screen),a
      ld    a,l
      ld    (col_screen),a
      ld    hl,4
      ld    a,l
      ld    (row_screen),a
      ld    hl,(_BESTSCORE)
      ld    de,0
      ex    de,hl
      and   a
      sbc   hl,de
      jp    nz,L177
L178
      ld    hl,_STR5
      ld    bc,(col_screen)
      call  print64
      jp    L179
L177
      ld    hl,(_BESTSCORE)
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,hl
      add   hl,de
      call  convert_16bit_to_string
      ld    hl,string_number
      ld    bc,(col_screen)
      call  print64
L179
      ld    hl,SPRSCORE
      push  hl
      ld    hl,71
      ld    a,l
      ld    (attr_sprite),a
      ld    hl,24
      push  hl
      ld    hl,8
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      ld    hl,0
      ld    (_SCORE),hl
      ld    hl,6
      ld    a,l
      and   %00000111
      ld    l,a
      ld    a,(attr_screen)
      and   %11111000
      or    l
      ld    (attr_screen),a
      ld    hl,50
      xor   a
      srl   l
      rla
      ld    (half_tile_screen),a
      ld    a,l
      ld    (col_screen),a
      ld    hl,10
      ld    a,l
      ld    (row_screen),a
      ld    hl,_STR5
      ld    bc,(col_screen)
      call  print64
      ld    hl,SPRQUEUE
      push  hl
      ld    hl,71
      ld    a,l
      ld    (attr_sprite),a
      ld    hl,22
      push  hl
      ld    hl,14
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      ld    hl,_MAPBLOCK
      ld    de,_MAPBLOCK+1
      ld    bc,35
      ld    (hl),0
      ldir
      ld    a,1
      ld    (_COLORBLOCK),a
      ld    (_LEVEL),a
      ld    (_LEVELOLD),a
      ld    hl,(23672)
      ld    (rnd),hl
      ld    a,(_COLORBLOCK)
      ld    l,a
      ld    h,0
      call  random
      inc   hl
      ld    a,l
      ld    (_COLOR1),a
      ld    a,(_COLORBLOCK)
      ld    l,a
      ld    h,0
      call  random
      inc   hl
      ld    a,l
      ld    (_COLOR2),a
      ld    a,(_COLORBLOCK)
      ld    l,a
      ld    h,0
      call  random
      inc   hl
      ld    a,l
      ld    (_COLOR3),a
      ld    a,(_COLORBLOCK)
      ld    l,a
      ld    h,0
      call  random
      inc   hl
      ld    a,l
      ld    (_COLOR4),a
      ld    hl,(23672)
      ld    (rnd),hl
      call  _BLOCKGEN
      call  _PRINTLEVEL
      ret
_DELET
      ld    hl,_MAPDELX
      ld    de,_MAPDELX+1
      ld    bc,35
      ld    (hl),0
      ldir
      ld    hl,_MAPDELY
      ld    de,_MAPDELY+1
      ld    bc,35
      ld    (hl),0
      ldir
      ld    hl,_MAPDEL
      ld    de,_MAPDEL+1
      ld    bc,35
      ld    (hl),0
      ldir
      ld    a,1
      ld    (_Y),a
      ld    a,6
      ld    (Lim_Y),a
L180
      ld    hl,_MAPBLOCK+0
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      ld    l,(hl)
      ld    h,0
      ld    a,l
      ld    (_Z),a
      ld    de,0
      ex    de,hl
      and   a
      sbc   hl,de
      jp    nc,L182
      ld    hl,_MAPDELX+0
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      xor   a
      cp    (hl)
      jp    nz,L182
L183
      ld    a,(_Z)
      ld    l,a
      ld    h,0
      push  hl
      ld    hl,_MAPBLOCK+6
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      ld    l,(hl)
      ld    h,0
      pop   de
      and   a
      sbc   hl,de
      jp    nz,L185
      ld    a,(_Z)
      ld    l,a
      ld    h,0
      push  hl
      ld    hl,_MAPBLOCK+12
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      ld    l,(hl)
      ld    h,0
      pop   de
      and   a
      sbc   hl,de
      jp    nz,L185
      ld    a,(_Z)
      ld    l,a
      ld    h,0
      push  hl
      ld    hl,_MAPBLOCK+18
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      ld    l,(hl)
      ld    h,0
      pop   de
      and   a
      sbc   hl,de
      jp    nz,L185
      ld    a,(_Z)
      ld    l,a
      ld    h,0
      push  hl
      ld    hl,_MAPBLOCK+24
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      ld    l,(hl)
      ld    h,0
      pop   de
      and   a
      sbc   hl,de
      jp    nz,L185
      ld    a,(_Z)
      ld    l,a
      ld    h,0
      push  hl
      ld    hl,_MAPBLOCK+30
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      ld    l,(hl)
      ld    h,0
      pop   de
      and   a
      sbc   hl,de
      jp    nz,L185
L186
      ld    hl,_MAPDELX+0
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      ld    (hl),1
      ld    hl,_MAPDELX+6
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      ld    (hl),1
      ld    hl,_MAPDELX+12
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      ld    (hl),1
      ld    hl,_MAPDELX+18
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      ld    (hl),1
      ld    hl,_MAPDELX+24
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      ld    (hl),1
      ld    hl,_MAPDELX+30
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      ld    (hl),1
L185
L187
L182
L184
      xor   a
      ld    hl,_Z
      cp    (hl)
      jp    nc,L188
      ld    hl,_MAPDELX+0
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      xor   a
      cp    (hl)
      jp    nz,L188
L189
      ld    a,(_Z)
      ld    l,a
      ld    h,0
      push  hl
      ld    hl,_MAPBLOCK+6
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      ld    l,(hl)
      ld    h,0
      pop   de
      and   a
      sbc   hl,de
      jp    nz,L191
      ld    a,(_Z)
      ld    l,a
      ld    h,0
      push  hl
      ld    hl,_MAPBLOCK+12
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      ld    l,(hl)
      ld    h,0
      pop   de
      and   a
      sbc   hl,de
      jp    nz,L191
      ld    a,(_Z)
      ld    l,a
      ld    h,0
      push  hl
      ld    hl,_MAPBLOCK+18
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      ld    l,(hl)
      ld    h,0
      pop   de
      and   a
      sbc   hl,de
      jp    nz,L191
      ld    a,(_Z)
      ld    l,a
      ld    h,0
      push  hl
      ld    hl,_MAPBLOCK+24
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      ld    l,(hl)
      ld    h,0
      pop   de
      and   a
      sbc   hl,de
      jp    nz,L191
L192
      ld    hl,_MAPDELX+0
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      ld    (hl),1
      ld    hl,_MAPDELX+6
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      ld    (hl),1
      ld    hl,_MAPDELX+12
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      ld    (hl),1
      ld    hl,_MAPDELX+18
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      ld    (hl),1
      ld    hl,_MAPDELX+24
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      ld    (hl),1
L191
L193
L188
L190
      xor   a
      ld    hl,_Z
      cp    (hl)
      jp    nc,L194
      ld    hl,_MAPDELX+0
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      xor   a
      cp    (hl)
      jp    nz,L194
L195
      ld    a,(_Z)
      ld    l,a
      ld    h,0
      push  hl
      ld    hl,_MAPBLOCK+6
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      ld    l,(hl)
      ld    h,0
      pop   de
      and   a
      sbc   hl,de
      jp    nz,L197
      ld    a,(_Z)
      ld    l,a
      ld    h,0
      push  hl
      ld    hl,_MAPBLOCK+12
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      ld    l,(hl)
      ld    h,0
      pop   de
      and   a
      sbc   hl,de
      jp    nz,L197
      ld    a,(_Z)
      ld    l,a
      ld    h,0
      push  hl
      ld    hl,_MAPBLOCK+18
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      ld    l,(hl)
      ld    h,0
      pop   de
      and   a
      sbc   hl,de
      jp    nz,L197
L198
      ld    hl,_MAPDELX+0
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      ld    (hl),1
      ld    hl,_MAPDELX+6
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      ld    (hl),1
      ld    hl,_MAPDELX+12
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      ld    (hl),1
      ld    hl,_MAPDELX+18
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      ld    (hl),1
L197
L199
L194
L196
      xor   a
      ld    hl,_Z
      cp    (hl)
      jp    nc,L200
      ld    hl,_MAPDELX+0
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      xor   a
      cp    (hl)
      jp    nz,L200
L201
      ld    a,(_Z)
      ld    l,a
      ld    h,0
      push  hl
      ld    hl,_MAPBLOCK+6
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      ld    l,(hl)
      ld    h,0
      pop   de
      and   a
      sbc   hl,de
      jp    nz,L203
      ld    a,(_Z)
      ld    l,a
      ld    h,0
      push  hl
      ld    hl,_MAPBLOCK+12
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      ld    l,(hl)
      ld    h,0
      pop   de
      and   a
      sbc   hl,de
      jp    nz,L203
L204
      ld    hl,_MAPDELX+0
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      ld    (hl),1
      ld    hl,_MAPDELX+6
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      ld    (hl),1
      ld    hl,_MAPDELX+12
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      ld    (hl),1
L203
L205
L200
L202
      ld    hl,_MAPBLOCK+6
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      ld    l,(hl)
      ld    h,0
      ld    a,l
      ld    (_Z),a
      ld    de,0
      ex    de,hl
      and   a
      sbc   hl,de
      jp    nc,L206
      ld    hl,_MAPDELX+6
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      xor   a
      cp    (hl)
      jp    nz,L206
L207
      ld    a,(_Z)
      ld    l,a
      ld    h,0
      push  hl
      ld    hl,_MAPBLOCK+12
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      ld    l,(hl)
      ld    h,0
      pop   de
      and   a
      sbc   hl,de
      jp    nz,L209
      ld    a,(_Z)
      ld    l,a
      ld    h,0
      push  hl
      ld    hl,_MAPBLOCK+18
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      ld    l,(hl)
      ld    h,0
      pop   de
      and   a
      sbc   hl,de
      jp    nz,L209
      ld    a,(_Z)
      ld    l,a
      ld    h,0
      push  hl
      ld    hl,_MAPBLOCK+24
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      ld    l,(hl)
      ld    h,0
      pop   de
      and   a
      sbc   hl,de
      jp    nz,L209
      ld    a,(_Z)
      ld    l,a
      ld    h,0
      push  hl
      ld    hl,_MAPBLOCK+30
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      ld    l,(hl)
      ld    h,0
      pop   de
      and   a
      sbc   hl,de
      jp    nz,L209
L210
      ld    hl,_MAPDELX+6
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      ld    (hl),1
      ld    hl,_MAPDELX+12
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      ld    (hl),1
      ld    hl,_MAPDELX+18
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      ld    (hl),1
      ld    hl,_MAPDELX+24
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      ld    (hl),1
      ld    hl,_MAPDELX+30
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      ld    (hl),1
L209
L211
L206
L208
      xor   a
      ld    hl,_Z
      cp    (hl)
      jp    nc,L212
      ld    hl,_MAPDELX+6
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      xor   a
      cp    (hl)
      jp    nz,L212
L213
      ld    a,(_Z)
      ld    l,a
      ld    h,0
      push  hl
      ld    hl,_MAPBLOCK+12
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      ld    l,(hl)
      ld    h,0
      pop   de
      and   a
      sbc   hl,de
      jp    nz,L215
      ld    a,(_Z)
      ld    l,a
      ld    h,0
      push  hl
      ld    hl,_MAPBLOCK+18
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      ld    l,(hl)
      ld    h,0
      pop   de
      and   a
      sbc   hl,de
      jp    nz,L215
      ld    a,(_Z)
      ld    l,a
      ld    h,0
      push  hl
      ld    hl,_MAPBLOCK+24
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      ld    l,(hl)
      ld    h,0
      pop   de
      and   a
      sbc   hl,de
      jp    nz,L215
L216
      ld    hl,_MAPDELX+6
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      ld    (hl),1
      ld    hl,_MAPDELX+12
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      ld    (hl),1
      ld    hl,_MAPDELX+18
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      ld    (hl),1
      ld    hl,_MAPDELX+24
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      ld    (hl),1
L215
L217
L212
L214
      xor   a
      ld    hl,_Z
      cp    (hl)
      jp    nc,L218
      ld    hl,_MAPDELX+6
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      xor   a
      cp    (hl)
      jp    nz,L218
L219
      ld    a,(_Z)
      ld    l,a
      ld    h,0
      push  hl
      ld    hl,_MAPBLOCK+12
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      ld    l,(hl)
      ld    h,0
      pop   de
      and   a
      sbc   hl,de
      jp    nz,L221
      ld    a,(_Z)
      ld    l,a
      ld    h,0
      push  hl
      ld    hl,_MAPBLOCK+18
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      ld    l,(hl)
      ld    h,0
      pop   de
      and   a
      sbc   hl,de
      jp    nz,L221
L222
      ld    hl,_MAPDELX+6
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      ld    (hl),1
      ld    hl,_MAPDELX+12
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      ld    (hl),1
      ld    hl,_MAPDELX+18
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      ld    (hl),1
L221
L223
L218
L220
      ld    hl,_MAPBLOCK+12
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      ld    l,(hl)
      ld    h,0
      ld    a,l
      ld    (_Z),a
      ld    de,0
      ex    de,hl
      and   a
      sbc   hl,de
      jp    nc,L224
      ld    hl,_MAPDELX+12
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      xor   a
      cp    (hl)
      jp    nz,L224
L225
      ld    a,(_Z)
      ld    l,a
      ld    h,0
      push  hl
      ld    hl,_MAPBLOCK+18
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      ld    l,(hl)
      ld    h,0
      pop   de
      and   a
      sbc   hl,de
      jp    nz,L227
      ld    a,(_Z)
      ld    l,a
      ld    h,0
      push  hl
      ld    hl,_MAPBLOCK+24
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      ld    l,(hl)
      ld    h,0
      pop   de
      and   a
      sbc   hl,de
      jp    nz,L227
      ld    a,(_Z)
      ld    l,a
      ld    h,0
      push  hl
      ld    hl,_MAPBLOCK+30
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      ld    l,(hl)
      ld    h,0
      pop   de
      and   a
      sbc   hl,de
      jp    nz,L227
L228
      ld    hl,_MAPDELX+12
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      ld    (hl),1
      ld    hl,_MAPDELX+18
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      ld    (hl),1
      ld    hl,_MAPDELX+24
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      ld    (hl),1
      ld    hl,_MAPDELX+30
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      ld    (hl),1
L227
L229
L224
L226
      xor   a
      ld    hl,_Z
      cp    (hl)
      jp    nc,L230
      ld    hl,_MAPDELX+12
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      xor   a
      cp    (hl)
      jp    nz,L230
L231
      ld    a,(_Z)
      ld    l,a
      ld    h,0
      push  hl
      ld    hl,_MAPBLOCK+18
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      ld    l,(hl)
      ld    h,0
      pop   de
      and   a
      sbc   hl,de
      jp    nz,L233
      ld    a,(_Z)
      ld    l,a
      ld    h,0
      push  hl
      ld    hl,_MAPBLOCK+24
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      ld    l,(hl)
      ld    h,0
      pop   de
      and   a
      sbc   hl,de
      jp    nz,L233
L234
      ld    hl,_MAPDELX+12
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      ld    (hl),1
      ld    hl,_MAPDELX+18
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      ld    (hl),1
      ld    hl,_MAPDELX+24
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      ld    (hl),1
L233
L235
L230
L232
      ld    hl,_MAPBLOCK+18
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      ld    l,(hl)
      ld    h,0
      ld    a,l
      ld    (_Z),a
      ld    de,0
      ex    de,hl
      and   a
      sbc   hl,de
      jp    nc,L236
      ld    hl,_MAPDELX+18
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      xor   a
      cp    (hl)
      jp    nz,L236
L237
      ld    a,(_Z)
      ld    l,a
      ld    h,0
      push  hl
      ld    hl,_MAPBLOCK+24
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      ld    l,(hl)
      ld    h,0
      pop   de
      and   a
      sbc   hl,de
      jp    nz,L239
      ld    a,(_Z)
      ld    l,a
      ld    h,0
      push  hl
      ld    hl,_MAPBLOCK+30
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      ld    l,(hl)
      ld    h,0
      pop   de
      and   a
      sbc   hl,de
      jp    nz,L239
L240
      ld    hl,_MAPDELX+18
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      ld    (hl),1
      ld    hl,_MAPDELX+24
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      ld    (hl),1
      ld    hl,_MAPDELX+30
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      ld    (hl),1
L239
L241
L236
L238
      ld    a,(Lim_Y)
      ld    hl,_Y
      cp    (hl)
      jp    z,L181
      ld    hl,_Y
      inc   (hl)
      jp    L180
L181
      ld    a,1
      ld    (_X),a
      ld    a,6
      ld    (Lim_X),a
L242
      ld    a,(_X)
      ld    l,a
      ld    h,0
      dec   hl
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      ld    de,_MAPBLOCK
      add   hl,de
      ld    l,(hl)
      ld    h,0
      ld    a,l
      ld    (_Z),a
      ld    de,0
      ex    de,hl
      and   a
      sbc   hl,de
      jp    nc,L244
      ld    a,(_X)
      ld    l,a
      ld    h,0
      dec   hl
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      ld    de,_MAPDELY
      add   hl,de
      xor   a
      cp    (hl)
      jp    nz,L244
L245
      ld    a,(_Z)
      ld    l,a
      ld    h,0
      push  hl
      ld    a,(_X)
      ld    l,a
      ld    h,0
      dec   hl
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      ld    de,_MAPBLOCK
      add   hl,de
      ld    (addr_arraybyte_index111),hl
      inc   hl
      ld    l,(hl)
      ld    h,0
      pop   de
      and   a
      sbc   hl,de
      jp    nz,L247
      ld    a,(_Z)
      ld    l,a
      ld    h,0
      push  hl
      ld    hl,(addr_arraybyte_index111)
      ld    de,2
      add   hl,de
      ld    l,(hl)
      ld    h,0
      pop   de
      and   a
      sbc   hl,de
      jp    nz,L247
      ld    a,(_Z)
      ld    l,a
      ld    h,0
      push  hl
      ld    hl,(addr_arraybyte_index111)
      ld    de,3
      add   hl,de
      ld    l,(hl)
      ld    h,0
      pop   de
      and   a
      sbc   hl,de
      jp    nz,L247
      ld    a,(_Z)
      ld    l,a
      ld    h,0
      push  hl
      ld    hl,(addr_arraybyte_index111)
      ld    de,4
      add   hl,de
      ld    l,(hl)
      ld    h,0
      pop   de
      and   a
      sbc   hl,de
      jp    nz,L247
      ld    a,(_Z)
      ld    l,a
      ld    h,0
      push  hl
      ld    hl,(addr_arraybyte_index111)
      ld    de,5
      add   hl,de
      ld    l,(hl)
      ld    h,0
      pop   de
      and   a
      sbc   hl,de
      jp    nz,L247
L248
      ld    a,(_X)
      ld    l,a
      ld    h,0
      dec   hl
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      ld    de,_MAPDELY
      add   hl,de
      ld    (addr_arraybyte_index111),hl
      ld    (hl),1
      inc   hl
      ld    (hl),1
      ld    hl,(addr_arraybyte_index111)
      ld    de,2
      add   hl,de
      ld    (hl),1
      ld    hl,(addr_arraybyte_index111)
      ld    de,3
      add   hl,de
      ld    (hl),1
      ld    hl,(addr_arraybyte_index111)
      ld    de,4
      add   hl,de
      ld    (hl),1
      ld    hl,(addr_arraybyte_index111)
      ld    de,5
      add   hl,de
      ld    (hl),1
L247
L249
L244
L246
      xor   a
      ld    hl,_Z
      cp    (hl)
      jp    nc,L250
      ld    a,(_X)
      ld    l,a
      ld    h,0
      dec   hl
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      ld    de,_MAPDELY
      add   hl,de
      xor   a
      cp    (hl)
      jp    nz,L250
L251
      ld    a,(_Z)
      ld    l,a
      ld    h,0
      push  hl
      ld    a,(_X)
      ld    l,a
      ld    h,0
      dec   hl
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      ld    de,_MAPBLOCK
      add   hl,de
      ld    (addr_arraybyte_index111),hl
      inc   hl
      ld    l,(hl)
      ld    h,0
      pop   de
      and   a
      sbc   hl,de
      jp    nz,L253
      ld    a,(_Z)
      ld    l,a
      ld    h,0
      push  hl
      ld    hl,(addr_arraybyte_index111)
      ld    de,2
      add   hl,de
      ld    l,(hl)
      ld    h,0
      pop   de
      and   a
      sbc   hl,de
      jp    nz,L253
      ld    a,(_Z)
      ld    l,a
      ld    h,0
      push  hl
      ld    hl,(addr_arraybyte_index111)
      ld    de,3
      add   hl,de
      ld    l,(hl)
      ld    h,0
      pop   de
      and   a
      sbc   hl,de
      jp    nz,L253
      ld    a,(_Z)
      ld    l,a
      ld    h,0
      push  hl
      ld    hl,(addr_arraybyte_index111)
      ld    de,4
      add   hl,de
      ld    l,(hl)
      ld    h,0
      pop   de
      and   a
      sbc   hl,de
      jp    nz,L253
L254
      ld    a,(_X)
      ld    l,a
      ld    h,0
      dec   hl
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      ld    de,_MAPDELY
      add   hl,de
      ld    (addr_arraybyte_index111),hl
      ld    (hl),1
      inc   hl
      ld    (hl),1
      ld    hl,(addr_arraybyte_index111)
      ld    de,2
      add   hl,de
      ld    (hl),1
      ld    hl,(addr_arraybyte_index111)
      ld    de,3
      add   hl,de
      ld    (hl),1
      ld    hl,(addr_arraybyte_index111)
      ld    de,4
      add   hl,de
      ld    (hl),1
L253
L255
L250
L252
      xor   a
      ld    hl,_Z
      cp    (hl)
      jp    nc,L256
      ld    a,(_X)
      ld    l,a
      ld    h,0
      dec   hl
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      ld    de,_MAPDELY
      add   hl,de
      xor   a
      cp    (hl)
      jp    nz,L256
L257
      ld    a,(_Z)
      ld    l,a
      ld    h,0
      push  hl
      ld    a,(_X)
      ld    l,a
      ld    h,0
      dec   hl
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      ld    de,_MAPBLOCK
      add   hl,de
      ld    (addr_arraybyte_index111),hl
      inc   hl
      ld    l,(hl)
      ld    h,0
      pop   de
      and   a
      sbc   hl,de
      jp    nz,L259
      ld    a,(_Z)
      ld    l,a
      ld    h,0
      push  hl
      ld    hl,(addr_arraybyte_index111)
      ld    de,2
      add   hl,de
      ld    l,(hl)
      ld    h,0
      pop   de
      and   a
      sbc   hl,de
      jp    nz,L259
      ld    a,(_Z)
      ld    l,a
      ld    h,0
      push  hl
      ld    hl,(addr_arraybyte_index111)
      ld    de,3
      add   hl,de
      ld    l,(hl)
      ld    h,0
      pop   de
      and   a
      sbc   hl,de
      jp    nz,L259
L260
      ld    a,(_X)
      ld    l,a
      ld    h,0
      dec   hl
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      ld    de,_MAPDELY
      add   hl,de
      ld    (addr_arraybyte_index111),hl
      ld    (hl),1
      inc   hl
      ld    (hl),1
      ld    hl,(addr_arraybyte_index111)
      ld    de,2
      add   hl,de
      ld    (hl),1
      ld    hl,(addr_arraybyte_index111)
      ld    de,3
      add   hl,de
      ld    (hl),1
L259
L261
L256
L258
      xor   a
      ld    hl,_Z
      cp    (hl)
      jp    nc,L262
      ld    a,(_X)
      ld    l,a
      ld    h,0
      dec   hl
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      ld    de,_MAPDELY
      add   hl,de
      xor   a
      cp    (hl)
      jp    nz,L262
L263
      ld    a,(_Z)
      ld    l,a
      ld    h,0
      push  hl
      ld    a,(_X)
      ld    l,a
      ld    h,0
      dec   hl
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      ld    de,_MAPBLOCK
      add   hl,de
      ld    (addr_arraybyte_index111),hl
      inc   hl
      ld    l,(hl)
      ld    h,0
      pop   de
      and   a
      sbc   hl,de
      jp    nz,L265
      ld    a,(_Z)
      ld    l,a
      ld    h,0
      push  hl
      ld    hl,(addr_arraybyte_index111)
      ld    de,2
      add   hl,de
      ld    l,(hl)
      ld    h,0
      pop   de
      and   a
      sbc   hl,de
      jp    nz,L265
L266
      ld    a,(_X)
      ld    l,a
      ld    h,0
      dec   hl
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      ld    de,_MAPDELY
      add   hl,de
      ld    (addr_arraybyte_index111),hl
      ld    (hl),1
      inc   hl
      ld    (hl),1
      ld    hl,(addr_arraybyte_index111)
      ld    de,2
      add   hl,de
      ld    (hl),1
L265
L267
L262
L264
      ld    a,(_X)
      ld    l,a
      ld    h,0
      dec   hl
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      ld    de,_MAPBLOCK
      add   hl,de
      inc   hl
      ld    l,(hl)
      ld    h,0
      ld    a,l
      ld    (_Z),a
      ld    de,0
      ex    de,hl
      and   a
      sbc   hl,de
      jp    nc,L268
      ld    a,(_X)
      ld    l,a
      ld    h,0
      dec   hl
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      ld    de,_MAPDELY
      add   hl,de
      inc   hl
      xor   a
      cp    (hl)
      jp    nz,L268
L269
      ld    a,(_Z)
      ld    l,a
      ld    h,0
      push  hl
      ld    a,(_X)
      ld    l,a
      ld    h,0
      dec   hl
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      ld    de,_MAPBLOCK
      add   hl,de
      ld    (addr_arraybyte_index111),hl
      ld    de,2
      add   hl,de
      ld    l,(hl)
      ld    h,0
      pop   de
      and   a
      sbc   hl,de
      jp    nz,L271
      ld    a,(_Z)
      ld    l,a
      ld    h,0
      push  hl
      ld    hl,(addr_arraybyte_index111)
      ld    de,3
      add   hl,de
      ld    l,(hl)
      ld    h,0
      pop   de
      and   a
      sbc   hl,de
      jp    nz,L271
      ld    a,(_Z)
      ld    l,a
      ld    h,0
      push  hl
      ld    hl,(addr_arraybyte_index111)
      ld    de,4
      add   hl,de
      ld    l,(hl)
      ld    h,0
      pop   de
      and   a
      sbc   hl,de
      jp    nz,L271
      ld    a,(_Z)
      ld    l,a
      ld    h,0
      push  hl
      ld    hl,(addr_arraybyte_index111)
      ld    de,5
      add   hl,de
      ld    l,(hl)
      ld    h,0
      pop   de
      and   a
      sbc   hl,de
      jp    nz,L271
L272
      ld    a,(_X)
      ld    l,a
      ld    h,0
      dec   hl
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      ld    de,_MAPDELY
      add   hl,de
      ld    (addr_arraybyte_index111),hl
      inc   hl
      ld    (hl),1
      ld    hl,(addr_arraybyte_index111)
      ld    de,2
      add   hl,de
      ld    (hl),1
      ld    hl,(addr_arraybyte_index111)
      ld    de,3
      add   hl,de
      ld    (hl),1
      ld    hl,(addr_arraybyte_index111)
      ld    de,4
      add   hl,de
      ld    (hl),1
      ld    hl,(addr_arraybyte_index111)
      ld    de,5
      add   hl,de
      ld    (hl),1
L271
L273
L268
L270
      xor   a
      ld    hl,_Z
      cp    (hl)
      jp    nc,L274
      ld    a,(_X)
      ld    l,a
      ld    h,0
      dec   hl
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      ld    de,_MAPDELY
      add   hl,de
      inc   hl
      xor   a
      cp    (hl)
      jp    nz,L274
L275
      ld    a,(_Z)
      ld    l,a
      ld    h,0
      push  hl
      ld    a,(_X)
      ld    l,a
      ld    h,0
      dec   hl
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      ld    de,_MAPBLOCK
      add   hl,de
      ld    (addr_arraybyte_index111),hl
      ld    de,2
      add   hl,de
      ld    l,(hl)
      ld    h,0
      pop   de
      and   a
      sbc   hl,de
      jp    nz,L277
      ld    a,(_Z)
      ld    l,a
      ld    h,0
      push  hl
      ld    hl,(addr_arraybyte_index111)
      ld    de,3
      add   hl,de
      ld    l,(hl)
      ld    h,0
      pop   de
      and   a
      sbc   hl,de
      jp    nz,L277
      ld    a,(_Z)
      ld    l,a
      ld    h,0
      push  hl
      ld    hl,(addr_arraybyte_index111)
      ld    de,4
      add   hl,de
      ld    l,(hl)
      ld    h,0
      pop   de
      and   a
      sbc   hl,de
      jp    nz,L277
L278
      ld    a,(_X)
      ld    l,a
      ld    h,0
      dec   hl
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      ld    de,_MAPDELY
      add   hl,de
      ld    (addr_arraybyte_index111),hl
      inc   hl
      ld    (hl),1
      ld    hl,(addr_arraybyte_index111)
      ld    de,2
      add   hl,de
      ld    (hl),1
      ld    hl,(addr_arraybyte_index111)
      ld    de,3
      add   hl,de
      ld    (hl),1
      ld    hl,(addr_arraybyte_index111)
      ld    de,4
      add   hl,de
      ld    (hl),1
L277
L279
L274
L276
      xor   a
      ld    hl,_Z
      cp    (hl)
      jp    nc,L280
      ld    a,(_X)
      ld    l,a
      ld    h,0
      dec   hl
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      ld    de,_MAPDELY
      add   hl,de
      inc   hl
      xor   a
      cp    (hl)
      jp    nz,L280
L281
      ld    a,(_Z)
      ld    l,a
      ld    h,0
      push  hl
      ld    a,(_X)
      ld    l,a
      ld    h,0
      dec   hl
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      ld    de,_MAPBLOCK
      add   hl,de
      ld    (addr_arraybyte_index111),hl
      ld    de,2
      add   hl,de
      ld    l,(hl)
      ld    h,0
      pop   de
      and   a
      sbc   hl,de
      jp    nz,L283
      ld    a,(_Z)
      ld    l,a
      ld    h,0
      push  hl
      ld    hl,(addr_arraybyte_index111)
      ld    de,3
      add   hl,de
      ld    l,(hl)
      ld    h,0
      pop   de
      and   a
      sbc   hl,de
      jp    nz,L283
L284
      ld    a,(_X)
      ld    l,a
      ld    h,0
      dec   hl
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      ld    de,_MAPDELY
      add   hl,de
      ld    (addr_arraybyte_index111),hl
      inc   hl
      ld    (hl),1
      ld    hl,(addr_arraybyte_index111)
      ld    de,2
      add   hl,de
      ld    (hl),1
      ld    hl,(addr_arraybyte_index111)
      ld    de,3
      add   hl,de
      ld    (hl),1
L283
L285
L280
L282
      ld    a,(_X)
      ld    l,a
      ld    h,0
      dec   hl
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      ld    de,_MAPBLOCK
      add   hl,de
      ld    de,2
      add   hl,de
      ld    l,(hl)
      ld    h,0
      ld    a,l
      ld    (_Z),a
      ld    de,0
      ex    de,hl
      and   a
      sbc   hl,de
      jp    nc,L286
      ld    a,(_X)
      ld    l,a
      ld    h,0
      dec   hl
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      ld    de,_MAPDELY
      add   hl,de
      ld    de,2
      add   hl,de
      xor   a
      cp    (hl)
      jp    nz,L286
L287
      ld    a,(_Z)
      ld    l,a
      ld    h,0
      push  hl
      ld    a,(_X)
      ld    l,a
      ld    h,0
      dec   hl
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      ld    de,_MAPBLOCK
      add   hl,de
      ld    (addr_arraybyte_index111),hl
      ld    de,3
      add   hl,de
      ld    l,(hl)
      ld    h,0
      pop   de
      and   a
      sbc   hl,de
      jp    nz,L289
      ld    a,(_Z)
      ld    l,a
      ld    h,0
      push  hl
      ld    hl,(addr_arraybyte_index111)
      ld    de,4
      add   hl,de
      ld    l,(hl)
      ld    h,0
      pop   de
      and   a
      sbc   hl,de
      jp    nz,L289
      ld    a,(_Z)
      ld    l,a
      ld    h,0
      push  hl
      ld    hl,(addr_arraybyte_index111)
      ld    de,5
      add   hl,de
      ld    l,(hl)
      ld    h,0
      pop   de
      and   a
      sbc   hl,de
      jp    nz,L289
L290
      ld    a,(_X)
      ld    l,a
      ld    h,0
      dec   hl
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      ld    de,_MAPDELY
      add   hl,de
      ld    (addr_arraybyte_index111),hl
      ld    de,2
      add   hl,de
      ld    (hl),1
      ld    hl,(addr_arraybyte_index111)
      ld    de,3
      add   hl,de
      ld    (hl),1
      ld    hl,(addr_arraybyte_index111)
      ld    de,4
      add   hl,de
      ld    (hl),1
      ld    hl,(addr_arraybyte_index111)
      ld    de,5
      add   hl,de
      ld    (hl),1
L289
L291
L286
L288
      xor   a
      ld    hl,_Z
      cp    (hl)
      jp    nc,L292
      ld    a,(_X)
      ld    l,a
      ld    h,0
      dec   hl
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      ld    de,_MAPDELY
      add   hl,de
      ld    de,2
      add   hl,de
      xor   a
      cp    (hl)
      jp    nz,L292
L293
      ld    a,(_Z)
      ld    l,a
      ld    h,0
      push  hl
      ld    a,(_X)
      ld    l,a
      ld    h,0
      dec   hl
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      ld    de,_MAPBLOCK
      add   hl,de
      ld    (addr_arraybyte_index111),hl
      ld    de,3
      add   hl,de
      ld    l,(hl)
      ld    h,0
      pop   de
      and   a
      sbc   hl,de
      jp    nz,L295
      ld    a,(_Z)
      ld    l,a
      ld    h,0
      push  hl
      ld    hl,(addr_arraybyte_index111)
      ld    de,4
      add   hl,de
      ld    l,(hl)
      ld    h,0
      pop   de
      and   a
      sbc   hl,de
      jp    nz,L295
L296
      ld    a,(_X)
      ld    l,a
      ld    h,0
      dec   hl
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      ld    de,_MAPDELY
      add   hl,de
      ld    (addr_arraybyte_index111),hl
      ld    de,2
      add   hl,de
      ld    (hl),1
      ld    hl,(addr_arraybyte_index111)
      ld    de,3
      add   hl,de
      ld    (hl),1
      ld    hl,(addr_arraybyte_index111)
      ld    de,4
      add   hl,de
      ld    (hl),1
L295
L297
L292
L294
      ld    a,(_X)
      ld    l,a
      ld    h,0
      dec   hl
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      ld    de,_MAPBLOCK
      add   hl,de
      ld    de,3
      add   hl,de
      ld    l,(hl)
      ld    h,0
      ld    a,l
      ld    (_Z),a
      ld    de,0
      ex    de,hl
      and   a
      sbc   hl,de
      jp    nc,L298
      ld    a,(_X)
      ld    l,a
      ld    h,0
      dec   hl
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      ld    de,_MAPDELY
      add   hl,de
      ld    de,3
      add   hl,de
      xor   a
      cp    (hl)
      jp    nz,L298
L299
      ld    a,(_Z)
      ld    l,a
      ld    h,0
      push  hl
      ld    a,(_X)
      ld    l,a
      ld    h,0
      dec   hl
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      ld    de,_MAPBLOCK
      add   hl,de
      ld    (addr_arraybyte_index111),hl
      ld    de,4
      add   hl,de
      ld    l,(hl)
      ld    h,0
      pop   de
      and   a
      sbc   hl,de
      jp    nz,L301
      ld    a,(_Z)
      ld    l,a
      ld    h,0
      push  hl
      ld    hl,(addr_arraybyte_index111)
      ld    de,5
      add   hl,de
      ld    l,(hl)
      ld    h,0
      pop   de
      and   a
      sbc   hl,de
      jp    nz,L301
L302
      ld    a,(_X)
      ld    l,a
      ld    h,0
      dec   hl
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      ld    de,_MAPDELY
      add   hl,de
      ld    (addr_arraybyte_index111),hl
      ld    de,3
      add   hl,de
      ld    (hl),1
      ld    hl,(addr_arraybyte_index111)
      ld    de,4
      add   hl,de
      ld    (hl),1
      ld    hl,(addr_arraybyte_index111)
      ld    de,5
      add   hl,de
      ld    (hl),1
L301
L303
L298
L300
      ld    a,(Lim_X)
      ld    hl,_X
      cp    (hl)
      jp    z,L243
      ld    hl,_X
      inc   (hl)
      jp    L242
L243
      ld    a,1
      ld    (_A),a
      ld    a,6
      ld    (Lim_A),a
L304
      ld    a,1
      ld    (_B),a
      ld    a,6
      ld    (Lim_B),a
L306
      ld    a,(_A)
      ld    l,a
      ld    h,0
      dec   hl
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      ld    de,_MAPDEL
      add   hl,de
      push  hl
      ld    a,(_B)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      push  hl
      ld    a,(_A)
      ld    l,a
      ld    h,0
      dec   hl
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      ld    de,_MAPDELX
      add   hl,de
      push  hl
      ld    a,(_B)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      ld    l,(hl)
      ld    h,0
      push  hl
      ld    a,(_A)
      ld    l,a
      ld    h,0
      dec   hl
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      ld    de,_MAPDELY
      add   hl,de
      push  hl
      ld    a,(_B)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      ld    l,(hl)
      ld    h,0
      pop   de
      add   hl,de
      pop   de
      ld    a,l
      ld    (de),a
      ld    a,(_A)
      ld    l,a
      ld    h,0
      dec   hl
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      ld    de,_MAPDEL
      add   hl,de
      push  hl
      ld    a,(_B)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      ld    (addr_arraybyte_index),hl
      ld    a,2
      cp    (hl)
      jp    nz,L308
L309
      ld    hl,(addr_arraybyte_index)
      ld    (hl),1
L308
L310
      ld    a,(Lim_B)
      ld    hl,_B
      cp    (hl)
      jp    z,L307
      ld    hl,_B
      inc   (hl)
      jp    L306
L307
      ld    a,(Lim_A)
      ld    hl,_A
      cp    (hl)
      jp    z,L305
      ld    hl,_A
      inc   (hl)
      jp    L304
L305
      ld    a,6
      ld    hl,_LEVEL
      cp    (hl)
      jp    nz,L311
L312
      ld    a,1
      ld    (_A),a
      ld    a,6
      ld    (Lim_A),a
L314
      ld    a,1
      ld    (_B),a
      ld    a,6
      ld    (Lim_B),a
L316
      ld    a,(_A)
      ld    l,a
      ld    h,0
      dec   hl
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      ld    de,_MAPBLOCK
      add   hl,de
      push  hl
      ld    a,(_B)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      ld    a,7
      cp    (hl)
      jp    nz,L318
L319
      ld    a,(_SEVENFLAG)
      ld    (_L321),a
      cp    1
      jp    z,L324
      jp    L325
L324
      ld    a,(_A)
      ld    l,a
      ld    h,0
      dec   hl
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      ld    de,_MAPDEL
      add   hl,de
      push  hl
      ld    a,(_B)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      ld    (hl),1
      ld    a,1
      ld    hl,_A
      cp    (hl)
      jp    nc,L326
L327
      ld    a,(_A)
      ld    l,a
      ld    h,0
      dec   hl
      dec   hl
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      ld    de,_MAPDEL
      add   hl,de
      push  hl
      ld    a,(_B)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      ld    (hl),1
L326
L328
      jp    L322
L325
      ld    a,(_L321)
      cp    2
      jp    z,L329
      jp    L330
L329
      ld    a,(_A)
      ld    l,a
      ld    h,0
      dec   hl
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      ld    de,_MAPDEL
      add   hl,de
      push  hl
      ld    a,(_B)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      ld    (hl),1
      ld    a,6
      ld    hl,_A
      cp    (hl)
      jp    z,L331
      jp    c,L331
L332
      ld    a,(_A)
      ld    l,a
      ld    h,0
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      ld    de,_MAPDEL
      add   hl,de
      push  hl
      ld    a,(_B)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      ld    (hl),1
L331
L333
      jp    L322
L330
      ld    a,(_L321)
      cp    3
      jp    z,L334
      jp    L335
L334
      ld    a,(_A)
      ld    l,a
      ld    h,0
      dec   hl
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      ld    de,_MAPDEL
      add   hl,de
      ld    (addr_arraybyte_index111),hl
      push  hl
      ld    a,(_B)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      ld    (hl),1
      ld    a,1
      ld    hl,_B
      cp    (hl)
      jp    nc,L336
L337
      ld    hl,(addr_arraybyte_index111)
      push  hl
      ld    a,(_B)
      ld    l,a
      ld    h,0
      dec   hl
      dec   hl
      pop   de
      add   hl,de
      ld    (hl),1
L336
L338
      jp    L322
L335
      ld    a,(_L321)
      cp    4
      jp    z,L339
      jp    L340
L339
      ld    a,(_A)
      ld    l,a
      ld    h,0
      dec   hl
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      ld    de,_MAPDEL
      add   hl,de
      ld    (addr_arraybyte_index111),hl
      push  hl
      ld    a,(_B)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      ld    (hl),1
      ld    a,6
      ld    hl,_B
      cp    (hl)
      jp    z,L341
      jp    c,L341
L342
      ld    hl,(addr_arraybyte_index111)
      ld    a,(_B)
      ld    e,a
      ld    d,0
      add   hl,de
      ld    (hl),1
L341
L343
      jp    L322
L340
L322
L318
L320
      ld    a,(Lim_B)
      ld    hl,_B
      cp    (hl)
      jp    z,L317
      ld    hl,_B
      inc   (hl)
      jp    L316
L317
      ld    a,(Lim_A)
      ld    hl,_A
      cp    (hl)
      jp    z,L315
      ld    hl,_A
      inc   (hl)
      jp    L314
L315
L311
L313
      xor   a
      ld    (_S),a
      ld    a,1
      ld    (_A),a
      ld    a,6
      ld    (Lim_A),a
L344
      ld    a,1
      ld    (_B),a
      ld    a,6
      ld    (Lim_B),a
L346
      ld    a,(_A)
      ld    l,a
      ld    h,0
      dec   hl
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      ld    de,_MAPDEL
      add   hl,de
      push  hl
      ld    a,(_B)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      ld    a,1
      cp    (hl)
      jp    nz,L348
L349
      ld    a,(_A)
      ld    l,a
      ld    h,0
      dec   hl
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      ld    de,_MAPBLOCK
      add   hl,de
      push  hl
      ld    a,(_B)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      ld    l,(hl)
      ld    h,0
      ld    a,l
      ld    (_L351),a
      cp    1
      jp    z,L354
      jp    L355
L354
      ld    hl,SPRBLOCK1
      push  hl
      ld    hl,65
      ld    a,l
      ld    (attr_sprite),a
      ld    a,(_A)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      push  hl
      ld    a,(_B)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      jp    L352
L355
      ld    a,(_L351)
      cp    2
      jp    z,L356
      jp    L357
L356
      ld    hl,SPRBLOCK2
      push  hl
      ld    hl,66
      ld    a,l
      ld    (attr_sprite),a
      ld    a,(_A)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      push  hl
      ld    a,(_B)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      jp    L352
L357
      ld    a,(_L351)
      cp    3
      jp    z,L358
      jp    L359
L358
      ld    hl,SPRBLOCK3
      push  hl
      ld    hl,67
      ld    a,l
      ld    (attr_sprite),a
      ld    a,(_A)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      push  hl
      ld    a,(_B)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      jp    L352
L359
      ld    a,(_L351)
      cp    4
      jp    z,L360
      jp    L361
L360
      ld    hl,SPRBLOCK4
      push  hl
      ld    hl,68
      ld    a,l
      ld    (attr_sprite),a
      ld    a,(_A)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      push  hl
      ld    a,(_B)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      jp    L352
L361
      ld    a,(_L351)
      cp    5
      jp    z,L362
      jp    L363
L362
      ld    hl,SPRBLOCK5
      push  hl
      ld    hl,69
      ld    a,l
      ld    (attr_sprite),a
      ld    a,(_A)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      push  hl
      ld    a,(_B)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      jp    L352
L363
      ld    a,(_L351)
      cp    6
      jp    z,L364
      jp    L365
L364
      ld    hl,SPRBLOCK6
      push  hl
      ld    hl,70
      ld    a,l
      ld    (attr_sprite),a
      ld    a,(_A)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      push  hl
      ld    a,(_B)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      jp    L352
L365
      ld    a,(_L351)
      cp    7
      jp    z,L366
      jp    L367
L366
      ld    hl,SPRBLOCK7
      push  hl
      ld    hl,71
      ld    a,l
      ld    (attr_sprite),a
      ld    a,(_A)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      push  hl
      ld    a,(_B)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      jp    L352
L367
L352
      ld    a,(_A)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      ld    a,l
      ld    (col_window),a
      ld    a,(_B)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      ld    a,l
      ld    (row_window),a
      ld    a,3
      ld    (width_window),a
      ld    (height_window),a
      call  _BLOCKVIBRSOUND
L348
L350
      ld    a,(Lim_B)
      ld    hl,_B
      cp    (hl)
      jp    z,L347
      ld    hl,_B
      inc   (hl)
      jp    L346
L347
      ld    a,(Lim_A)
      ld    hl,_A
      cp    (hl)
      jp    z,L345
      ld    hl,_A
      inc   (hl)
      jp    L344
L345
      ld    a,1
      ld    (_A),a
      ld    a,6
      ld    (Lim_A),a
L368
      ld    a,1
      ld    (_B),a
      ld    a,6
      ld    (Lim_B),a
L370
      ld    a,(_A)
      ld    l,a
      ld    h,0
      dec   hl
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      ld    de,_MAPDEL
      add   hl,de
      push  hl
      ld    a,(_B)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      ld    a,1
      cp    (hl)
      jp    nz,L372
L373
      ld    hl,SPRBOMB1
      push  hl
      ld    hl,66
      ld    a,l
      ld    (attr_sprite),a
      ld    a,(_A)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      push  hl
      ld    a,(_B)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
L372
L374
      ld    a,(Lim_B)
      ld    hl,_B
      cp    (hl)
      jp    z,L371
      ld    hl,_B
      inc   (hl)
      jp    L370
L371
      ld    a,(Lim_A)
      ld    hl,_A
      cp    (hl)
      jp    z,L369
      ld    hl,_A
      inc   (hl)
      jp    L368
L369
      call  HALT
      ld    a,1
      ld    (_A),a
      ld    a,6
      ld    (Lim_A),a
L375
      ld    a,1
      ld    (_B),a
      ld    a,6
      ld    (Lim_B),a
L377
      ld    a,(_A)
      ld    l,a
      ld    h,0
      dec   hl
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      ld    de,_MAPDEL
      add   hl,de
      push  hl
      ld    a,(_B)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      ld    a,1
      cp    (hl)
      jp    nz,L379
L380
      ld    hl,SPRBOMB2
      push  hl
      ld    hl,66
      ld    a,l
      ld    (attr_sprite),a
      ld    a,(_A)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      push  hl
      ld    a,(_B)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
L379
L381
      ld    a,(Lim_B)
      ld    hl,_B
      cp    (hl)
      jp    z,L378
      ld    hl,_B
      inc   (hl)
      jp    L377
L378
      ld    a,(Lim_A)
      ld    hl,_A
      cp    (hl)
      jp    z,L376
      ld    hl,_A
      inc   (hl)
      jp    L375
L376
      call  HALT
      ld    a,1
      ld    (_A),a
      ld    a,6
      ld    (Lim_A),a
L382
      ld    a,1
      ld    (_B),a
      ld    a,6
      ld    (Lim_B),a
L384
      ld    a,(_A)
      ld    l,a
      ld    h,0
      dec   hl
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      ld    de,_MAPDEL
      add   hl,de
      push  hl
      ld    a,(_B)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      ld    a,1
      cp    (hl)
      jp    nz,L386
L387
      ld    hl,SPRBOMB3
      push  hl
      ld    hl,70
      ld    a,l
      ld    (attr_sprite),a
      ld    a,(_A)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      push  hl
      ld    a,(_B)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
L386
L388
      ld    a,(Lim_B)
      ld    hl,_B
      cp    (hl)
      jp    z,L385
      ld    hl,_B
      inc   (hl)
      jp    L384
L385
      ld    a,(Lim_A)
      ld    hl,_A
      cp    (hl)
      jp    z,L383
      ld    hl,_A
      inc   (hl)
      jp    L382
L383
      call  HALT
      ld    a,1
      ld    (_A),a
      ld    a,6
      ld    (Lim_A),a
L389
      ld    a,1
      ld    (_B),a
      ld    a,6
      ld    (Lim_B),a
L391
      ld    a,(_A)
      ld    l,a
      ld    h,0
      dec   hl
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      ld    de,_MAPDEL
      add   hl,de
      push  hl
      ld    a,(_B)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      ld    a,1
      cp    (hl)
      jp    nz,L393
L394
      ld    hl,SPRBOMB4
      push  hl
      ld    hl,71
      ld    a,l
      ld    (attr_sprite),a
      ld    a,(_A)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      push  hl
      ld    a,(_B)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
L393
L395
      ld    a,(Lim_B)
      ld    hl,_B
      cp    (hl)
      jp    z,L392
      ld    hl,_B
      inc   (hl)
      jp    L391
L392
      ld    a,(Lim_A)
      ld    hl,_A
      cp    (hl)
      jp    z,L390
      ld    hl,_A
      inc   (hl)
      jp    L389
L390
      call  HALT
      ld    a,1
      ld    (_A),a
      ld    a,6
      ld    (Lim_A),a
L396
      ld    a,1
      ld    (_B),a
      ld    a,6
      ld    (Lim_B),a
L398
      ld    a,(_A)
      ld    l,a
      ld    h,0
      dec   hl
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      ld    de,_MAPDEL
      add   hl,de
      push  hl
      ld    a,(_B)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      ld    a,1
      cp    (hl)
      jp    nz,L400
L401
      ld    hl,SPRCLR
      push  hl
      ld    hl,0
      ld    a,l
      ld    (attr_sprite),a
      ld    a,(_A)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      push  hl
      ld    a,(_B)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      ld    a,(_A)
      ld    l,a
      ld    h,0
      dec   hl
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      ld    de,_MAPBLOCK
      add   hl,de
      push  hl
      ld    a,(_B)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      ld    (hl),0
      ld    a,(_S)
      ld    l,a
      ld    h,0
      inc   hl
      ld    a,l
      ld    (_S),a
L400
L402
      ld    a,(Lim_B)
      ld    hl,_B
      cp    (hl)
      jp    z,L399
      ld    hl,_B
      inc   (hl)
      jp    L398
L399
      ld    a,(Lim_A)
      ld    hl,_A
      cp    (hl)
      jp    z,L397
      ld    hl,_A
      inc   (hl)
      jp    L396
L397
      xor   a
      ld    hl,_S
      cp    (hl)
      jp    nc,L403
L404
      ld    a,1
      ld    (sound_loop),a
      ld    a,50
      ld    (sound_time),a
      ld    a,5
      ld    (sound_freq),a
      call  sound_effect
L403
L405
      ld    a,(_S)
      ld    (_L406),a
      cp    3
      jp    z,L409
      jp    L410
L409
      ld    a,(_S)
      ld    l,a
      ld    h,0
      jp    L407
L410
      ld    a,(_L406)
      cp    4
      jp    z,L411
      jp    L412
L411
      ld    a,(_S)
      ld    l,a
      ld    h,0
      add   hl,hl
      ld    a,l
      ld    (_S),a
      jp    L407
L412
      ld    a,(_L406)
      cp    5
      jp    z,L413
      jp    L414
L413
      ld    a,(_S)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      ld    a,l
      ld    (_S),a
      jp    L407
L414
      ld    a,(_L406)
      cp    6
      jp    z,L415
      jp    L416
L415
      ld    a,(_S)
      ld    l,a
      ld    h,0
      add   hl,hl
      add   hl,hl
      ld    a,l
      ld    (_S),a
      jp    L407
L416
      ld    a,(_L406)
      cp    7
      jp    z,L417
      jp    L418
L417
      ld    a,(_S)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,hl
      add   hl,de
      ld    a,l
      ld    (_S),a
      jp    L407
L418
      ld    a,(_L406)
      cp    8
      jp    z,L419
      jp    L420
L419
      ld    a,(_S)
      ld    l,a
      ld    h,0
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      ld    a,l
      ld    (_S),a
      jp    L407
L420
      ld    a,(_L406)
      cp    9
      jp    z,L421
      jp    L422
L421
      ld    a,(_S)
      ld    l,a
      ld    h,0
      ld    bc,7
      ex    de,hl
      call  mul
      ld    a,l
      ld    (_S),a
      jp    L407
L422
      ld    a,(_L406)
      cp    10
      jp    z,L423
      jp    L424
L423
      ld    a,(_S)
      ld    l,a
      ld    h,0
      add   hl,hl
      add   hl,hl
      add   hl,hl
      ld    a,l
      ld    (_S),a
      jp    L407
L424
      ld    a,(_L406)
      cp    11
      jp    z,L425
      jp    L426
L425
      ld    a,(_S)
      ld    l,a
      ld    h,0
      ld    bc,9
      ex    de,hl
      call  mul
      ld    a,l
      ld    (_S),a
      jp    L407
L426
      ld    a,(_L406)
      cp    12
      jp    z,L427
      jp    L428
L427
      ld    a,(_S)
      ld    l,a
      ld    h,0
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,hl
      add   hl,de
      ld    a,l
      ld    (_S),a
      jp    L407
L428
      ld    a,(_L406)
      cp    13
      jp    z,L429
      jp    L430
L429
      ld    a,(_S)
      ld    l,a
      ld    h,0
      add   hl,hl
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,hl
      add   hl,de
      ld    a,l
      ld    (_S),a
      jp    L407
L430
      ld    a,(_L406)
      cp    14
      jp    z,L431
      jp    L432
L431
      ld    a,(_S)
      ld    l,a
      ld    h,0
      ld    bc,30
      ex    de,hl
      call  mul
      ld    a,l
      ld    (_S),a
      jp    L407
L432
L407
      ld    hl,(_SCORE)
      ld    a,(_S)
      ld    e,a
      ld    d,0
      add   hl,de
      ld    (_SCORE),hl
      ld    hl,6
      ld    a,l
      and   %00000111
      ld    l,a
      ld    a,(attr_screen)
      and   %11111000
      or    l
      ld    (attr_screen),a
      ld    hl,(_SCORE)
      ld    de,1000
      ex    de,hl
      and   a
      sbc   hl,de
      jp    z,L433
      jp    c,L433
L434
      ld    hl,50
      xor   a
      srl   l
      rla
      ld    (half_tile_screen),a
      ld    a,l
      ld    (col_screen),a
      ld    hl,10
      ld    a,l
      ld    (row_screen),a
L433
L435
      ld    hl,(_SCORE)
      ld    de,100
      ex    de,hl
      and   a
      sbc   hl,de
      jp    z,L436
      jp    c,L436
L437
      ld    hl,51
      xor   a
      srl   l
      rla
      ld    (half_tile_screen),a
      ld    a,l
      ld    (col_screen),a
      ld    hl,10
      ld    a,l
      ld    (row_screen),a
L436
L438
      ld    hl,(_SCORE)
      ld    de,10
      ex    de,hl
      and   a
      sbc   hl,de
      jp    z,L439
      jp    c,L439
L440
      ld    hl,52
      xor   a
      srl   l
      rla
      ld    (half_tile_screen),a
      ld    a,l
      ld    (col_screen),a
      ld    hl,10
      ld    a,l
      ld    (row_screen),a
L439
L441
      ld    hl,(_SCORE)
      call  convert_16bit_to_string
      ld    hl,string_number
      ld    bc,(col_screen)
      call  print64
      ld    hl,(_SCORE)
      ld    de,100
      ex    de,hl
      and   a
      sbc   hl,de
      jp    z,L444
      jp    nc,L442
L444
L443
      ld    a,2
      ld    (_COLORBLOCK),a
L442
L445
      ld    hl,(_SCORE)
      ld    de,200
      ex    de,hl
      and   a
      sbc   hl,de
      jp    z,L448
      jp    nc,L446
L448
L447
      ld    a,3
      ld    (_COLORBLOCK),a
L446
L449
      ld    hl,(_SCORE)
      ld    de,300
      ex    de,hl
      and   a
      sbc   hl,de
      jp    z,L452
      jp    nc,L450
L452
L451
      ld    a,4
      ld    (_COLORBLOCK),a
L450
L453
      ld    hl,(_SCORE)
      ld    de,400
      ex    de,hl
      and   a
      sbc   hl,de
      jp    z,L456
      jp    nc,L454
L456
L455
      ld    a,5
      ld    (_COLORBLOCK),a
L454
L457
      ld    hl,(_SCORE)
      ld    de,500
      ex    de,hl
      and   a
      sbc   hl,de
      jp    z,L460
      jp    nc,L458
L460
L459
      ld    a,6
      ld    (_COLORBLOCK),a
L458
L461
      ld    a,(_COLORBLOCK)
      ld    (_LEVEL),a
      ret
_BEST
      ld    hl,(_BESTSCORE)
      ld    de,(_SCORE)
      ex    de,hl
      and   a
      sbc   hl,de
      jp    z,L462
      jp    c,L462
L463
      ld    hl,(_SCORE)
      ld    (_BESTSCORE),hl
      ld    hl,SPRNEWREC
      push  hl
      ld    hl,71
      ld    a,l
      ld    (attr_sprite),a
      ld    hl,10
      push  hl
      ld    hl,10
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      ld    hl,6
      ld    a,l
      and   %00000111
      ld    l,a
      ld    a,(attr_screen)
      and   %11111000
      or    l
      ld    (attr_screen),a
      ld    hl,30
      xor   a
      srl   l
      rla
      ld    (half_tile_screen),a
      ld    a,l
      ld    (col_screen),a
      ld    hl,12
      ld    a,l
      ld    (row_screen),a
      ld    hl,(_BESTSCORE)
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,hl
      add   hl,de
      call  convert_16bit_to_string
      ld    hl,string_number
      ld    bc,(col_screen)
      call  print64
      call  waiting_key
L462
L464
      ret
_GAMEOVER
      xor   a
      ld    (_OVER),a
      ld    a,1
      ld    (_Y),a
      ld    a,6
      ld    (Lim_Y),a
L465
      ld    a,1
      ld    (_X),a
      ld    a,6
      ld    (Lim_X),a
L467
      ld    a,(_X)
      ld    l,a
      ld    h,0
      dec   hl
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      ld    de,_MAPBLOCK
      add   hl,de
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      xor   a
      cp    (hl)
      jp    z,L469
L470
      ld    a,(_OVER)
      ld    l,a
      ld    h,0
      inc   hl
      ld    a,l
      ld    (_OVER),a
L469
L471
      ld    a,(Lim_X)
      ld    hl,_X
      cp    (hl)
      jp    z,L468
      ld    hl,_X
      inc   (hl)
      jp    L467
L468
      ld    a,(Lim_Y)
      ld    hl,_Y
      cp    (hl)
      jp    z,L466
      ld    hl,_Y
      inc   (hl)
      jp    L465
L466
      ld    a,36
      ld    hl,_OVER
      cp    (hl)
      jp    nz,L472
L473
      ld    a,20
      ld    (sound_loop),a
      ld    a,8
      ld    (sound_time),a
      xor   a
      ld    (sound_freq),a
      call  sound_effect
      ld    a,15
      ld    (sound_loop),a
      ld    a,16
      ld    (sound_time),a
      xor   a
      ld    (sound_freq),a
      call  sound_effect
L475
      call  readkey
      ld    a,(code_key_1)
      ld    (_KEY1),a
      ld    a,(code_key_2)
      ld    (_KEY2),a
      xor   a
      ld    hl,_KEY1
      cp    (hl)
      jp    z,L477
      jp    L476
L477
      jp    L475
L476
      ld    a,1
      ld    (col_window),a
      ld    (row_window),a
      ld    a,30
      ld    (width_window),a
      ld    a,20
      ld    (height_window),a
      call  window
      call  _BEST
      call  _TITLE
      call  _STARTSCR
L472
L474
      ret
_LEFTMOVE
      ld    a,1
      ld    (_Y),a
      ld    a,6
      ld    (Lim_Y),a
L478
      ld    a,1
      ld    (_I),a
      ld    a,5
      ld    (Lim_I),a
L480
      ld    a,1
      ld    (_X),a
      ld    a,5
      ld    (Lim_X),a
L482
      ld    a,(_X)
      ld    l,a
      ld    h,0
      dec   hl
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      ld    de,_MAPBLOCK
      add   hl,de
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      xor   a
      cp    (hl)
      jp    nz,L484
      ld    a,(_X)
      ld    l,a
      ld    h,0
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      ld    de,_MAPBLOCK
      add   hl,de
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      xor   a
      cp    (hl)
      jp    z,L484
L485
      ld    a,(_X)
      ld    l,a
      ld    h,0
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      ld    de,_MAPBLOCK
      add   hl,de
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      ld    l,(hl)
      ld    h,0
      ld    a,l
      ld    (_L487),a
      cp    1
      jp    z,L490
      jp    L491
L490
      ld    a,1
      ld    (_Z),a
      ld    a,3
      ld    (Lim_Z),a
L492
      ld    hl,SPRCLR
      push  hl
      ld    hl,0
      ld    a,l
      ld    (attr_sprite),a
      ld    a,(_X)
      ld    l,a
      ld    h,0
      inc   hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      ld    hl,SPRBLOCK1
      push  hl
      ld    hl,1
      ld    a,l
      ld    (attr_sprite),a
      ld    a,(_X)
      ld    l,a
      ld    h,0
      inc   hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      ld    a,(_Z)
      ld    e,a
      ld    d,0
      and   a
      sbc   hl,de
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      ld    a,(Lim_Z)
      ld    hl,_Z
      cp    (hl)
      jp    z,L493
      ld    hl,_Z
      inc   (hl)
      jp    L492
L493
      ld    a,(_X)
      ld    l,a
      ld    h,0
      dec   hl
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      ld    de,_MAPBLOCK
      add   hl,de
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      push  hl
      ld    a,(_X)
      ld    l,a
      ld    h,0
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      ld    de,_MAPBLOCK
      add   hl,de
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      ld    (addr_arraybyte_index),hl
      ld    l,(hl)
      ld    h,0
      pop   de
      ld    a,l
      ld    (de),a
      ld    hl,(addr_arraybyte_index)
      ld    (hl),0
      jp    L488
L491
      ld    a,(_L487)
      cp    2
      jp    z,L494
      jp    L495
L494
      ld    a,1
      ld    (_Z),a
      ld    a,3
      ld    (Lim_Z),a
L496
      ld    hl,SPRCLR
      push  hl
      ld    hl,0
      ld    a,l
      ld    (attr_sprite),a
      ld    a,(_X)
      ld    l,a
      ld    h,0
      inc   hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      ld    hl,SPRBLOCK2
      push  hl
      ld    hl,2
      ld    a,l
      ld    (attr_sprite),a
      ld    a,(_X)
      ld    l,a
      ld    h,0
      inc   hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      ld    a,(_Z)
      ld    e,a
      ld    d,0
      and   a
      sbc   hl,de
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      ld    a,(Lim_Z)
      ld    hl,_Z
      cp    (hl)
      jp    z,L497
      ld    hl,_Z
      inc   (hl)
      jp    L496
L497
      ld    a,(_X)
      ld    l,a
      ld    h,0
      dec   hl
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      ld    de,_MAPBLOCK
      add   hl,de
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      push  hl
      ld    a,(_X)
      ld    l,a
      ld    h,0
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      ld    de,_MAPBLOCK
      add   hl,de
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      ld    (addr_arraybyte_index),hl
      ld    l,(hl)
      ld    h,0
      pop   de
      ld    a,l
      ld    (de),a
      ld    hl,(addr_arraybyte_index)
      ld    (hl),0
      jp    L488
L495
      ld    a,(_L487)
      cp    3
      jp    z,L498
      jp    L499
L498
      ld    a,1
      ld    (_Z),a
      ld    a,3
      ld    (Lim_Z),a
L500
      ld    hl,SPRCLR
      push  hl
      ld    hl,0
      ld    a,l
      ld    (attr_sprite),a
      ld    a,(_X)
      ld    l,a
      ld    h,0
      inc   hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      ld    hl,SPRBLOCK3
      push  hl
      ld    hl,3
      ld    a,l
      ld    (attr_sprite),a
      ld    a,(_X)
      ld    l,a
      ld    h,0
      inc   hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      ld    a,(_Z)
      ld    e,a
      ld    d,0
      and   a
      sbc   hl,de
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      ld    a,(Lim_Z)
      ld    hl,_Z
      cp    (hl)
      jp    z,L501
      ld    hl,_Z
      inc   (hl)
      jp    L500
L501
      ld    a,(_X)
      ld    l,a
      ld    h,0
      dec   hl
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      ld    de,_MAPBLOCK
      add   hl,de
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      push  hl
      ld    a,(_X)
      ld    l,a
      ld    h,0
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      ld    de,_MAPBLOCK
      add   hl,de
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      ld    (addr_arraybyte_index),hl
      ld    l,(hl)
      ld    h,0
      pop   de
      ld    a,l
      ld    (de),a
      ld    hl,(addr_arraybyte_index)
      ld    (hl),0
      jp    L488
L499
      ld    a,(_L487)
      cp    4
      jp    z,L502
      jp    L503
L502
      ld    a,1
      ld    (_Z),a
      ld    a,3
      ld    (Lim_Z),a
L504
      ld    hl,SPRCLR
      push  hl
      ld    hl,0
      ld    a,l
      ld    (attr_sprite),a
      ld    a,(_X)
      ld    l,a
      ld    h,0
      inc   hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      ld    hl,SPRBLOCK4
      push  hl
      ld    hl,4
      ld    a,l
      ld    (attr_sprite),a
      ld    a,(_X)
      ld    l,a
      ld    h,0
      inc   hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      ld    a,(_Z)
      ld    e,a
      ld    d,0
      and   a
      sbc   hl,de
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      ld    a,(Lim_Z)
      ld    hl,_Z
      cp    (hl)
      jp    z,L505
      ld    hl,_Z
      inc   (hl)
      jp    L504
L505
      ld    a,(_X)
      ld    l,a
      ld    h,0
      dec   hl
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      ld    de,_MAPBLOCK
      add   hl,de
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      push  hl
      ld    a,(_X)
      ld    l,a
      ld    h,0
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      ld    de,_MAPBLOCK
      add   hl,de
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      ld    (addr_arraybyte_index),hl
      ld    l,(hl)
      ld    h,0
      pop   de
      ld    a,l
      ld    (de),a
      ld    hl,(addr_arraybyte_index)
      ld    (hl),0
      jp    L488
L503
      ld    a,(_L487)
      cp    5
      jp    z,L506
      jp    L507
L506
      ld    a,1
      ld    (_Z),a
      ld    a,3
      ld    (Lim_Z),a
L508
      ld    hl,SPRCLR
      push  hl
      ld    hl,0
      ld    a,l
      ld    (attr_sprite),a
      ld    a,(_X)
      ld    l,a
      ld    h,0
      inc   hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      ld    hl,SPRBLOCK5
      push  hl
      ld    hl,5
      ld    a,l
      ld    (attr_sprite),a
      ld    a,(_X)
      ld    l,a
      ld    h,0
      inc   hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      ld    a,(_Z)
      ld    e,a
      ld    d,0
      and   a
      sbc   hl,de
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      ld    a,(Lim_Z)
      ld    hl,_Z
      cp    (hl)
      jp    z,L509
      ld    hl,_Z
      inc   (hl)
      jp    L508
L509
      ld    a,(_X)
      ld    l,a
      ld    h,0
      dec   hl
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      ld    de,_MAPBLOCK
      add   hl,de
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      push  hl
      ld    a,(_X)
      ld    l,a
      ld    h,0
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      ld    de,_MAPBLOCK
      add   hl,de
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      ld    (addr_arraybyte_index),hl
      ld    l,(hl)
      ld    h,0
      pop   de
      ld    a,l
      ld    (de),a
      ld    hl,(addr_arraybyte_index)
      ld    (hl),0
      jp    L488
L507
      ld    a,(_L487)
      cp    6
      jp    z,L510
      jp    L511
L510
      ld    a,1
      ld    (_Z),a
      ld    a,3
      ld    (Lim_Z),a
L512
      ld    hl,SPRCLR
      push  hl
      ld    hl,0
      ld    a,l
      ld    (attr_sprite),a
      ld    a,(_X)
      ld    l,a
      ld    h,0
      inc   hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      ld    hl,SPRBLOCK6
      push  hl
      ld    hl,6
      ld    a,l
      ld    (attr_sprite),a
      ld    a,(_X)
      ld    l,a
      ld    h,0
      inc   hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      ld    a,(_Z)
      ld    e,a
      ld    d,0
      and   a
      sbc   hl,de
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      ld    a,(Lim_Z)
      ld    hl,_Z
      cp    (hl)
      jp    z,L513
      ld    hl,_Z
      inc   (hl)
      jp    L512
L513
      ld    a,(_X)
      ld    l,a
      ld    h,0
      dec   hl
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      ld    de,_MAPBLOCK
      add   hl,de
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      push  hl
      ld    a,(_X)
      ld    l,a
      ld    h,0
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      ld    de,_MAPBLOCK
      add   hl,de
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      ld    (addr_arraybyte_index),hl
      ld    l,(hl)
      ld    h,0
      pop   de
      ld    a,l
      ld    (de),a
      ld    hl,(addr_arraybyte_index)
      ld    (hl),0
      jp    L488
L511
      ld    a,(_L487)
      cp    7
      jp    z,L514
      jp    L515
L514
      ld    a,1
      ld    (_Z),a
      ld    a,3
      ld    (Lim_Z),a
L516
      ld    hl,SPRCLR
      push  hl
      ld    hl,0
      ld    a,l
      ld    (attr_sprite),a
      ld    a,(_X)
      ld    l,a
      ld    h,0
      inc   hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      ld    hl,SPRBLOCK7
      push  hl
      ld    hl,71
      ld    a,l
      ld    (attr_sprite),a
      ld    a,(_X)
      ld    l,a
      ld    h,0
      inc   hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      ld    a,(_Z)
      ld    e,a
      ld    d,0
      and   a
      sbc   hl,de
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      ld    a,(Lim_Z)
      ld    hl,_Z
      cp    (hl)
      jp    z,L517
      ld    hl,_Z
      inc   (hl)
      jp    L516
L517
      ld    a,(_X)
      ld    l,a
      ld    h,0
      dec   hl
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      ld    de,_MAPBLOCK
      add   hl,de
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      push  hl
      ld    a,(_X)
      ld    l,a
      ld    h,0
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      ld    de,_MAPBLOCK
      add   hl,de
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      ld    (addr_arraybyte_index),hl
      ld    l,(hl)
      ld    h,0
      pop   de
      ld    a,l
      ld    (de),a
      ld    hl,(addr_arraybyte_index)
      ld    (hl),0
      jp    L488
L515
L488
L484
L486
      ld    a,(Lim_X)
      ld    hl,_X
      cp    (hl)
      jp    z,L483
      ld    hl,_X
      inc   (hl)
      jp    L482
L483
      ld    a,(Lim_I)
      ld    hl,_I
      cp    (hl)
      jp    z,L481
      ld    hl,_I
      inc   (hl)
      jp    L480
L481
      ld    a,(Lim_Y)
      ld    hl,_Y
      cp    (hl)
      jp    z,L479
      ld    hl,_Y
      inc   (hl)
      jp    L478
L479
      ld    a,1
      ld    (sound_loop),a
      ld    a,3
      ld    (sound_time),a
      xor   a
      ld    (sound_freq),a
      call  sound_effect
      ld    a,1
      ld    (_SEVENFLAG),a
      call  _DELET
      xor   a
      ld    hl,_S
      cp    (hl)
      jp    nz,L518
L519
      ld    a,28
      ld    hl,_OVER
      cp    (hl)
      jp    z,L521
      jp    c,L521
L522
      call  _BLOCKGEN
      jp    L523
L521
      call  _BLOCKGEN2
L523
L518
L520
      xor   a
      ld    (_SEVENFLAG),a
      call  _DELET
      call  _GAMEOVER
      xor   a
      ld    hl,_OVER
      cp    (hl)
      jp    nz,L524
L525
      call  _BLOCKGEN
L524
L526
      ret
_RIGHTMOVE
      ld    a,1
      ld    (_Y),a
      ld    a,6
      ld    (Lim_Y),a
L527
      ld    a,1
      ld    (_I),a
      ld    a,5
      ld    (Lim_I),a
L529
      ld    a,6
      ld    (_X),a
      ld    a,2
      ld    (Lim_X),a
L531
      ld    a,(_X)
      ld    l,a
      ld    h,0
      dec   hl
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      ld    de,_MAPBLOCK
      add   hl,de
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      xor   a
      cp    (hl)
      jp    nz,L533
      ld    a,(_X)
      ld    l,a
      ld    h,0
      dec   hl
      dec   hl
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      ld    de,_MAPBLOCK
      add   hl,de
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      xor   a
      cp    (hl)
      jp    z,L533
L534
      ld    a,(_X)
      ld    l,a
      ld    h,0
      dec   hl
      dec   hl
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      ld    de,_MAPBLOCK
      add   hl,de
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      ld    l,(hl)
      ld    h,0
      ld    a,l
      ld    (_L536),a
      cp    1
      jp    z,L539
      jp    L540
L539
      ld    a,1
      ld    (_Z),a
      ld    a,3
      ld    (Lim_Z),a
L541
      ld    hl,SPRCLR
      push  hl
      ld    hl,0
      ld    a,l
      ld    (attr_sprite),a
      ld    a,(_X)
      ld    l,a
      ld    h,0
      dec   hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      ld    hl,SPRBLOCK1
      push  hl
      ld    hl,1
      ld    a,l
      ld    (attr_sprite),a
      ld    a,(_X)
      ld    l,a
      ld    h,0
      dec   hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      ld    a,(_Z)
      ld    e,a
      ld    d,0
      add   hl,de
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      ld    a,(Lim_Z)
      ld    hl,_Z
      cp    (hl)
      jp    z,L542
      ld    hl,_Z
      inc   (hl)
      jp    L541
L542
      ld    a,(_X)
      ld    l,a
      ld    h,0
      dec   hl
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      ld    de,_MAPBLOCK
      add   hl,de
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      push  hl
      ld    a,(_X)
      ld    l,a
      ld    h,0
      dec   hl
      dec   hl
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      ld    de,_MAPBLOCK
      add   hl,de
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      ld    (addr_arraybyte_index),hl
      ld    l,(hl)
      ld    h,0
      pop   de
      ld    a,l
      ld    (de),a
      ld    hl,(addr_arraybyte_index)
      ld    (hl),0
      jp    L537
L540
      ld    a,(_L536)
      cp    2
      jp    z,L543
      jp    L544
L543
      ld    a,1
      ld    (_Z),a
      ld    a,3
      ld    (Lim_Z),a
L545
      ld    hl,SPRCLR
      push  hl
      ld    hl,0
      ld    a,l
      ld    (attr_sprite),a
      ld    a,(_X)
      ld    l,a
      ld    h,0
      dec   hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      ld    hl,SPRBLOCK2
      push  hl
      ld    hl,2
      ld    a,l
      ld    (attr_sprite),a
      ld    a,(_X)
      ld    l,a
      ld    h,0
      dec   hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      ld    a,(_Z)
      ld    e,a
      ld    d,0
      add   hl,de
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      ld    a,(Lim_Z)
      ld    hl,_Z
      cp    (hl)
      jp    z,L546
      ld    hl,_Z
      inc   (hl)
      jp    L545
L546
      ld    a,(_X)
      ld    l,a
      ld    h,0
      dec   hl
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      ld    de,_MAPBLOCK
      add   hl,de
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      push  hl
      ld    a,(_X)
      ld    l,a
      ld    h,0
      dec   hl
      dec   hl
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      ld    de,_MAPBLOCK
      add   hl,de
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      ld    (addr_arraybyte_index),hl
      ld    l,(hl)
      ld    h,0
      pop   de
      ld    a,l
      ld    (de),a
      ld    hl,(addr_arraybyte_index)
      ld    (hl),0
      jp    L537
L544
      ld    a,(_L536)
      cp    3
      jp    z,L547
      jp    L548
L547
      ld    a,1
      ld    (_Z),a
      ld    a,3
      ld    (Lim_Z),a
L549
      ld    hl,SPRCLR
      push  hl
      ld    hl,0
      ld    a,l
      ld    (attr_sprite),a
      ld    a,(_X)
      ld    l,a
      ld    h,0
      dec   hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      ld    hl,SPRBLOCK3
      push  hl
      ld    hl,3
      ld    a,l
      ld    (attr_sprite),a
      ld    a,(_X)
      ld    l,a
      ld    h,0
      dec   hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      ld    a,(_Z)
      ld    e,a
      ld    d,0
      add   hl,de
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      ld    a,(Lim_Z)
      ld    hl,_Z
      cp    (hl)
      jp    z,L550
      ld    hl,_Z
      inc   (hl)
      jp    L549
L550
      ld    a,(_X)
      ld    l,a
      ld    h,0
      dec   hl
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      ld    de,_MAPBLOCK
      add   hl,de
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      push  hl
      ld    a,(_X)
      ld    l,a
      ld    h,0
      dec   hl
      dec   hl
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      ld    de,_MAPBLOCK
      add   hl,de
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      ld    (addr_arraybyte_index),hl
      ld    l,(hl)
      ld    h,0
      pop   de
      ld    a,l
      ld    (de),a
      ld    hl,(addr_arraybyte_index)
      ld    (hl),0
      jp    L537
L548
      ld    a,(_L536)
      cp    4
      jp    z,L551
      jp    L552
L551
      ld    a,1
      ld    (_Z),a
      ld    a,3
      ld    (Lim_Z),a
L553
      ld    hl,SPRCLR
      push  hl
      ld    hl,0
      ld    a,l
      ld    (attr_sprite),a
      ld    a,(_X)
      ld    l,a
      ld    h,0
      dec   hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      ld    hl,SPRBLOCK4
      push  hl
      ld    hl,4
      ld    a,l
      ld    (attr_sprite),a
      ld    a,(_X)
      ld    l,a
      ld    h,0
      dec   hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      ld    a,(_Z)
      ld    e,a
      ld    d,0
      add   hl,de
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      ld    a,(Lim_Z)
      ld    hl,_Z
      cp    (hl)
      jp    z,L554
      ld    hl,_Z
      inc   (hl)
      jp    L553
L554
      ld    a,(_X)
      ld    l,a
      ld    h,0
      dec   hl
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      ld    de,_MAPBLOCK
      add   hl,de
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      push  hl
      ld    a,(_X)
      ld    l,a
      ld    h,0
      dec   hl
      dec   hl
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      ld    de,_MAPBLOCK
      add   hl,de
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      ld    (addr_arraybyte_index),hl
      ld    l,(hl)
      ld    h,0
      pop   de
      ld    a,l
      ld    (de),a
      ld    hl,(addr_arraybyte_index)
      ld    (hl),0
      jp    L537
L552
      ld    a,(_L536)
      cp    5
      jp    z,L555
      jp    L556
L555
      ld    a,1
      ld    (_Z),a
      ld    a,3
      ld    (Lim_Z),a
L557
      ld    hl,SPRCLR
      push  hl
      ld    hl,0
      ld    a,l
      ld    (attr_sprite),a
      ld    a,(_X)
      ld    l,a
      ld    h,0
      dec   hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      ld    hl,SPRBLOCK5
      push  hl
      ld    hl,5
      ld    a,l
      ld    (attr_sprite),a
      ld    a,(_X)
      ld    l,a
      ld    h,0
      dec   hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      ld    a,(_Z)
      ld    e,a
      ld    d,0
      add   hl,de
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      ld    a,(Lim_Z)
      ld    hl,_Z
      cp    (hl)
      jp    z,L558
      ld    hl,_Z
      inc   (hl)
      jp    L557
L558
      ld    a,(_X)
      ld    l,a
      ld    h,0
      dec   hl
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      ld    de,_MAPBLOCK
      add   hl,de
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      push  hl
      ld    a,(_X)
      ld    l,a
      ld    h,0
      dec   hl
      dec   hl
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      ld    de,_MAPBLOCK
      add   hl,de
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      ld    (addr_arraybyte_index),hl
      ld    l,(hl)
      ld    h,0
      pop   de
      ld    a,l
      ld    (de),a
      ld    hl,(addr_arraybyte_index)
      ld    (hl),0
      jp    L537
L556
      ld    a,(_L536)
      cp    6
      jp    z,L559
      jp    L560
L559
      ld    a,1
      ld    (_Z),a
      ld    a,3
      ld    (Lim_Z),a
L561
      ld    hl,SPRCLR
      push  hl
      ld    hl,0
      ld    a,l
      ld    (attr_sprite),a
      ld    a,(_X)
      ld    l,a
      ld    h,0
      dec   hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      ld    hl,SPRBLOCK6
      push  hl
      ld    hl,6
      ld    a,l
      ld    (attr_sprite),a
      ld    a,(_X)
      ld    l,a
      ld    h,0
      dec   hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      ld    a,(_Z)
      ld    e,a
      ld    d,0
      add   hl,de
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      ld    a,(Lim_Z)
      ld    hl,_Z
      cp    (hl)
      jp    z,L562
      ld    hl,_Z
      inc   (hl)
      jp    L561
L562
      ld    a,(_X)
      ld    l,a
      ld    h,0
      dec   hl
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      ld    de,_MAPBLOCK
      add   hl,de
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      push  hl
      ld    a,(_X)
      ld    l,a
      ld    h,0
      dec   hl
      dec   hl
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      ld    de,_MAPBLOCK
      add   hl,de
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      ld    (addr_arraybyte_index),hl
      ld    l,(hl)
      ld    h,0
      pop   de
      ld    a,l
      ld    (de),a
      ld    hl,(addr_arraybyte_index)
      ld    (hl),0
      jp    L537
L560
      ld    a,(_L536)
      cp    7
      jp    z,L563
      jp    L564
L563
      ld    a,1
      ld    (_Z),a
      ld    a,3
      ld    (Lim_Z),a
L565
      ld    hl,SPRCLR
      push  hl
      ld    hl,0
      ld    a,l
      ld    (attr_sprite),a
      ld    a,(_X)
      ld    l,a
      ld    h,0
      dec   hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      ld    hl,SPRBLOCK7
      push  hl
      ld    hl,71
      ld    a,l
      ld    (attr_sprite),a
      ld    a,(_X)
      ld    l,a
      ld    h,0
      dec   hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      ld    a,(_Z)
      ld    e,a
      ld    d,0
      add   hl,de
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      ld    a,(Lim_Z)
      ld    hl,_Z
      cp    (hl)
      jp    z,L566
      ld    hl,_Z
      inc   (hl)
      jp    L565
L566
      ld    a,(_X)
      ld    l,a
      ld    h,0
      dec   hl
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      ld    de,_MAPBLOCK
      add   hl,de
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      push  hl
      ld    a,(_X)
      ld    l,a
      ld    h,0
      dec   hl
      dec   hl
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      ld    de,_MAPBLOCK
      add   hl,de
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      ld    (addr_arraybyte_index),hl
      ld    l,(hl)
      ld    h,0
      pop   de
      ld    a,l
      ld    (de),a
      ld    hl,(addr_arraybyte_index)
      ld    (hl),0
      jp    L537
L564
L537
L533
L535
      ld    a,(_X)
      ld    hl,Lim_X
      cp    (hl)
      jp    z,L532
      ld    hl,_X
      dec   (hl)
      jp    L531
L532
      ld    a,(Lim_I)
      ld    hl,_I
      cp    (hl)
      jp    z,L530
      ld    hl,_I
      inc   (hl)
      jp    L529
L530
      ld    a,(Lim_Y)
      ld    hl,_Y
      cp    (hl)
      jp    z,L528
      ld    hl,_Y
      inc   (hl)
      jp    L527
L528
      ld    a,1
      ld    (sound_loop),a
      ld    a,3
      ld    (sound_time),a
      xor   a
      ld    (sound_freq),a
      call  sound_effect
      ld    a,2
      ld    (_SEVENFLAG),a
      call  _DELET
      xor   a
      ld    hl,_S
      cp    (hl)
      jp    nz,L567
L568
      ld    a,28
      ld    hl,_OVER
      cp    (hl)
      jp    z,L570
      jp    c,L570
L571
      call  _BLOCKGEN
      jp    L572
L570
      call  _BLOCKGEN2
L572
L567
L569
      xor   a
      ld    (_SEVENFLAG),a
      call  _DELET
      call  _GAMEOVER
      xor   a
      ld    hl,_OVER
      cp    (hl)
      jp    nz,L573
L574
      call  _BLOCKGEN
L573
L575
      ret
_UPMOVE
      ld    a,1
      ld    (_X),a
      ld    a,6
      ld    (Lim_X),a
L576
      ld    a,1
      ld    (_I),a
      ld    a,5
      ld    (Lim_I),a
L578
      ld    a,1
      ld    (_Y),a
      ld    a,5
      ld    (Lim_Y),a
L580
      ld    a,(_X)
      ld    l,a
      ld    h,0
      dec   hl
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      ld    de,_MAPBLOCK
      add   hl,de
      ld    (addr_arraybyte_index111),hl
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      xor   a
      cp    (hl)
      jp    nz,L582
      ld    hl,(addr_arraybyte_index111)
      ld    a,(_Y)
      ld    e,a
      ld    d,0
      add   hl,de
      xor   a
      cp    (hl)
      jp    z,L582
L583
      ld    hl,(addr_arraybyte_index111)
      ld    a,(_Y)
      ld    e,a
      ld    d,0
      add   hl,de
      ld    l,(hl)
      ld    h,0
      ld    a,l
      ld    (_L585),a
      cp    1
      jp    z,L588
      jp    L589
L588
      ld    a,1
      ld    (_Z),a
      ld    a,3
      ld    (Lim_Z),a
L590
      ld    hl,SPRCLR
      push  hl
      ld    hl,0
      ld    a,l
      ld    (attr_sprite),a
      ld    a,(_X)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      inc   hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      ld    hl,SPRBLOCK1
      push  hl
      ld    hl,1
      ld    a,l
      ld    (attr_sprite),a
      ld    a,(_X)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      inc   hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      ld    a,(_Z)
      ld    e,a
      ld    d,0
      and   a
      sbc   hl,de
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      ld    a,(Lim_Z)
      ld    hl,_Z
      cp    (hl)
      jp    z,L591
      ld    hl,_Z
      inc   (hl)
      jp    L590
L591
      ld    a,(_X)
      ld    l,a
      ld    h,0
      dec   hl
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      ld    de,_MAPBLOCK
      add   hl,de
      ld    (addr_arraybyte_index111),hl
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      push  hl
      ld    hl,(addr_arraybyte_index111)
      ld    a,(_Y)
      ld    e,a
      ld    d,0
      add   hl,de
      ld    l,(hl)
      ld    h,0
      pop   de
      ld    a,l
      ld    (de),a
      ld    hl,(addr_arraybyte_index111)
      ld    a,(_Y)
      ld    e,a
      ld    d,0
      add   hl,de
      ld    (hl),0
      jp    L586
L589
      ld    a,(_L585)
      cp    2
      jp    z,L592
      jp    L593
L592
      ld    a,1
      ld    (_Z),a
      ld    a,3
      ld    (Lim_Z),a
L594
      ld    hl,SPRCLR
      push  hl
      ld    hl,0
      ld    a,l
      ld    (attr_sprite),a
      ld    a,(_X)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      inc   hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      ld    hl,SPRBLOCK2
      push  hl
      ld    hl,2
      ld    a,l
      ld    (attr_sprite),a
      ld    a,(_X)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      inc   hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      ld    a,(_Z)
      ld    e,a
      ld    d,0
      and   a
      sbc   hl,de
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      ld    a,(Lim_Z)
      ld    hl,_Z
      cp    (hl)
      jp    z,L595
      ld    hl,_Z
      inc   (hl)
      jp    L594
L595
      ld    a,(_X)
      ld    l,a
      ld    h,0
      dec   hl
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      ld    de,_MAPBLOCK
      add   hl,de
      ld    (addr_arraybyte_index111),hl
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      push  hl
      ld    hl,(addr_arraybyte_index111)
      ld    a,(_Y)
      ld    e,a
      ld    d,0
      add   hl,de
      ld    l,(hl)
      ld    h,0
      pop   de
      ld    a,l
      ld    (de),a
      ld    hl,(addr_arraybyte_index111)
      ld    a,(_Y)
      ld    e,a
      ld    d,0
      add   hl,de
      ld    (hl),0
      jp    L586
L593
      ld    a,(_L585)
      cp    3
      jp    z,L596
      jp    L597
L596
      ld    a,1
      ld    (_Z),a
      ld    a,3
      ld    (Lim_Z),a
L598
      ld    hl,SPRCLR
      push  hl
      ld    hl,0
      ld    a,l
      ld    (attr_sprite),a
      ld    a,(_X)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      inc   hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      ld    hl,SPRBLOCK3
      push  hl
      ld    hl,3
      ld    a,l
      ld    (attr_sprite),a
      ld    a,(_X)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      inc   hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      ld    a,(_Z)
      ld    e,a
      ld    d,0
      and   a
      sbc   hl,de
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      ld    a,(Lim_Z)
      ld    hl,_Z
      cp    (hl)
      jp    z,L599
      ld    hl,_Z
      inc   (hl)
      jp    L598
L599
      ld    a,(_X)
      ld    l,a
      ld    h,0
      dec   hl
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      ld    de,_MAPBLOCK
      add   hl,de
      ld    (addr_arraybyte_index111),hl
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      push  hl
      ld    hl,(addr_arraybyte_index111)
      ld    a,(_Y)
      ld    e,a
      ld    d,0
      add   hl,de
      ld    l,(hl)
      ld    h,0
      pop   de
      ld    a,l
      ld    (de),a
      ld    hl,(addr_arraybyte_index111)
      ld    a,(_Y)
      ld    e,a
      ld    d,0
      add   hl,de
      ld    (hl),0
      jp    L586
L597
      ld    a,(_L585)
      cp    4
      jp    z,L600
      jp    L601
L600
      ld    a,1
      ld    (_Z),a
      ld    a,3
      ld    (Lim_Z),a
L602
      ld    hl,SPRCLR
      push  hl
      ld    hl,0
      ld    a,l
      ld    (attr_sprite),a
      ld    a,(_X)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      inc   hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      ld    hl,SPRBLOCK4
      push  hl
      ld    hl,4
      ld    a,l
      ld    (attr_sprite),a
      ld    a,(_X)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      inc   hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      ld    a,(_Z)
      ld    e,a
      ld    d,0
      and   a
      sbc   hl,de
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      ld    a,(Lim_Z)
      ld    hl,_Z
      cp    (hl)
      jp    z,L603
      ld    hl,_Z
      inc   (hl)
      jp    L602
L603
      ld    a,(_X)
      ld    l,a
      ld    h,0
      dec   hl
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      ld    de,_MAPBLOCK
      add   hl,de
      ld    (addr_arraybyte_index111),hl
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      push  hl
      ld    hl,(addr_arraybyte_index111)
      ld    a,(_Y)
      ld    e,a
      ld    d,0
      add   hl,de
      ld    l,(hl)
      ld    h,0
      pop   de
      ld    a,l
      ld    (de),a
      ld    hl,(addr_arraybyte_index111)
      ld    a,(_Y)
      ld    e,a
      ld    d,0
      add   hl,de
      ld    (hl),0
      jp    L586
L601
      ld    a,(_L585)
      cp    5
      jp    z,L604
      jp    L605
L604
      ld    a,1
      ld    (_Z),a
      ld    a,3
      ld    (Lim_Z),a
L606
      ld    hl,SPRCLR
      push  hl
      ld    hl,0
      ld    a,l
      ld    (attr_sprite),a
      ld    a,(_X)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      inc   hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      ld    hl,SPRBLOCK5
      push  hl
      ld    hl,5
      ld    a,l
      ld    (attr_sprite),a
      ld    a,(_X)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      inc   hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      ld    a,(_Z)
      ld    e,a
      ld    d,0
      and   a
      sbc   hl,de
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      ld    a,(Lim_Z)
      ld    hl,_Z
      cp    (hl)
      jp    z,L607
      ld    hl,_Z
      inc   (hl)
      jp    L606
L607
      ld    a,(_X)
      ld    l,a
      ld    h,0
      dec   hl
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      ld    de,_MAPBLOCK
      add   hl,de
      ld    (addr_arraybyte_index111),hl
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      push  hl
      ld    hl,(addr_arraybyte_index111)
      ld    a,(_Y)
      ld    e,a
      ld    d,0
      add   hl,de
      ld    l,(hl)
      ld    h,0
      pop   de
      ld    a,l
      ld    (de),a
      ld    hl,(addr_arraybyte_index111)
      ld    a,(_Y)
      ld    e,a
      ld    d,0
      add   hl,de
      ld    (hl),0
      jp    L586
L605
      ld    a,(_L585)
      cp    6
      jp    z,L608
      jp    L609
L608
      ld    a,1
      ld    (_Z),a
      ld    a,3
      ld    (Lim_Z),a
L610
      ld    hl,SPRCLR
      push  hl
      ld    hl,0
      ld    a,l
      ld    (attr_sprite),a
      ld    a,(_X)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      inc   hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      ld    hl,SPRBLOCK6
      push  hl
      ld    hl,6
      ld    a,l
      ld    (attr_sprite),a
      ld    a,(_X)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      inc   hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      ld    a,(_Z)
      ld    e,a
      ld    d,0
      and   a
      sbc   hl,de
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      ld    a,(Lim_Z)
      ld    hl,_Z
      cp    (hl)
      jp    z,L611
      ld    hl,_Z
      inc   (hl)
      jp    L610
L611
      ld    a,(_X)
      ld    l,a
      ld    h,0
      dec   hl
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      ld    de,_MAPBLOCK
      add   hl,de
      ld    (addr_arraybyte_index111),hl
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      push  hl
      ld    hl,(addr_arraybyte_index111)
      ld    a,(_Y)
      ld    e,a
      ld    d,0
      add   hl,de
      ld    l,(hl)
      ld    h,0
      pop   de
      ld    a,l
      ld    (de),a
      ld    hl,(addr_arraybyte_index111)
      ld    a,(_Y)
      ld    e,a
      ld    d,0
      add   hl,de
      ld    (hl),0
      jp    L586
L609
      ld    a,(_L585)
      cp    7
      jp    z,L612
      jp    L613
L612
      ld    a,1
      ld    (_Z),a
      ld    a,3
      ld    (Lim_Z),a
L614
      ld    hl,SPRCLR
      push  hl
      ld    hl,0
      ld    a,l
      ld    (attr_sprite),a
      ld    a,(_X)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      inc   hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      ld    hl,SPRBLOCK7
      push  hl
      ld    hl,71
      ld    a,l
      ld    (attr_sprite),a
      ld    a,(_X)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      inc   hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      ld    a,(_Z)
      ld    e,a
      ld    d,0
      and   a
      sbc   hl,de
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      ld    a,(Lim_Z)
      ld    hl,_Z
      cp    (hl)
      jp    z,L615
      ld    hl,_Z
      inc   (hl)
      jp    L614
L615
      ld    a,(_X)
      ld    l,a
      ld    h,0
      dec   hl
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      ld    de,_MAPBLOCK
      add   hl,de
      ld    (addr_arraybyte_index111),hl
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      push  hl
      ld    hl,(addr_arraybyte_index111)
      ld    a,(_Y)
      ld    e,a
      ld    d,0
      add   hl,de
      ld    l,(hl)
      ld    h,0
      pop   de
      ld    a,l
      ld    (de),a
      ld    hl,(addr_arraybyte_index111)
      ld    a,(_Y)
      ld    e,a
      ld    d,0
      add   hl,de
      ld    (hl),0
      jp    L586
L613
L586
L582
L584
      ld    a,(Lim_Y)
      ld    hl,_Y
      cp    (hl)
      jp    z,L581
      ld    hl,_Y
      inc   (hl)
      jp    L580
L581
      ld    a,(Lim_I)
      ld    hl,_I
      cp    (hl)
      jp    z,L579
      ld    hl,_I
      inc   (hl)
      jp    L578
L579
      ld    a,(Lim_X)
      ld    hl,_X
      cp    (hl)
      jp    z,L577
      ld    hl,_X
      inc   (hl)
      jp    L576
L577
      ld    a,1
      ld    (sound_loop),a
      ld    a,3
      ld    (sound_time),a
      xor   a
      ld    (sound_freq),a
      call  sound_effect
      ld    a,3
      ld    (_SEVENFLAG),a
      call  _DELET
      xor   a
      ld    hl,_S
      cp    (hl)
      jp    nz,L616
L617
      ld    a,28
      ld    hl,_OVER
      cp    (hl)
      jp    z,L619
      jp    c,L619
L620
      call  _BLOCKGEN
      jp    L621
L619
      call  _BLOCKGEN2
L621
L616
L618
      xor   a
      ld    (_SEVENFLAG),a
      call  _DELET
      call  _GAMEOVER
      xor   a
      ld    hl,_OVER
      cp    (hl)
      jp    nz,L622
L623
      call  _BLOCKGEN
L622
L624
      ret
_DOWNMOVE
      ld    a,1
      ld    (_X),a
      ld    a,6
      ld    (Lim_X),a
L625
      ld    a,1
      ld    (_I),a
      ld    a,5
      ld    (Lim_I),a
L627
      ld    a,6
      ld    (_Y),a
      ld    a,2
      ld    (Lim_Y),a
L629
      ld    a,(_X)
      ld    l,a
      ld    h,0
      dec   hl
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      ld    de,_MAPBLOCK
      add   hl,de
      ld    (addr_arraybyte_index111),hl
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      xor   a
      cp    (hl)
      jp    nz,L631
      ld    hl,(addr_arraybyte_index111)
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      dec   hl
      pop   de
      add   hl,de
      xor   a
      cp    (hl)
      jp    z,L631
L632
      ld    hl,(addr_arraybyte_index111)
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      dec   hl
      pop   de
      add   hl,de
      ld    l,(hl)
      ld    h,0
      ld    a,l
      ld    (_L634),a
      cp    1
      jp    z,L637
      jp    L638
L637
      ld    a,1
      ld    (_Z),a
      ld    a,3
      ld    (Lim_Z),a
L639
      ld    hl,SPRCLR
      push  hl
      ld    hl,0
      ld    a,l
      ld    (attr_sprite),a
      ld    a,(_X)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      ld    hl,SPRBLOCK1
      push  hl
      ld    hl,1
      ld    a,l
      ld    (attr_sprite),a
      ld    a,(_X)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      ld    a,(_Z)
      ld    e,a
      ld    d,0
      add   hl,de
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      ld    a,(Lim_Z)
      ld    hl,_Z
      cp    (hl)
      jp    z,L640
      ld    hl,_Z
      inc   (hl)
      jp    L639
L640
      ld    a,(_X)
      ld    l,a
      ld    h,0
      dec   hl
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      ld    de,_MAPBLOCK
      add   hl,de
      ld    (addr_arraybyte_index111),hl
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      push  hl
      ld    hl,(addr_arraybyte_index111)
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      dec   hl
      pop   de
      add   hl,de
      ld    l,(hl)
      ld    h,0
      pop   de
      ld    a,l
      ld    (de),a
      ld    hl,(addr_arraybyte_index111)
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      dec   hl
      pop   de
      add   hl,de
      ld    (hl),0
      jp    L635
L638
      ld    a,(_L634)
      cp    2
      jp    z,L641
      jp    L642
L641
      ld    a,1
      ld    (_Z),a
      ld    a,3
      ld    (Lim_Z),a
L643
      ld    hl,SPRCLR
      push  hl
      ld    hl,0
      ld    a,l
      ld    (attr_sprite),a
      ld    a,(_X)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      ld    hl,SPRBLOCK2
      push  hl
      ld    hl,2
      ld    a,l
      ld    (attr_sprite),a
      ld    a,(_X)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      ld    a,(_Z)
      ld    e,a
      ld    d,0
      add   hl,de
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      ld    a,(Lim_Z)
      ld    hl,_Z
      cp    (hl)
      jp    z,L644
      ld    hl,_Z
      inc   (hl)
      jp    L643
L644
      ld    a,(_X)
      ld    l,a
      ld    h,0
      dec   hl
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      ld    de,_MAPBLOCK
      add   hl,de
      ld    (addr_arraybyte_index111),hl
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      push  hl
      ld    hl,(addr_arraybyte_index111)
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      dec   hl
      pop   de
      add   hl,de
      ld    l,(hl)
      ld    h,0
      pop   de
      ld    a,l
      ld    (de),a
      ld    hl,(addr_arraybyte_index111)
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      dec   hl
      pop   de
      add   hl,de
      ld    (hl),0
      jp    L635
L642
      ld    a,(_L634)
      cp    3
      jp    z,L645
      jp    L646
L645
      ld    a,1
      ld    (_Z),a
      ld    a,3
      ld    (Lim_Z),a
L647
      ld    hl,SPRCLR
      push  hl
      ld    hl,0
      ld    a,l
      ld    (attr_sprite),a
      ld    a,(_X)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      ld    hl,SPRBLOCK3
      push  hl
      ld    hl,3
      ld    a,l
      ld    (attr_sprite),a
      ld    a,(_X)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      ld    a,(_Z)
      ld    e,a
      ld    d,0
      add   hl,de
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      ld    a,(Lim_Z)
      ld    hl,_Z
      cp    (hl)
      jp    z,L648
      ld    hl,_Z
      inc   (hl)
      jp    L647
L648
      ld    a,(_X)
      ld    l,a
      ld    h,0
      dec   hl
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      ld    de,_MAPBLOCK
      add   hl,de
      ld    (addr_arraybyte_index111),hl
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      push  hl
      ld    hl,(addr_arraybyte_index111)
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      dec   hl
      pop   de
      add   hl,de
      ld    l,(hl)
      ld    h,0
      pop   de
      ld    a,l
      ld    (de),a
      ld    hl,(addr_arraybyte_index111)
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      dec   hl
      pop   de
      add   hl,de
      ld    (hl),0
      jp    L635
L646
      ld    a,(_L634)
      cp    4
      jp    z,L649
      jp    L650
L649
      ld    a,1
      ld    (_Z),a
      ld    a,3
      ld    (Lim_Z),a
L651
      ld    hl,SPRCLR
      push  hl
      ld    hl,0
      ld    a,l
      ld    (attr_sprite),a
      ld    a,(_X)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      ld    hl,SPRBLOCK4
      push  hl
      ld    hl,4
      ld    a,l
      ld    (attr_sprite),a
      ld    a,(_X)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      ld    a,(_Z)
      ld    e,a
      ld    d,0
      add   hl,de
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      ld    a,(Lim_Z)
      ld    hl,_Z
      cp    (hl)
      jp    z,L652
      ld    hl,_Z
      inc   (hl)
      jp    L651
L652
      ld    a,(_X)
      ld    l,a
      ld    h,0
      dec   hl
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      ld    de,_MAPBLOCK
      add   hl,de
      ld    (addr_arraybyte_index111),hl
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      push  hl
      ld    hl,(addr_arraybyte_index111)
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      dec   hl
      pop   de
      add   hl,de
      ld    l,(hl)
      ld    h,0
      pop   de
      ld    a,l
      ld    (de),a
      ld    hl,(addr_arraybyte_index111)
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      dec   hl
      pop   de
      add   hl,de
      ld    (hl),0
      jp    L635
L650
      ld    a,(_L634)
      cp    5
      jp    z,L653
      jp    L654
L653
      ld    a,1
      ld    (_Z),a
      ld    a,3
      ld    (Lim_Z),a
L655
      ld    hl,SPRCLR
      push  hl
      ld    hl,0
      ld    a,l
      ld    (attr_sprite),a
      ld    a,(_X)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      ld    hl,SPRBLOCK5
      push  hl
      ld    hl,5
      ld    a,l
      ld    (attr_sprite),a
      ld    a,(_X)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      ld    a,(_Z)
      ld    e,a
      ld    d,0
      add   hl,de
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      ld    a,(Lim_Z)
      ld    hl,_Z
      cp    (hl)
      jp    z,L656
      ld    hl,_Z
      inc   (hl)
      jp    L655
L656
      ld    a,(_X)
      ld    l,a
      ld    h,0
      dec   hl
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      ld    de,_MAPBLOCK
      add   hl,de
      ld    (addr_arraybyte_index111),hl
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      push  hl
      ld    hl,(addr_arraybyte_index111)
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      dec   hl
      pop   de
      add   hl,de
      ld    l,(hl)
      ld    h,0
      pop   de
      ld    a,l
      ld    (de),a
      ld    hl,(addr_arraybyte_index111)
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      dec   hl
      pop   de
      add   hl,de
      ld    (hl),0
      jp    L635
L654
      ld    a,(_L634)
      cp    6
      jp    z,L657
      jp    L658
L657
      ld    a,1
      ld    (_Z),a
      ld    a,3
      ld    (Lim_Z),a
L659
      ld    hl,SPRCLR
      push  hl
      ld    hl,0
      ld    a,l
      ld    (attr_sprite),a
      ld    a,(_X)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      ld    hl,SPRBLOCK6
      push  hl
      ld    hl,6
      ld    a,l
      ld    (attr_sprite),a
      ld    a,(_X)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      ld    a,(_Z)
      ld    e,a
      ld    d,0
      add   hl,de
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      ld    a,(Lim_Z)
      ld    hl,_Z
      cp    (hl)
      jp    z,L660
      ld    hl,_Z
      inc   (hl)
      jp    L659
L660
      ld    a,(_X)
      ld    l,a
      ld    h,0
      dec   hl
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      ld    de,_MAPBLOCK
      add   hl,de
      ld    (addr_arraybyte_index111),hl
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      push  hl
      ld    hl,(addr_arraybyte_index111)
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      dec   hl
      pop   de
      add   hl,de
      ld    l,(hl)
      ld    h,0
      pop   de
      ld    a,l
      ld    (de),a
      ld    hl,(addr_arraybyte_index111)
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      dec   hl
      pop   de
      add   hl,de
      ld    (hl),0
      jp    L635
L658
      ld    a,(_L634)
      cp    7
      jp    z,L661
      jp    L662
L661
      ld    a,1
      ld    (_Z),a
      ld    a,3
      ld    (Lim_Z),a
L663
      ld    hl,SPRCLR
      push  hl
      ld    hl,0
      ld    a,l
      ld    (attr_sprite),a
      ld    a,(_X)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      ld    hl,SPRBLOCK7
      push  hl
      ld    hl,71
      ld    a,l
      ld    (attr_sprite),a
      ld    a,(_X)
      ld    l,a
      ld    h,0
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      dec   hl
      ld    a,(_Z)
      ld    e,a
      ld    d,0
      add   hl,de
      ld    d,l
      pop   hl
      ld    e,l
      pop   hl
      call  put_spr_put
      ld    a,(Lim_Z)
      ld    hl,_Z
      cp    (hl)
      jp    z,L664
      ld    hl,_Z
      inc   (hl)
      jp    L663
L664
      ld    a,(_X)
      ld    l,a
      ld    h,0
      dec   hl
      add   hl,hl
      ld    d,h
      ld    e,l
      add   hl,hl
      add   hl,de
      ld    de,_MAPBLOCK
      add   hl,de
      ld    (addr_arraybyte_index111),hl
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      pop   de
      add   hl,de
      push  hl
      ld    hl,(addr_arraybyte_index111)
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      dec   hl
      pop   de
      add   hl,de
      ld    l,(hl)
      ld    h,0
      pop   de
      ld    a,l
      ld    (de),a
      ld    hl,(addr_arraybyte_index111)
      push  hl
      ld    a,(_Y)
      ld    l,a
      ld    h,0
      dec   hl
      dec   hl
      pop   de
      add   hl,de
      ld    (hl),0
      jp    L635
L662
L635
L631
L633
      ld    a,(_Y)
      ld    hl,Lim_Y
      cp    (hl)
      jp    z,L630
      ld    hl,_Y
      dec   (hl)
      jp    L629
L630
      ld    a,(Lim_I)
      ld    hl,_I
      cp    (hl)
      jp    z,L628
      ld    hl,_I
      inc   (hl)
      jp    L627
L628
      ld    a,(Lim_X)
      ld    hl,_X
      cp    (hl)
      jp    z,L626
      ld    hl,_X
      inc   (hl)
      jp    L625
L626
      ld    a,1
      ld    (sound_loop),a
      ld    a,3
      ld    (sound_time),a
      xor   a
      ld    (sound_freq),a
      call  sound_effect
      ld    a,4
      ld    (_SEVENFLAG),a
      call  _DELET
      xor   a
      ld    hl,_S
      cp    (hl)
      jp    nz,L665
L666
      ld    a,28
      ld    hl,_OVER
      cp    (hl)
      jp    z,L668
      jp    c,L668
L669
      call  _BLOCKGEN
      jp    L670
L668
      call  _BLOCKGEN2
L670
L665
L667
      xor   a
      ld    (_SEVENFLAG),a
      call  _DELET
      call  _GAMEOVER
      xor   a
      ld    hl,_OVER
      cp    (hl)
      jp    nz,L671
L672
      call  _BLOCKGEN
L671
L673
      ret
MAIN
      call  MUSLOAD
      ld    hl,0
      ld    a,l
      call  8859
      ld    hl,7
      ld    a,l
      ld    (attr_screen),a
      ld    hl,16384
      call  clrscr
      call  _TITLE
      call  _SCRTWO
      xor   a
      ld    (_OVER),a
      ld    hl,0
      ld    (_BESTSCORE),hl
      call  _STARTSCR
L674
      call  readkey
      ld    a,(code_key_1)
      ld    (_KEY1),a
      ld    a,(code_key_2)
      ld    (_KEY2),a
      ld    a,(_KEY1)
      ld    (_L677),a
      cp    53
      jp    z,L680
      jp    L681
L680
      call  _LEFTMOVE
      jp    L678
L681
      ld    a,(_L677)
      cp    56
      jp    z,L682
      jp    L683
L682
      call  _RIGHTMOVE
      jp    L678
L683
      ld    a,(_L677)
      cp    55
      jp    z,L684
      jp    L685
L684
      call  _UPMOVE
      jp    L678
L685
      ld    a,(_L677)
      cp    54
      jp    z,L686
      jp    L687
L686
      call  _DOWNMOVE
      jp    L678
L687
      ld    a,(_L677)
      cp    79
      jp    z,L688
      jp    L689
L688
      call  _LEFTMOVE
      jp    L678
L689
      ld    a,(_L677)
      cp    80
      jp    z,L690
      jp    L691
L690
      call  _RIGHTMOVE
      jp    L678
L691
      ld    a,(_L677)
      cp    81
      jp    z,L692
      jp    L693
L692
      call  _UPMOVE
      jp    L678
L693
      ld    a,(_L677)
      cp    65
      jp    z,L694
      jp    L695
L694
      call  _DOWNMOVE
      jp    L678
L695
L678
      ld    a,(_LEVELOLD)
      ld    hl,_LEVEL
      cp    (hl)
      jp    nc,L696
L697
      call  _PRINTLEVEL
      ld    a,(_LEVEL)
      ld    (_LEVELOLD),a
L696
L698
      ld    hl,1
      ld    de,2
      ex    de,hl
      and   a
      sbc   hl,de
      jp    nc,L676
      jp    L675
L676
      jp    L674
L675
      jp    $

; ***** Library Code ***** 

; константы

virt_screen_high	equ	160				; старший байт смещения вирт.экрана
addr_virt_screen	equ	57344				; адрес вирт.экрана
table_mirror_high	equ	251				; старший байт адреса таблицы зеркальных байтов



; звуковой эффект
; вход: (sound_loop),(sound_freq),(sound_time)
; выход: нет

sound_effect

	ld	a,(sound_loop)
	ld	b,a
	ld	de,(sound_freq)

       LD    A,(23624)
       AND   #38
       RRA
       RRA
       RRA
       LD    L,A
       DI
EXPL1  PUSH  BC
       PUSH  DE
EXPL2  PUSH  DE
EXPL3  LD    B,E
       DJNZ  $           ;задержка
       LD    A,(BC)      ;в паре BC один из первых 256 адресов ПЗУ
       AND   16
       OR    L
       OUT   (254),A
       INC   C
       DEC   D
       JR    NZ,EXPL3
       POP   DE
; Изменение высоты шума (понижение среднего тона;
;  если заменить на DEC E, тон будет наоборот повышаться)
       INC   E
       DEC   D
       JR    NZ,EXPL2
       POP   DE
       POP   BC
       DJNZ  EXPL1       ;повторение всего эффекта
       EI
       RET



; вывод участка карты на экран клетками 1x1 знакомест
; вход: параметры карты
; выход: нет

map_put_1x1		ld	a,(map_ymax_array)
			ld	c,a
			ld	b,0
			ld	a,(map_x)
			dec	a
			ld	e,a
			ld	d,0
			call	mul

			ld	a,(map_y)
			dec	a
			ld	e,a
			ld	d,0
			add	hl,de

			ld	de,(map_addr_array)
			add	hl,de

			ld	(map_addr_curr),hl

			ld	hl,(map_xscr)
			ld	(map_xscr_curr),hl

			ld	a,(map_height_scr)
			ld	b,a

map_put_1x1_01		push	bc

			ld	a,(map_width_scr)
			ld	b,a

map_put_1x1_02		push	bc

			ld	hl,(map_addr_curr)

			ld	a,(hl)
			and	a
			ld	hl,(map_addr_sprites)
			jp	z,map_put_1x1_04
			ld	b,a

			ld	de,8
			ld	de,9


map_put_1x1_03		add	hl,de
			djnz	map_put_1x1_03

map_put_1x1_04		call	map_put_1x1_10

			ld	hl,(map_addr_curr)
			inc	hl
			ld	(map_addr_curr),hl

			ld	hl,map_xscr_curr
			inc	(hl)
			;inc	(hl)

			pop	bc
			djnz	map_put_1x1_02

			ld	hl,(map_addr_curr)
			ld	a,(map_ymax_array)
			ld	e,a
			ld	d,0
			add	hl,de

			ld	a,(map_width_scr)
			ld	e,a
			and	a
			sbc	hl,de

			ld	(map_addr_curr),hl

			ld	hl,map_yscr_curr
			inc	(hl)
			;inc	(hl)

			ld	a,(map_xscr)
			ld	(map_xscr_curr),a

			pop	bc
			djnz	map_put_1x1_01

			ret


map_put_1x1_10		ex	de,hl


			ld	bc,(map_xscr_curr)

			LD	A,B
			RRCA
			RRCA
			RRCA
			LD	L,A
			AND	31
			OR	88
			LD	H,A
			LD	A,L
			AND	252
			OR	C
			LD	L,A


			ld	a,(de)
			ld	(hl),a
			inc	de


			ld	bc,(map_xscr_curr)

			LD      A,B
			LD      H,A
			RRCA
			RRCA
			RRCA
			AND	A,224
			ADD	A,C
			LD	L,A
			LD	A,H
			AND	24
			OR	64
			LD	H,A


			dup	7
			ld	a,(de)
			ld	(hl),a
			inc	de
			inc	h
			edup

			ld	a,(de)
			ld	(hl),a

			ret



; чтение до двух одновременно нажатых клавиш
; вход: нет
; выход: (code_key_1),(code_key_2) = коды нажатых клавиш (если не нажата, то 0)

readkey		ld	de,0
		ld	(code_key_1),de


		ld	bc,32766
		call	readkey_10
		ld	bc,49150
		call	readkey_10
		ld	bc,57342
		call	readkey_10
		ld	bc,61438
		call	readkey_10
		ld	bc,63486
		call	readkey_10
		ld	bc,64510
		call	readkey_10
		ld	bc,65022
		call	readkey_10
		ld	bc,65278
		call	readkey_10
		ret

readkey_10	in	a,(c)

		rrca
		call	nc,readkey_20
		inc	e

		rrca
		call	nc,readkey_20
		inc	e

		rrca
		call	nc,readkey_20
		inc	e

		rrca
		call	nc,readkey_20
		inc	e

		rrca
		call	nc,readkey_20
		inc	e

		ret

readkey_20	push	af

		ld	bc,code_key_1
		ld	a,(bc)
		and	a
		jp	z,readkey_21
		inc	bc

readkey_21	ld	hl,table_code_key
		add	hl,de
		ld	a,(hl)
		ld	(bc),a

		pop	af

		ret




; генератор случайного числа
; вход: hl=максимальное число
; выход: hl=случайное число

random			inc	hl
			push	hl

			ld	d,0
			ld	bc,(rnd)
			ld	h,c
			ld	l,#fd
			ld	a,b
			or	a
			sbc	hl,bc
			sbc	a,d
			sbc	hl,bc
			sbc	a,d
			ld	e,a
			sbc	hl,de
			jp	nc,random_01
			inc	hl
random_01		ld	(rnd),hl

			ex	de,hl
			pop	bc
			call	mul_01

			ex	de,hl

			ret




; вывод произвольного спрайта с атрибутами с затиранием изображения на экране
; вход: HL=адрес спрайта, DE=координаты вывода на экране
; выход: нет

put_spr_put	LD	B,(HL)

put_spr_put_01	PUSH	BC				; B = количество знакомест в спрайте

		INC	HL
		LD	A,(HL)
		ADD	A,D


		LD	B,A

		INC	HL
		LD	A,(HL)
		ADD	A,E


		LD	C,A

		INC	HL
		PUSH	DE				; DE = координаты спрайта на экране
							; HL = адрес нахождения в спрайте, DE = свободно


		PUSH	BC				; BC = реальные координаты спрайта на экране

                LD	A,B				; расчет адреса атрибутов знакоместа в DE
                RRCA
                RRCA
                RRCA
                LD	E,A
                AND	31
                OR	88
                LD	D,A
                LD	A,E
                AND	252
                OR	C
                LD	E,A


                POP     BC                              ; BC = реальные координаты спрайта на экране

		ld	a,(attr_sprite)
		ld	(de),a				; заносим атрибуты знакоместа на экран


                LD      A,B				; расчет адреса первого байта знакоместа в DE
                LD      D,A
                RRCA
                RRCA
                RRCA
                AND	A,224
		ADD	A,C
                LD	E,A
                LD	A,D
                AND	24
                OR	64
                LD	D,A				; DE = адрес вывода знакоместа на экране, HL = адрес изображения в спрайте


		; вывод знакоместа (8 строк)

		dup	7
		LD	A,(HL)
		LD	(DE),A				; вывели байт спрайта
		INC     HL
                INC     D
		edup

		LD	A,(HL)
		LD	(DE),A				; вывели байт спрайта

		POP	DE				; HL = адрес нахождения в спрайте, DE = координаты спрайта на экране
put_spr_put_02	POP	BC				; B = цикл по количеству знакомест в спрайте
		DJNZ	put_spr_put_01
		RET







; ожидание нажатия любой клавиши
; вход: нет
; выход: a = код нажатой клавиши

waiting_key			xor	a
				ld	(23560),a

waiting_key_01			halt
				ld	a,(23560)
				and	a
				jp	z,waiting_key_01

				ret



; перевод двухбайтного числа в строку символов
; вход: hl=число
; выход: (string_number)=строка

convert_16bit_to_string		ld	de,string_number+1

				ld	bc,10000
				call	convert_16bit_to_string_01

				ld	bc,1000
				call	convert_16bit_to_string_01

				ld	bc,100
				call	convert_16bit_to_string_01

				ld	bc,10
				call	convert_16bit_to_string_01

				ld	bc,1
				call	convert_16bit_to_string_01

				ld	b,4

convert_16bit_to_string_03	push	bc
				ld	hl,string_number+2
				ld	de,string_number+1
				ld	a,(de)
				cp	s__0
				jp	nz,convert_16bit_to_string_04
				ld	c,b
				ld	b,0
				ldir
				pop	bc
				djnz	convert_16bit_to_string_03

				ld	a,1
				ld	(string_number),a

				ret

convert_16bit_to_string_04	pop	bc

				ld	a,b
				inc	a
				ld	(string_number),a

				ret

convert_16bit_to_string_01	ld	a,s__0
				and	a
convert_16bit_to_string_02	sbc	hl,bc
				inc	a
				jp	nc,convert_16bit_to_string_02
				add	hl,bc
				dec	a
				ld	(de),a
				inc	de
				ret



; печать строки текста шрифтом 4х8 с атрибутами
; вход: hl=адрес текста строки с количеством и кодами символов, b=строка экрана, c=столбец экрана
; выход: нет

print64		ld	a,(hl)
		and	a
		ret	z


		push	hl
		call	calc_addr_attr
		ld	a,(attr_screen)
		ld	(hl),a
		pop	hl


		call	calc_addr_scr

		ld	a,(half_tile_screen)
		bit	0,a
		ld	a,(hl)
		jp	nz,print64_4

print64_3       push    af


		push	hl
		call	calc_addr_attr
		ld	a,(attr_screen)
		ld	(hl),a
		pop	hl

                
                inc     hl
                push    hl
                
                ld      a,(hl)
		sub	32
		ld	l,a
		ld	h,0
		add	hl,hl
		ld	c,l
		ld	b,h
		add	hl,hl
		add	hl,bc
                ld      bc,font64
                add     hl,bc

                push    de
                
                ld      b,6
		xor	a
		ld	(de),a
print64_1       inc     d
                ld      a,(hl)
		and	#f0
                ld      c,a
                ld      a,(de)
		and	#0f
                or      c
                ld      (de),a
                inc     hl
                djnz    print64_1

		inc	d
		xor	a
		ld	(de),a

		ld	a,1
		ld	(half_tile_screen),a

                pop     de
                pop     hl
                pop     af

                dec     a
                ret     z

print64_4	push    af

                inc     hl
                push    hl

                ld      a,(hl)
		sub	32
		ld	l,a
		ld	h,0
		add	hl,hl
		ld	c,l
		ld	b,h
		add	hl,hl
		add	hl,bc
                ld      bc,font64
                add     hl,bc

                push    de

                ld      b,6
		xor	a
		ld	(de),a
print64_2       inc     d
                ld      a,(hl)
                and     #0f
                ld      c,a
                ld      a,(de)
		and	#f0
                or      c
                ld      (de),a
                inc     hl
                djnz    print64_2

		inc	d
		xor	a
		ld	(de),a

		ld	(half_tile_screen),a

                pop     de

		call	move_cr64

                pop     hl
                pop     af
                dec     a
                
                jp      nz,print64_3

                ret



; перемещение курсора после печати символа шрифтом 4х8
; вход: de=адрес знакоместа на экране
; выход: de=адрес нового знакоместа на экране, b=строка экрана, c=столбец экрана

move_cr64	inc	de

		ld	hl,col_screen
		inc	(hl)
		ld	a,(hl)

		cp	32
		ret	c

		xor	a
		ld	(half_tile_screen),a
		ld	(hl),a
		ld	c,a

		inc	hl
		inc	(hl)
		ld	a,(hl)
		ld	b,a

		cp	24
		jp	c,move_cr64_01

		ld	a,23
		ld	(hl),a
		ld	b,a

		push	bc
		call	scroll_up8
		pop	bc

move_cr64_01	call	calc_addr_scr

		ret




; расчет адреса знакоместа на экране
; вход: нет
; выход: de=адрес знакоместа на экране

calc_addr_scr		ld	bc,(col_screen)
			ld      a,b
                	ld      d,a
                	rrca
                	rrca
                	rrca
                	and     a,224
                	add     a,c
                	ld      e,a
                	ld      a,d
                	and     24
                	or      64
                	ld      d,a


			ret



; расчет адреса атрибутов знакоместа на экране
; вход: нет
; выход: hl=адрес атрибутов знакоместа на экране

calc_addr_attr		ld	bc,(col_screen)
			ld	a,b
			rrca
			rrca
			rrca
			ld	l,a
			and	31
			or	88
			ld	h,a
			ld	a,l
			and	252
			or	c
			ld	l,a


			ret




; скроллинг экрана вверх на 8 пикселей (1 знакоместо) с атрибутами
; вход: нет
; выход: нет

scroll_up8		ld	hl,table_addr_scr
			ld	b,184

scroll_up8_01		push	bc

			ld	e,(hl)
			inc	hl
			ld	d,(hl)
			inc	hl

			push	hl

			ld	bc,14
			add	hl,bc
			ld	c,(hl)
			inc	hl
			ld	b,(hl)

			ld	h,b
			ld	l,c

			ld	bc,32
			ldir

			pop	hl
			pop	bc
			djnz	scroll_up8_01

			ld	b,8

scroll_up8_02		push	bc

			ld	e,(hl)
			inc	hl
			ld	d,(hl)
			inc	hl

			push	hl

			ld	h,d
			ld	l,e
			inc	de
			ld	(hl),0
			ld	bc,31
			ldir

			pop	hl
			pop	bc
			djnz	scroll_up8_02

			ld	de,#5800
			ld	hl,#5820
			ld	bc,736
			ldir

			ld	a,(de)

			ld	hl,#5ae0
			ld	de,#5ae1
			ld	(hl),a
			ld	bc,31
			ldir

			ret



; очистка экрана или виртуального экрана
; вход: hl = адрес экрана
; выход: нет

clrscr			ld	d,h
			ld	e,l
			inc	de
			ld	(hl),0

			ld	a,48
clrscr_01		dup	128
			ldi
			edup
			dec	a
			jp	nz,clrscr_01

			ld	a,(attr_screen)
			ld	(hl),a
			ld	bc,767
			ldir

			ld	bc,0
			ld	(col_screen),bc
			xor	a
			ld	(half_tile_screen),a

			ret



; очистка окна
; вход: нет
; выход: нет


window LD    BC,(width_window)		;чтение сразу двух переменных:
                         		; C = LEN, B = HGT
       LD    A,(row_window)
CLSV1  PUSH  AF
       PUSH  BC
       call  3742        ;адрес начала строки экрана
       LD    A,(col_window)     ;прибавляем смещение
       ADD   A,L         ; COL по горизонтали
       LD    L,A
       LD    B,8         ;в каждой строке 8 рядов пикселей
CLSV2  PUSH  HL
       LD    E,C         ;счетчик циклов в E, равный ширине окна
       XOR   A           ;в аккумуляторе 0
CLSV3  LD    (HL),A      ;обнуляем очередной байт видеобуфера
       INC   HL          ;переходим к следующему
       DEC   E           ;пока не дойдем до правого края окна
       JR    NZ,CLSV3
       POP   HL
       INC   H           ;переходим к следующему ряду пикселей
       DJNZ  CLSV2
       POP   BC
       POP   AF
       INC   A           ;переходим к следующей строке экрана
       DJNZ  CLSV1       ;повторяем, пока не дойдем
                         ; до нижнего края окна


SETV   LD    DE,#5800    ;адрес начала области атрибутов экрана
       LD    BC,(width_window)    ;C = LEN, B = HGT
       LD    A,(row_window)
       LD    L,A         ;расчет адреса левого верхнего угла окна
       LD    H,0         ; в области атрибутов экрана
       ADD   HL,HL       ;умножаем на 32 (2 в 5-ой степени)
       ADD   HL,HL
       ADD   HL,HL
       ADD   HL,HL
       ADD   HL,HL
       ADD   HL,DE       ;полученное смещение складываем
                         ; с началом области атрибутов
       LD    A,(col_window)     ;добавляем горизонтальное смещение окна
       ADD   A,L
       LD    L,A
       LD    A,(attr_screen)    ;в аккумуляторе байт атрибутов
SETV1  PUSH  BC
       PUSH  HL
SETV2  LD    (HL),A      ;помещаем в видеобуфер
       INC   HL
       DEC   C           ;до правого края окна
       JR    NZ,SETV2
       POP   HL
       POP   BC
       LD    DE,32       ;переходим к следующей строке
       ADD   HL,DE       ; (длина строки 32 знакоместа)
       DJNZ  SETV1       ;повторяем, пока не дойдем до нижнего
                         ; края окна


       RET



; сохранение окна в памяти
; вход: нет
; выход: нет

getimage	ld	de,addr_virt_screen
		ld	hl,col_window
		ldi
		ldi
		ldi
		ldi

		ld	hl,(col_window)			; l=col_window, h=row_window
		ld	a,(height_window)
		ld	b,a

getimage_01	push	bc
		push	hl

                LD      A,H				; расчет адреса первого байта знакоместа в HL
                RRCA
                RRCA
                RRCA
                AND	A,224
		ADD	A,L
                LD	L,A
                LD	A,H
                AND	24
                OR	64
                LD	H,A

		dup	8
		push	hl
		ld	bc,(width_window)
		ld	b,0
		ldir
		pop	hl
		inc	h
		edup

		pop	hl

		inc	h

		pop	bc
		djnz	getimage_01


		ld	hl,(col_window)			; l=col_window, h=row_window
		ld	a,(height_window)
		ld	b,a

getimage_02	push	bc
		push	hl

                LD	A,H				; расчет адреса атрибутов знакоместа в BC
                RRCA
                RRCA
                RRCA
                LD	C,A
                AND	31
                OR	88
                LD	B,A
                LD	A,C
                AND	252
                OR	L
                LD	C,A

		ld	h,b
		ld	l,c
		ld	bc,(width_window)
		ld	b,0
		ldir

		pop	hl

		inc	h

		pop	bc
		djnz	getimage_02


		ret


; вывод окна из памяти
; вход: нет
; выход: нет

putimage	ld	hl,addr_virt_screen+2
		ld	de,col_window+2
		ldi
		ldi

		ld	de,(col_window)			; e=col_window, d=row_window
		ld	a,(height_window)
		ld	b,a

putimage_01	push	bc
		push	de

                LD      A,D				; расчет адреса первого байта знакоместа в DE
                RRCA
                RRCA
                RRCA
                AND	A,224
		ADD	A,E
                LD	E,A
                LD	A,D
                AND	24
                OR	64
                LD	D,A

		dup	8
		push	de
		ld	bc,(width_window)
		ld	b,0
		ldir
		pop	de
		inc	d
		edup

		pop	de

		inc	d

		pop	bc
		djnz	putimage_01


		ld	de,(col_window)			; e=col_window, d=row_window
		ld	a,(height_window)
		ld	b,a

putimage_02	push	bc
		push	de

                LD	A,D				; расчет адреса атрибутов знакоместа в BC
                RRCA
                RRCA
                RRCA
                LD	C,A
                AND	31
                OR	88
                LD	B,A
                LD	A,C
                AND	252
                OR	E
                LD	C,A

		ld	d,b
		ld	e,c
		ld	bc,(width_window)
		ld	b,0
		ldir

		pop	de

		inc	d

		pop	bc
		djnz	putimage_02


		ret



; попиксельный скроллинг окна вверх
; вход: нет
; выход: нет

scr_up LD    A,(col_window)
       LD    C,A
       LD    A,(height_window)
       LD    B,A
       LD    A,(row_window)
; Значения из переменных ROW, COL и HGT умножаем на 8,
;  то есть переводим знакоместа в пиксели
       SLA   A
       SLA   A
       SLA   A
       SLA   B
       SLA   B
       SLA   B
       DEC   B           ;потому что один ряд пикселей просто
                         ; заполняется нулями
       SLA   C
       SLA   C
       SLA   C
       PUSH  AF
       PUSH  BC
       CALL  8880        ;вычисляем адрес верхнего левого угла окна
       POP   BC
       POP   AF
SCRUP1 INC   A           ;следующий ряд пикселей
       PUSH  AF
       PUSH  BC
       PUSH  HL
       CALL  8880        ;вычисляем адрес
       POP   DE
       PUSH  HL
       LD    A,(width_window)     ;пересылаем столько байт, сколько
                         ; умещается по ширине окна
       LD    C,A
       LD    B,0
       LDIR
       POP   HL
       POP   BC
       POP   AF
       DJNZ  SCRUP1
       LD    (HL),0      ;в последний ряд пикселей записываем нули
       LD    D,H
       LD    E,L
       INC   DE
       LD    A,(width_window)     ;по ширине окна,
       DEC   A           ; минус 1
       RET   Z           ;выходим, если только одно знакоместо
       LD    C,A
       LD    B,0
       LDIR              ;иначе обнуляем и все остальные байты ряда
       RET



; попиксельный скроллинг окна вниз
; вход: нет
; выход: нет

scr_dn LD    A,(col_window)
       LD    C,A
       LD    A,(height_window)
       LD    B,A
       LD    A,(row_window)
       ADD   A,B         ;начинаем перемещать изображение не
                         ; сверху, как в SCR_UP, а снизу
       SLA   A
       SLA   A
       SLA   A
       DEC   A
       SLA   B
       SLA   B
       SLA   B
       DEC   B
       SLA   C
       SLA   C
       SLA   C
       PUSH  AF
       PUSH  BC
       CALL  8880
       POP   BC
       POP   AF
SCRDN1 DEC   A           ;следующий ряд пикселей (идем вверх)
       PUSH  AF
       PUSH  BC
       PUSH  HL
       CALL  8880
       POP   DE
       PUSH  HL
       LD    A,(width_window)
       LD    C,A
       LD    B,0
       LDIR
       POP   HL
       POP   BC
       POP   AF
       DJNZ  SCRDN1
       LD    (HL),0
       LD    D,H
       LD    E,L
       INC   DE
       LD    A,(width_window)
       DEC   A
       RET   Z
       LD    C,A
       LD    B,0
       LDIR
       RET



; попиксельный скроллинг окна влево
; вход: нет
; выход: нет


scr_lf LD    A,(height_window)
       LD    B,A
       LD    A,(row_window)
SCRLF1 PUSH  AF
       PUSH  BC
       CALL  3742
       LD    A,(col_window)
       LD    B,A
       LD    A,(width_window)
       DEC   A
       ADD   A,B
       ADD   A,L
       LD    L,A
       LD    B,8
SCRLF2 PUSH  HL
       LD    A,(width_window)
       AND   A
SCRLF3 RL    (HL)
       DEC   HL
       DEC   A
       JR    NZ,SCRLF3
       POP   HL
       INC   H
       DJNZ  SCRLF2
       POP   BC
       POP   AF
       INC   A
       DJNZ  SCRLF1
       RET




; попиксельный скроллинг окна вправо
; вход: нет
; выход: нет

scr_rt LD    A,(height_window)
       LD    B,A
       LD    A,(row_window)
SCRRT1 PUSH  AF
       PUSH  BC
       CALL  3742
       LD    A,(col_window)
       ADD   A,L
       LD    L,A
       LD    B,8
SCRRT2 PUSH  HL
       LD    A,(width_window)
       AND   A
SCRRT3 RR    (HL)
       INC   HL
       DEC   A
       JR    NZ,SCRRT3
       POP   HL
       INC   H
       DJNZ  SCRRT2
       POP   BC
       POP   AF
       INC   A
       DJNZ  SCRRT1
       RET




; пауза
; вход: hl=количество интервалов 1/50 секунды
; выход: нет

pause			halt
			dec	hl
			ld	a,h
			or	l
			jr	nz,pause

			ret



; функция беззнакового умножения 16-разрядных чисел
; (C) Kirill Frolov
;     idea by Vasil Ivanov
; dehl=de*bc   ~730t.

mul	ld	a,d
	and	a
	jp	nz,mul_00
	ld	ix,mul_00
	ld	h,b
	ld	l,c
	ld	a,e
	jp	mul_02

mul_00	ld	a,b
	and	a
	jp	nz,mul_01
	ld	ix,mul_01
	ld	h,d
	ld	l,e
	ld	a,c
	jp	mul_02

mul_01
        ld hl, 0
        ld a, c 
        ld c, l    ; 18

        add a, a 
        jr nc, $+4
        add hl, de 
        adc a, c   ; 29
     ; REPEAT 7
          add hl, hl 
          rla 
          jr nc, $+4
          add hl, de 
          adc a, c   ; 40*7  309
              add hl, hl 
              rla 
              jr nc, $+4
              add hl, de 
              adc a, c 
            add hl, hl 
            rla 
            jr nc, $+4
            add hl, de 
            adc a, c 
              add hl, hl 
              rla 
              jr nc, $+4
              add hl, de 
              adc a, c 
            add hl, hl 
            rla 
            jr nc, $+4
            add hl, de 
            adc a, c 
              add hl, hl 
              rla 
              jr nc, $+4
              add hl, de 
              adc a, c 
            add hl, hl 
            rla 
            jr nc, $+4
            add hl, de 
            adc a, c 
     ; ENDR 

        ld c, a 
        push hl   ; 0chl
        ld hl, 0
        ld a, b 
        ld b, l   ; 33

        add a, a 
        jr nc, $+4
        add hl, de
        add a, b   ; 29
     ; REPEAT 7
          add hl, hl 
          rla 
          jr nc, $+4
          add hl, de 
          add a, b   ; 40*7  309
              add hl, hl 
              rla 
              jr nc, $+4
              add hl, de 
              add a, b 
            add hl, hl 
            rla 
            jr nc, $+4
            add hl, de 
            add a, b 
              add hl, hl 
              rla 
              jr nc, $+4
              add hl, de 
              add a, b 
            add hl, hl 
            rla 
            jr nc, $+4
            add hl, de 
            add a, b 
              add hl, hl 
              rla 
              jr nc, $+4
              add hl, de 
              add a, b 
            add hl, hl 
            rla 
            jr nc, $+4
            add hl, de 
            add a, b 
     ; ENDR 

   ; ahl0 + 0cde = hlde
        pop de
        ld b, l
        ld l, h
        ld h, a
        ld a, d
        add a, b
        ld d, a 
        ld b, 0
        adc hl, bc
        ex de, hl   ; 60

        ret         ; 729t.


mul_02		and	a
		jp	z,mul_n0
		cp	1
		jp	z,mul_n1
		cp	2
		jp	z,mul_n2
		cp	3
		jp	z,mul_n3
		cp	4
		jp	z,mul_n4
		cp	5
		jp	z,mul_n5
		cp	8
		jp	z,mul_n8
		cp	10
		jp	z,mul_n10
		cp	15
		jp	z,mul_n15
		cp	16
		jp	z,mul_n16
		cp	20
		jp	z,mul_n20
		cp	32
		jp	z,mul_n32
		cp	50
		jp	z,mul_n50
		cp	64
		jp	z,mul_n64
		cp	100
		jp	z,mul_n100
		cp	128
		jp	z,mul_n128
		jp	(ix)

mul_n0		ld	hl,0
		ret

mul_n1		ret

mul_n2		add	hl,hl
		ret

mul_n3		ld	d,h
		ld	e,l
		add	hl,hl
		add	hl,de
		ret

mul_n4		add	hl,hl
		add	hl,hl
		ret

mul_n5		ld	d,h
		ld	e,l
		add	hl,hl
		add	hl,hl
		add	hl,de
		ret

mul_n8		add	hl,hl
		add	hl,hl
		add	hl,hl
		ret

mul_n10		add	hl,hl
		ld	d,h
		ld	e,l
		add	hl,hl
		add	hl,hl
		add	hl,de
		ret

mul_n15		ld	d,h
		ld	e,l
		add	hl,hl
		add	hl,hl
		add	hl,hl
		add	hl,hl
		and	a
		sbc	hl,de
		ret

mul_n16		add	hl,hl
		add	hl,hl
		add	hl,hl
		add	hl,hl
		ret

mul_n20		add	hl,hl
		add	hl,hl
		ld	d,h
		ld	e,l
		add	hl,hl
		add	hl,hl
		add	hl,de
		ret

mul_n32		add	hl,hl
		add	hl,hl
		add	hl,hl
		add	hl,hl
		add	hl,hl
		ret

mul_n50		add	hl,hl
		ld	d,h
		ld	e,l
		add	hl,hl
		add	hl,hl
		add	hl,hl
		ld	b,h
		ld	c,l
		add	hl,hl
		add	hl,bc
		add	hl,de
		ret

mul_n64		add	hl,hl
		add	hl,hl
		add	hl,hl
		add	hl,hl
		add	hl,hl
		add	hl,hl
		ret

mul_n100	add	hl,hl
		add	hl,hl
		ld	d,h
		ld	e,l
		add	hl,hl
		add	hl,hl
		add	hl,hl
		ld	b,h
		ld	c,l
		add	hl,hl
		add	hl,bc
		add	hl,de
		ret

mul_n128	add	hl,hl
		add	hl,hl
		add	hl,hl
		add	hl,hl
		add	hl,hl
		add	hl,hl
		add	hl,hl
		ret



; коды символов для шрифта 4х8

s_sp             equ     32
s__0             equ     48


; шрифт 4х8
                
font64

                    defb #00,#00,#00,#00,#00,#00	; 032  space
                    defb #44,#44,#44,#44,#00,#44	; 033  !
                    defb #AA,#AA,#00,#00,#00,#00	; 034  "
                    defb #AA,#EE,#AA,#AA,#EE,#AA	; 035  #
                    defb #44,#EE,#CC,#66,#EE,#44	; 036  $
                    defb #AA,#22,#44,#44,#88,#AA	; 037  %
                    defb #44,#AA,#44,#AA,#AA,#55	; 038  &
                    defb #22,#44,#00,#00,#00,#00	; 039  '
                    defb #22,#44,#44,#44,#44,#22	; 040  (
                    defb #44,#22,#22,#22,#22,#44	; 041  )
                    defb #00,#AA,#44,#AA,#00,#00	; 042  *
                    defb #00,#44,#EE,#44,#00,#00	; 043  +
                    defb #00,#00,#00,#00,#22,#44	; 044  ,
                    defb #00,#00,#EE,#00,#00,#00	; 045  -
                    defb #00,#00,#00,#00,#00,#44	; 046  .
                    defb #22,#22,#44,#44,#88,#88	; 047  /
                    defb #44,#AA,#AA,#AA,#AA,#44	; 048  0
                    defb #44,#CC,#44,#44,#44,#EE	; 049  1
                    defb #44,#AA,#22,#44,#88,#EE	; 050  2
                    defb #EE,#22,#44,#22,#22,#CC	; 051  3
                    defb #22,#66,#AA,#EE,#22,#22	; 052  4
                    defb #EE,#88,#CC,#22,#22,#CC	; 053  5
                    defb #66,#88,#CC,#AA,#AA,#44	; 054  6
                    defb #EE,#22,#44,#88,#88,#88	; 055  7
                    defb #44,#AA,#44,#AA,#AA,#44	; 056  8
                    defb #44,#AA,#AA,#66,#22,#CC	; 057  9
                    defb #00,#44,#00,#00,#44,#00	; 058  :
                    defb #00,#22,#00,#00,#22,#44	; 059  ;
                    defb #00,#22,#44,#88,#44,#22	; 060  <
                    defb #00,#EE,#00,#EE,#00,#00	; 061  =
                    defb #00,#88,#44,#22,#44,#88	; 062  >
                    defb #44,#AA,#22,#44,#00,#44	; 063  ?
                    defb #66,#BB,#DD,#FF,#CC,#66	; 064  @
                    defb #66,#AA,#AA,#EE,#AA,#AA	; 065  A
                    defb #CC,#AA,#CC,#AA,#AA,#CC	; 066  B
                    defb #44,#AA,#88,#88,#AA,#44	; 067  C
                    defb #CC,#AA,#AA,#AA,#AA,#CC	; 068  D
                    defb #EE,#88,#CC,#88,#88,#EE	; 069  E
                    defb #EE,#88,#CC,#88,#88,#88	; 070  F
                    defb #66,#88,#88,#AA,#AA,#66	; 071  G
                    defb #AA,#AA,#EE,#AA,#AA,#AA	; 072  H
                    defb #EE,#44,#44,#44,#44,#EE	; 073  I
                    defb #66,#22,#22,#22,#AA,#44	; 074  J
                    defb #AA,#AA,#CC,#AA,#AA,#AA	; 075  K
                    defb #88,#88,#88,#88,#88,#EE	; 076  L
                    defb #AA,#EE,#EE,#EE,#AA,#AA	; 077  M
                    defb #AA,#AA,#EE,#EE,#EE,#AA	; 078  N
                    defb #66,#AA,#AA,#AA,#AA,#CC	; 079  O
                    defb #CC,#AA,#AA,#CC,#88,#88	; 080  P
                    defb #44,#AA,#AA,#AA,#EE,#77	; 081  Q
                    defb #CC,#AA,#AA,#CC,#AA,#AA	; 082  R
                    defb #66,#88,#CC,#66,#22,#CC	; 083  S
                    defb #EE,#44,#44,#44,#44,#44	; 084  T
                    defb #AA,#AA,#AA,#AA,#AA,#66	; 085  U
                    defb #AA,#AA,#AA,#AA,#AA,#44	; 086  V
                    defb #AA,#AA,#EE,#EE,#EE,#44	; 087  W
                    defb #AA,#AA,#44,#AA,#AA,#AA	; 088  X
                    defb #AA,#AA,#AA,#44,#44,#44	; 089  Y
                    defb #EE,#22,#44,#44,#88,#EE	; 090  Z
                    defb #66,#44,#44,#44,#44,#66	; 091  [
                    defb #88,#88,#44,#44,#22,#22	; 092  \
                    defb #66,#22,#22,#22,#22,#66	; 093  ]
                    defb #44,#AA,#00,#00,#00,#00	; 094  ^
                    defb #00,#00,#00,#00,#00,#EE	; 095  _
                    defb #55,#AA,#00,#00,#00,#00	; 096  ~
                    defb #44,#EE,#44,#44,#44,#44	; 097  cross
                    defb #44,#EE,#44,#44,#EE,#44	; 098  double cross
                    defb #66,#88,#EE,#EE,#88,#66	; 099  euro
                    defb #66,#BB,#DD,#DD,#BB,#66	; 100  copyright
                    defb #EE,#22,#00,#00,#00,#00	; 101  -|
                    defb #44,#AA,#44,#00,#00,#00	; 102  gradus
                    defb #44,#EE,#44,#00,#EE,#00	; 103  +-
                    defb #44,#44,#44,#44,#44,#44	; 104  |
                    defb #00,#00,#FF,#00,#00,#00	; 105  pseudographic -
                    defb #44,#44,#FF,#44,#44,#44	; 106  pseudographic cross
                    defb #00,#00,#CC,#44,#44,#44	; 107  pseudographic left-down
                    defb #00,#00,#77,#44,#44,#44	; 108  pseudographic right-down
                    defb #44,#44,#CC,#00,#00,#00	; 109  pseudographic left-up
                    defb #44,#44,#77,#00,#00,#00	; 110  pseudographic right-up
                    defb #22,#EE,#44,#EE,#88,#00	; 111  <>
                    defb #22,#55,#44,#EE,#44,#FF	; 112  funt
                    defb #22,#44,#CC,#44,#44,#22	; 113  {
                    defb #88,#44,#66,#44,#44,#88	; 114  }
                    defb #66,#AA,#AA,#EE,#AA,#AA	; 115  А
                    defb #EE,#88,#CC,#AA,#AA,#CC	; 116  Б
                    defb #CC,#AA,#CC,#AA,#AA,#CC	; 117  В
                    defb #EE,#88,#88,#88,#88,#88	; 118  Г
                    defb #22,#66,#AA,#AA,#AA,#FF	; 119  Д
                    defb #EE,#88,#CC,#88,#88,#EE	; 120  Е
                    defb #AA,#EE,#44,#EE,#EE,#AA	; 121  Ж
                    defb #CC,#22,#44,#22,#22,#CC	; 122  З
                    defb #AA,#AA,#AA,#EE,#EE,#AA	; 123  И
                    defb #44,#AA,#AA,#EE,#EE,#AA	; 124  Й
                    defb #AA,#AA,#CC,#AA,#AA,#AA	; 125  К
                    defb #22,#66,#AA,#AA,#AA,#AA	; 126  Л
                    defb #AA,#EE,#EE,#EE,#AA,#AA	; 127  М
                    defb #AA,#AA,#EE,#AA,#AA,#AA	; 128  Н
                    defb #66,#AA,#AA,#AA,#AA,#CC	; 129  О
                    defb #EE,#AA,#AA,#AA,#AA,#AA	; 130  П
                    defb #CC,#AA,#AA,#CC,#88,#88	; 131  Р
                    defb #44,#AA,#88,#88,#AA,#44	; 132  С
                    defb #EE,#44,#44,#44,#44,#44	; 133  Т
                    defb #AA,#AA,#AA,#66,#22,#CC	; 134  У
                    defb #44,#EE,#EE,#EE,#44,#44	; 135  Ф
                    defb #AA,#AA,#44,#AA,#AA,#AA	; 136  Х
                    defb #AA,#AA,#AA,#AA,#AA,#FF	; 137  Ц
                    defb #AA,#AA,#AA,#66,#22,#22	; 138  Ч
                    defb #AA,#AA,#EE,#EE,#EE,#EE	; 139  Ш
                    defb #AA,#AA,#EE,#EE,#EE,#FF	; 140  Щ
                    defb #CC,#44,#66,#55,#55,#66	; 141  Ъ
                    defb #99,#99,#DD,#BB,#BB,#DD	; 142  Ы
                    defb #88,#88,#CC,#AA,#AA,#CC	; 143  Ь
                    defb #CC,#22,#66,#22,#22,#CC	; 144  Э
                    defb #AA,#DD,#DD,#DD,#DD,#AA	; 145  Ю
                    defb #66,#AA,#AA,#66,#AA,#AA	; 146  Я



; таблица адресов для пиксельных строк экрана

table_addr_scr		defw	#4000,#4100,#4200,#4300,#4400,#4500,#4600,#4700
			defw	#4020,#4120,#4220,#4320,#4420,#4520,#4620,#4720
			defw	#4040,#4140,#4240,#4340,#4440,#4540,#4640,#4740
			defw	#4060,#4160,#4260,#4360,#4460,#4560,#4660,#4760
			defw	#4080,#4180,#4280,#4380,#4480,#4580,#4680,#4780
			defw	#40a0,#41a0,#42a0,#43a0,#44a0,#45a0,#46a0,#47a0
			defw	#40c0,#41c0,#42c0,#43c0,#44c0,#45c0,#46c0,#47c0
			defw	#40e0,#41e0,#42e0,#43e0,#44e0,#45e0,#46e0,#47e0

			defw	#4800,#4900,#4a00,#4b00,#4c00,#4d00,#4e00,#4f00
			defw	#4820,#4920,#4a20,#4b20,#4c20,#4d20,#4e20,#4f20
			defw	#4840,#4940,#4a40,#4b40,#4c40,#4d40,#4e40,#4f40
			defw	#4860,#4960,#4a60,#4b60,#4c60,#4d60,#4e60,#4f60
			defw	#4880,#4980,#4a80,#4b80,#4c80,#4d80,#4e80,#4f80
			defw	#48a0,#49a0,#4aa0,#4ba0,#4ca0,#4da0,#4ea0,#4fa0
			defw	#48c0,#49c0,#4ac0,#4bc0,#4cc0,#4dc0,#4ec0,#4fc0
			defw	#48e0,#49e0,#4ae0,#4be0,#4ce0,#4de0,#4ee0,#4fe0

			defw	#5000,#5100,#5200,#5300,#5400,#5500,#5600,#5700
			defw	#5020,#5120,#5220,#5320,#5420,#5520,#5620,#5720
			defw	#5040,#5140,#5240,#5340,#5440,#5540,#5640,#5740
			defw	#5060,#5160,#5260,#5360,#5460,#5560,#5660,#5760
			defw	#5080,#5180,#5280,#5380,#5480,#5580,#5680,#5780
			defw	#50a0,#51a0,#52a0,#53a0,#54a0,#55a0,#56a0,#57a0
			defw	#50c0,#51c0,#52c0,#53c0,#54c0,#55c0,#56c0,#57c0
			defw	#50e0,#51e0,#52e0,#53e0,#54e0,#55e0,#56e0,#57e0



string_number			defb	5,0,0,0,0,0				; сконвертированное в строку 16-битное число
number_temp			defw	0					; промежуточное 16-битное число
rnd				defw	0					; случайное число



addr_arraybyte_index		defw	0					; адрес ячейки в массиве типа arraybyte
addr_arrayword_index		defw	0					; адрес ячейки в массиве типа arrayword
addr_arraystring_index		defw	0					; адрес ячейки в массиве типа arraystring
addr_arraybyte_index111		defw	0					; адрес ячейки в массиве типа arraybyte при оптимизации
addr_arrayword_index111		defw	0					; адрес ячейки в массиве типа arrayword при оптимизации



col_screen			defb	0					; столбец экрана
row_screen			defb	0					; строка экрана
half_tile_screen		defb	0					; полузнакоместо (0=первое/1=второе)
attr_screen			defb	56					; атрибуты экрана
attr_sprite			defb	0					; атрибуты спрайта

col_screen_temp			defw	0					; временные координаты на экране
half_tile_screen_temp		defb	0					; временное полузнакоместо



col_window			defb	0					; столбец окна
row_window			defb	0					; строка окна
width_window			defb	0					; ширина окна
height_window			defb	0					; высота окна



code_key_1			defb	0					; код нажатой клавиши 1
code_key_2			defb	0					; код нажатой клавиши 2

table_code_key			defb	32,16,77,78,66				; таблица кодов нажатых клавиш для полурядов
				defb	13,76,75,74,72
				defb	80,79,73,85,89
				defb	48,57,56,55,54
				defb	49,50,51,52,53
				defb	81,87,69,82,84
				defb	65,83,68,70,71
				defb	17,90,88,67,86



map_addr_array		defw	0
map_xmax_array		defb	0
map_ymax_array		defb	0
map_addr_sprites	defw	0
map_xscr		defb	0
map_yscr		defb	0
map_width_scr		defb	0
map_height_scr		defb	0

map_x			defb	0
map_y			defb	0
map_xmin		defb	0
map_ymin		defb	0
map_xmax		defb	0
map_ymax		defb	0
map_xlen		defb	0
map_ylen		defb	0
map_addr_curr		defw	0
map_xscr_curr		defb	0
map_yscr_curr		defb	0

map_id_elem		defb	0
map_distance_elem	defb	0
map_condition		defw	0
map_x_elem		defb	0
map_y_elem		defb	0
map_value_elem		defb	0
map_distance_curr	defb	0
map_addr_source		defw	0

table_condition		defb	#cd,#cc,#c4,#dc,#d4




sound_loop		defb	0		; количество повторений
sound_freq		defb	0		; частота
sound_time		defb	0		; длительность звучания



; ***** Library End *****

; Variable Area
_X1	defb	0
_Y1	defb	0
_X2	defb	0
_Y2	defb	0
_COLOR1	defb	0
_COLOR2	defb	0
_COLOR3	defb	0
_COLOR4	defb	0
_X	defb	0
_Y	defb	0
_I	defb	0
_OVER	defb	0
_A	defb	0
_B	defb	0
_Z	defb	0
_COLORBLOCK	defb	0
_S	defb	0
_SEVENFLAG	defb	0
_LEVELOLD	defb	0
_LEVEL	defb	0
_COLORBOMB	defb	0
_KEY1	defb	0
_KEY2	defb	0
_SCORE	defw	0
_BESTSCORE	defw	0
_STARTMAP
	defb	1,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,2
	defb	8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6
	defb	8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6
	defb	8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6
	defb	8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6
	defb	8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6
	defb	8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6
	defb	8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6
	defb	8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6
	defb	8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6
	defb	8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6
	defb	8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6
	defb	8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6
	defb	8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6
	defb	8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6
	defb	8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6
	defb	8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6
	defb	8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6
	defb	8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6
	defb	8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6
	defb	8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6
	defb	4,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,3
_MAP
	defb	9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9
	defb	9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,9
	defb	9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,9
	defb	9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,9
	defb	9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,9
	defb	9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,9
	defb	9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,9
	defb	9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,9
	defb	9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,9
	defb	9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,9
	defb	9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,9
	defb	9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,9
	defb	9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,9
	defb	9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,9
	defb	9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,9
	defb	9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,9
	defb	9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,9
	defb	9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,9
	defb	9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,9
	defb	9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9
_MAPBLOCK	dup	6*6
	defb	0
	edup
_MAPDELX	dup	6*6
	defb	0
	edup
_MAPDELY	dup	6*6
	defb	0
	edup
_MAPDEL	dup	6*6
	defb	0
	edup
_L6	defb	0
_L21	defb	0
_L40	defb	0
_L57	defb	0
_L80	defb	0
_L97	defb	0
Lim_X	defb	0
Lim_Y	defb	0
_L121	defb	0
_L145	defb	0
_L162	defb	0
Lim_A	defb	0
Lim_B	defb	0
_L321	defb	0
_L351	defb	0
_L406	defb	0
Lim_I	defb	0
_L487	defb	0
Lim_Z	defb	0
_L536	defb	0
_L585	defb	0
_L634	defb	0
_L677	defb	0

; String constants
_STR0	defb	37
	defb	132,129,116,123,131,115,124,133,120,32,129,119,123,128,115,125,129,117,142,120,32,144,126,120,127,120,128,133,142,32,117,32,126,123,128,123,123
_STR1	defb	31
	defb	123,32,129,133,125,131,129,120,133,132,146,32,117,115,127,32,132,120,119,143,127,129,124,32,144,126,120,127,120,128,133
_STR2	defb	24
	defb	128,129,32,116,134,119,133,120,32,129,132,133,129,131,129,121,128,142,32,132,32,128,123,127
_STR3	defb	30
	defb	134,130,131,115,117,126,120,128,123,120,58,32,67,85,82,83,79,82,32,123,126,123,32,81,44,65,44,79,44,80
_STR4	defb	26
	defb	115,117,133,129,131,58,32,131,129,127,115,128,32,132,125,129,131,123,125,32,32,32,50,48,50,50
_STR5	defb	4
	defb	48,48,48,48



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
