Define Flag (Anim);
Define Flag (Lock);

Meta:
    name:"LOAD"
    clock:30
Images:
    ?ImageList(str)<"frame-00%s.png">{1-9}:
        "frame-010.png"
Groups:
    @main
        ?content(int)<%s>{0-9}:
Animation:
    ?AnimationCode(str):
        "PLAY_GROUP(main, -1)"