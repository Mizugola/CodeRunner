Define Flag (Anim);
Define Flag (Lock);

Meta:
    name:"JUMP_RIGHT"
    clock:70
Images:
    ?ImageList(str)<"00%s.png">{18-22}:
Groups:
    @start
        ?content(int)<%s>{0-2}:
    @main
        ?content(int)<%s>{3-4}:
Animation:
    ?AnimationCode(str):
        "PLAY_GROUP(start, 1)"
        "PLAY_GROUP(main, -1)"