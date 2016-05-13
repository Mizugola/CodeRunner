Define Flag (Anim);
Define Flag (Lock);

Meta:
    name:"3"
    clock:1000
Images:
    ?ImageList(str)<"3.png">{0}:
Groups:
    @main
        ?content(int)<%s>{0}:
Animation:
    ?AnimationCode(str):
        "PLAY_GROUP(main, -1)"