Define Flag (Anim);
Define Flag (Lock);

Meta:
    name:"5"
    clock:1000
Images:
    ?ImageList(str)<"5.png">{0}:
Groups:
    @main
        ?content(int)<%s>{0}:
Animation:
    ?AnimationCode(str):
        "PLAY_GROUP(main, -1)"