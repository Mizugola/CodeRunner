Define Flag (Anim);
Define Flag (Lock);

Meta:
    name:"0"
    clock:1000
Images:
    ?ImageList(str)<"0.png">{0}:
Groups:
    @main
        ?content(int)<%s>{0}:
Animation:
    ?AnimationCode(str):
        "PLAY_GROUP(main, -1)"