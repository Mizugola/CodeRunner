Define Flag (Anim);
Define Flag (Lock);

Meta:
    name:"2"
    clock:1000
Images:
    ?ImageList(str)<"2.png">{0}:
Groups:
    @main
        ?content(int)<%s>{0}:
Animation:
    ?AnimationCode(str):
        "PLAY_GROUP(main, -1)"